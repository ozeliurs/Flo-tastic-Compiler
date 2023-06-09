import sys
from copy import deepcopy

import analyse_syntaxique
import arbre_abstrait

num_etiquette_courante = -1  # Permet de donner des noms différents à toutes les étiquettes (en les appelant e0, e1,e2,...)

afficher_table = True
afficher_nasm = True
ENABLE_COMMENT = True
is_in_function = True
"""
Un print qui ne fonctionne que si la variable afficher_table vaut Vrai.
(permet de choisir si on affiche le code assembleur ou la table des symboles)
"""


def printifm(*args, **kwargs):
    if afficher_nasm:
        print(*args, **kwargs)


"""
Un print qui ne fonctionne que si la variable afficher_table vaut Vrai.
(permet de choisir si on affiche le code assembleur ou la table des symboles)
"""


def printift(*args, **kwargs):
    if afficher_table:
        print(*args, **kwargs)


"""
Fonction locale, permet d'afficher un commentaire dans le code nasm.
"""


def nasm_comment(comment):
    if comment != "" and ENABLE_COMMENT:
        printifm(
            "\t\t ; " + comment)  # le point virgule indique le début d'un commentaire en nasm. Les tabulations sont là pour faire jolie.
    else:
        printifm("")


"""
Affiche une instruction nasm sur une ligne
Par convention, les derniers opérandes sont nuls si l'opération a moins de 3 arguments.
"""


def nasm_instruction(opcode, op1="", op2="", op3="", comment=""):
    if op2 == "":
        printifm("\t" + opcode + "\t" + op1 + "\t\t", end="")
    elif op3 == "":
        printifm("\t" + opcode + "\t" + op1 + ",\t" + op2 + "\t", end="")
    else:
        printifm("\t" + opcode + "\t" + op1 + ",\t" + op2 + ",\t" + op3, end="")
    nasm_comment(comment)


"""
Retourne le nom d'une nouvelle étiquette
"""


def nasm_nouvelle_etiquette():
    global num_etiquette_courante
    num_etiquette_courante += 1
    return "e" + str(num_etiquette_courante)


"""
Affiche le code nasm correspondant à tout un programme
"""


def gen_programme(programme):
    global is_in_function
    printifm('%include\t"io.asm"')
    printifm('section\t.bss')
    printifm('sinput:	resb	255	;reserve a 255 byte space in memory for the users input string')
    printifm('v$a:	resd	1')
    printifm('section\t.text')
    printifm('global _start')
    nasm_comment("===== Generating function declarations =====")
    programme_copy = deepcopy(programme)
    for instruction in programme_copy.liste_instructions.instructions:
        if type(instruction) == arbre_abstrait.FunctionDeclaration:
            gen_def_fonction(instruction)
    nasm_comment("===== End of function declarations =====")

    nasm_comment("===== Generating main function =====")
    printifm('main:')

    nasm_instruction("push", "ebp", "", "", "")
    nasm_instruction("mov", "ebp", "esp", "", "")
    # allocating space for local variables
    variable_defs = programme_copy.liste_instructions.get_variable_definitions()
    # flatten the list of lists of variable definitions
    while is_nested(variable_defs):
        variable_defs = flatten(variable_defs)

    space_for_local_variables = len(variable_defs) * 4
    nasm_instruction("sub", "esp", str(space_for_local_variables), "", "")
    for i in range(len(variable_defs)):
        variable_defs[i].offset = f"-{(i + 1) * 4}"

    global is_in_function
    gen_listeInstructions(programme_copy.liste_instructions)
    nasm_instruction("leave", "", "", "", "")
    nasm_instruction("ret", "", "", "", "")
    nasm_comment("===== End of main function =====")
    printifm("_start:")
    nasm_instruction("call", "main", "", "", "")
    nasm_instruction("mov", "eax", "1", "", "1 est le code de SYS_EXIT")
    nasm_instruction("mov", "ebx", "0", comment="0 est le code de retour correct ici")
    nasm_instruction("int", "0x80", "", "", "exit")


"""
Affiche le code nasm correspondant à une suite d'instructions
"""


def gen_listeInstructions(listeInstructions):
    for instruction in listeInstructions.instructions:
        if type(instruction) != arbre_abstrait.FunctionDeclaration:
            gen_instruction(instruction)


"""
Affiche le code nasm correspondant à une instruction
"""


def gen_lire(instruction: arbre_abstrait.FunctionCall):
    nasm_instruction("mov", "eax", "sinput", "", "")
    nasm_instruction("call", "readline", "", "", "")
    nasm_instruction("call", "atoi", "", "", "")
    nasm_instruction("push", "eax", "", "", "")


def gen_instruction(instruction):
    if type(instruction) == arbre_abstrait.FunctionCall and instruction.function_name == "ecrire":
        gen_ecrire(instruction)
    elif type(instruction) == arbre_abstrait.FunctionCall and instruction.function_name == "lire":
        gen_lire(instruction)
    elif type(instruction) == arbre_abstrait.ReturnStatement:
        if not is_in_function:
            raise Exception("return statement outside function")
        gen_return_statement(instruction)

    elif type(instruction) == arbre_abstrait.Condition:
        gen_condition(instruction)

    elif type(instruction) == arbre_abstrait.WhileLoop:
        gen_while(instruction)

    elif type(instruction) == arbre_abstrait.FunctionCall:
        gen_function_call(instruction)
    elif type(instruction) == arbre_abstrait.VariableAssignment:
        gen_variable_assignment(instruction)

    elif type(instruction) == arbre_abstrait.VariableDefinitionAssignment:
        gen_variable_definition_assignment(instruction)

    elif type(instruction) == arbre_abstrait.VariableDefinition:
        pass
    else:
        print("_type instruction inconnu", type(instruction))
        exit(0)


def gen_variable_definition_assignment(instruction: arbre_abstrait.VariableDefinitionAssignment):
    gen_expression(instruction.exp)
    nasm_instruction("pop", "eax", "", "", "")
    nasm_instruction("mov", f"[ebp{instruction.offset}]", "eax", "", "")


"""
Affiche le code nasm correspondant au fait d'envoyer la valeur entière d'une expression sur la sortie standard
"""


def gen_ecrire(ecrire: arbre_abstrait.FunctionCall):
    gen_expression(ecrire.args[0])  # on calcule et empile la valeur d'expression
    nasm_instruction("pop", "eax", "", "", "")  # on dépile la valeur d'expression sur eax
    nasm_instruction("call", "iprintLF", "", "", "")  # on envoie la valeur d'eax sur la sortie standard


def gen_function_call(function_call: arbre_abstrait.FunctionCall):
    for arg in function_call.args:
        gen_expression(arg)
    nasm_instruction("call", f"_{function_call.function_name}", "", "", "")
    nasm_instruction("push", "eax", "", "", "")


"""
Affiche le code nasm pour calculer et empiler la valeur d'une expression
"""


def is_nested(l):
    for i in l:
        if type(i) == list:
            return True
    return False


def flatten(l):
    l2 = []
    for i in l:
        if type(i) == list:
            l2 += i
        else:
            l2.append(i)
    return l2


def gen_def_fonction(function: arbre_abstrait.FunctionDeclaration):
    nasm_comment(f"===== Generating function {function.name} =====")
    printift(f"_{function.name}:")
    nasm_comment(f"===== Initialising function {function.name} =====")
    nasm_instruction("push", "ebp", "", "", "")
    nasm_instruction("mov", "ebp", "esp", "", "")

    nasm_comment(f"===== Storing arguments of function {function.name} =====")
    # storing the arguments in FunctionDeclaration.args
    for i in range(len(function.args)):
        nasm_comment(f"===== Storing argument {function.args[i].name} =====")
        function.args[i].offset = f"+{(len(function.args) - i - 1) * 4 + 8}"
        nasm_comment(f"===== Stored argument {function.args[i].name} at offset {function.args[i].offset} =====")
    nasm_comment(f"===== Allocating local variables of function {function.name} =====")
    # allocating space for local variables
    variable_defs = function.scope.get_variable_definitions()
    # flatten the list of lists of variable definitions
    while is_nested(variable_defs):
        variable_defs = flatten(variable_defs)

    nasm_comment(f"===== Found {len(variable_defs)} local variables in function {function.name} =====")

    space_for_local_variables = len(variable_defs) * 4
    nasm_instruction("sub", "esp", str(space_for_local_variables), "",
                     f"Substracting space for local variables from esp ({space_for_local_variables})")
    for i in range(len(variable_defs)):
        nasm_comment(f"===== Storing local variable {variable_defs[i].name} =====")
        variable_defs[i].offset = f"-{(i + 1) * 4}"
        nasm_comment(f"===== Stored local variable {variable_defs[i].name} at offset {variable_defs[i].offset} =====")

    global is_in_function
    is_in_function = True
    nasm_comment(f"===== Generating instructions of function {function.name} =====")
    gen_listeInstructions(function.scope)
    nasm_comment(f"===== Finished generating instructions of function {function.name} =====")
    nasm_comment(f"===== Cleaning up function {function.name} =====")
    nasm_instruction("leave", "", "", "", comment="Clean up stack")
    nasm_instruction("ret", "", "", "", comment="Return to caller")
    nasm_comment(f"===== Finished cleaning up function {function.name} =====")
    nasm_comment(f"===== Finished generating function {function.name} =====")
    is_in_function = False


def gen_return_statement(return_statement: arbre_abstrait.ReturnStatement):
    nasm_comment(f"===== Generating return statement =====")
    gen_expression(return_statement.exp)
    nasm_instruction("pop", "eax", "", "", comment="Pop return value from stack")
    nasm_instruction("leave", "", "", "", comment="Clean up stack")
    nasm_instruction("ret", "", "", "", comment="Return to caller")
    nasm_comment(f"===== Finished generating return statement =====")


def gen_variable_read(variable_read: arbre_abstrait.VariableRead):
    nasm_comment(f"===== Generating variable read {variable_read.definition} =====")
    nasm_instruction("mov", "eax", f"[ebp{variable_read.definition.offset}]", "",
                     comment=f"read {variable_read.definition}")
    nasm_instruction("push", "eax", "", "", comment=f"push {variable_read.definition} on stack")
    nasm_comment(f"===== Finished generating variable read {variable_read.definition} =====")


def gen_condition(condition: arbre_abstrait.Condition):
    nasm_comment(f"===== Generating condition =====")
    label_else = nasm_nouvelle_etiquette()
    label_fin = nasm_nouvelle_etiquette()
    gen_expression(condition.expr)
    nasm_instruction("pop", "eax", "", "", "")
    nasm_instruction("cmp", "eax", "0", "", "")
    nasm_instruction("je", label_else, "", "", "")
    gen_listeInstructions(condition.scope1)
    nasm_instruction("jmp", label_fin, "", "", "")
    printift(label_else + ":")
    if condition.scope2 is not None:
        gen_listeInstructions(condition.scope2)
    printift(label_fin + ":")
    nasm_instruction("push", "eax", "", "", "")
    nasm_comment(f"===== Finished generating condition =====")


def gen_while(while_statement: arbre_abstrait.WhileLoop):
    nasm_comment(f"===== Generating while loop =====")
    label_debut = nasm_nouvelle_etiquette()
    label_fin = nasm_nouvelle_etiquette()
    printift(label_debut + ":")
    gen_expression(while_statement.expr)
    nasm_instruction("pop", "eax", "", "", "")
    nasm_instruction("cmp", "eax", "0", "", "")
    nasm_instruction("je", label_fin, "", "", "")
    gen_listeInstructions(while_statement.scope)
    nasm_instruction("jmp", label_debut, "", "", "")
    printift(label_fin + ":")
    nasm_instruction("push", "eax", "", "", "")
    nasm_comment(f"===== Finished generating while loop =====")


def gen_variable_assignment(variable_assignment: arbre_abstrait.VariableAssignment):
    nasm_comment(f"===== Generating variable assignment {variable_assignment.definition} =====")
    gen_expression(variable_assignment.exp)
    nasm_instruction("pop", "eax", "", "", comment="pop value from stack")
    nasm_instruction("mov", f"[ebp{variable_assignment.definition.offset}]", "eax", "",
                     comment="assign value to variable")
    nasm_comment(f"===== Finished generating variable assignment {variable_assignment.definition} =====")


def gen_expression(expression):
    nasm_comment(f"===== Generating expression {expression} =====")
    if type(expression) == arbre_abstrait.Operation:
        gen_operation(expression)  # on calcule et empile la valeur de l'opération
    elif type(expression) == arbre_abstrait.Entier:
        nasm_instruction("push", str(expression.valeur), "", "", "")  # on met sur la pile la valeur entière

    elif type(expression) == arbre_abstrait.Boolean:
        nasm_instruction("push", str(int(expression.value)), "", "", "")

    elif type(expression) == arbre_abstrait.FunctionCall and expression.function_name == "ecrire":
        gen_ecrire(expression)
    elif type(expression) == arbre_abstrait.FunctionCall and expression.function_name == "lire":
        gen_lire(expression)
    elif type(expression) == arbre_abstrait.FunctionCall:
        gen_function_call(expression)
    elif type(expression) == arbre_abstrait.VariableRead:
        gen_variable_read(expression)


    else:
        print("_type d'expression inconnu", type(expression))
        exit(0)
    nasm_comment(f"===== Finished generating expression {expression} =====")


"""
Affiche le code nasm pour calculer l'opération et la mettre en haut de la pile
"""


def gen_operation(operation):
    nasm_comment(f"===== Generating operation {operation} =====")
    op = operation.op

    if operation.exp2 is None:
        gen_expression(operation.exp1)
        nasm_instruction("pop", "eax", "", "", "dépile la permière operande dans eax")
        if op == '-':
            nasm_instruction("neg", "eax", "", "", "effectue l'opération -eax et met le résultat dans eax")
        if op == arbre_abstrait.OperationEnum.NOT:
            nasm_instruction("xor", "eax", "1", "", "effectue l'opération non eax et met le résultat dans eax")

    else:
        gen_expression(operation.exp1)  # on calcule et empile la valeur de exp1
        gen_expression(operation.exp2)  # on calcule et empile la valeur de exp2

        nasm_instruction("pop", "ebx", "", "", "dépile la seconde operande dans ebx")
        nasm_instruction("pop", "eax", "", "", "dépile la permière operande dans eax")

        code = {"+": "add", "*": "imul"}  # Un dictionnaire qui associe à chaque opérateur sa fonction nasm
        # Voir: https://www.bencode.net/blob/nasmcheatsheet.pdf

        # convert to match
        match op:
            case arbre_abstrait.OperationEnum.PLUS:
                nasm_instruction('add', "eax", "ebx", "",
                                 "effectue l'opération eax" + str(op) + "ebx et met le résultat dans eax")
            case arbre_abstrait.OperationEnum.MULTIPLY:
                nasm_instruction('imul', "ebx", "", "",
                                 "effectue l'opération eax" + str(op) + "ebx et met le résultat dans eax")
            case arbre_abstrait.OperationEnum.MINUS:
                nasm_instruction("sub", "eax", "ebx", "",
                                 "effectue l'opération eax" + str(op) + "ebx et met le résultat dans eax")
            case arbre_abstrait.OperationEnum.DIVIDE:
                nasm_instruction("mov", "edx", "0", "", "met 0 dans edx pour la division")
                nasm_instruction("idiv", "ebx", "", "",
                                 "effectue l'opération eax" + str(op) + "ebx et met le résultat dans eax")
            case arbre_abstrait.OperationEnum.MODULO:
                nasm_instruction("mov", "edx", "0", "", "met 0 dans edx pour la division")
                nasm_instruction("idiv", "ebx", "", "",
                                 "effectue l'opération eax" + str(op) + "ebx et met le reste dans edx")
                nasm_instruction("mov", "eax", "edx", "", "met le reste dans eax")
            case arbre_abstrait.OperationEnum.EQUALITY:
                nasm_instruction("cmp", "eax", "ebx", "", "compare eax et ebx")
                nasm_instruction("sete", "al", "", "", "met 1 dans al si eax == ebx, 0 sinon")
                nasm_instruction("movzx", "eax", "al", "", "met 0 ou 1 dans eax")
            case arbre_abstrait.OperationEnum.INEQUALITY:
                nasm_instruction("cmp", "eax", "ebx", "", "compare eax et ebx")
                nasm_instruction("setne", "al", "", "", "met 1 dans al si eax != ebx, 0 sinon")
                nasm_instruction("movzx", "eax", "al", "", "met 0 ou 1 dans eax")
            case arbre_abstrait.OperationEnum.LESS_THAN:
                nasm_instruction("cmp", "eax", "ebx", "", "compare eax et ebx")
                nasm_instruction("setl", "al", "", "", "met 1 dans al si eax < ebx, 0 sinon")
                nasm_instruction("movzx", "eax", "al", "", "met 0 ou 1 dans eax")
            case arbre_abstrait.OperationEnum.GREATER_THAN:
                nasm_instruction("cmp", "eax", "ebx", "", "compare eax et ebx")
                nasm_instruction("setg", "al", "", "", "met 1 dans al si eax > ebx, 0 sinon")
                nasm_instruction("movzx", "eax", "al", "", "met 0 ou 1 dans eax")
            case arbre_abstrait.OperationEnum.LESS_THAN_OR_EQUAL:
                nasm_instruction("cmp", "eax", "ebx", "", "compare eax et ebx")
                nasm_instruction("setle", "al", "", "", "met 1 dans al si eax <= ebx, 0 sinon")
                nasm_instruction("movzx", "eax", "al", "", "met 0 ou 1 dans eax")
            case arbre_abstrait.OperationEnum.GREATER_THAN_OR_EQUAL:
                nasm_instruction("cmp", "eax", "ebx", "", "compare eax et ebx")
                nasm_instruction("setge", "al", "", "", "met 1 dans al si eax >= ebx, 0 sinon")
                nasm_instruction("movzx", "eax", "al", "", "met 0 ou 1 dans eax")
            case arbre_abstrait.OperationEnum.AND:
                nasm_instruction("and", "eax", "ebx", "",
                                 "effectue l'opération eax" + str(op) + "ebx et met le résultat dans eax")
            case arbre_abstrait.OperationEnum.OR:
                nasm_instruction("or", "eax", "ebx", "",
                                 "effectue l'opération eax" + str(op) + "ebx et met le résultat dans eax")

            case _:
                raise Exception("Opération non reconnue")

    nasm_instruction("push", "eax", "", "", "empile le résultat")
    nasm_comment(f"===== Finished operation {op} =====")


if __name__ == "__main__":
    afficher_nasm = True
    if len(sys.argv) < 3 or sys.argv[1] not in ["-nasm", "-table"]:
        print("usage: python3 generation_code.py -nasm|-table NOM_FICHIER_SOURCE.flo")
        exit(0)
    if sys.argv[1] == "-nasm":
        afficher_nasm = True
    else:
        afficher_tableSymboles = True
    with open(sys.argv[2], "r") as f:
        data = f.read()
        try:
            arbre = analyse_syntaxique.parse(data)
            gen_programme(arbre)
        except EOFError:
            exit()
