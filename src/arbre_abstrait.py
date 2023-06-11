"""
Affiche une chaine de caractère avec une certaine identation
"""
import pprint
from copy import deepcopy
from enum import Enum


class Parameter:
    def __init__(self, type, name, skip=False):
        self.type = type
        self.name = name
        if not skip:
            get_current_scope()['variables'][self.name] = self.type

    def afficher(self, indent=0):
        afficher("<parameter>", indent)
        afficher(f"<Type>{self.type}</Type>", indent + 1)
        afficher(f"<Name>{self.name}</Name>", indent + 1)
        afficher("</parameter>", indent)


class TypeEnum(Enum):
    ENTIER = 'entier'
    FLOAT = 2
    STRING = 3
    BOOL = 'booleen'
    BOOL_OR_INT = 5

    def __eq__(self, other):
        if isinstance(other, TypeEnum):
            return self.value == other.value
        return self.value == other


class OperationEnum(Enum):
    EQUALITY = "=="
    INEQUALITY = "!="
    GREATER_THAN = ">"
    LESS_THAN = "<"
    GREATER_THAN_OR_EQUAL = ">="
    LESS_THAN_OR_EQUAL = "<="
    AND = "et"
    OR = "ou"
    PLUS = "+"
    MINUS = "-"
    MULTIPLY = "*"
    DIVIDE = "/"
    MODULO = "%"
    NOT = "non"


read_function = {
    'parameters': [],
    'return_type': TypeEnum.ENTIER,
}

write_function = {
    'parameters': [
        Parameter(TypeEnum.BOOL_OR_INT, "value", skip=True)

    ],
    'return_type': TypeEnum.ENTIER,
}

init_stack = [
    {
        'variables': {},
        'functions': {
            'lire': read_function,
            'ecrire': write_function,
        }
    }
]

stack = deepcopy(init_stack)


def reset_stack():
    global stack
    stack = deepcopy(init_stack)


def create_scope():
    stack.append({
        'variables': {},
        'functions': {}
    })


create_scope()


def pop_scope():
    # pprint.pp(stack)
    if len(stack) == 1:
        return
    stack.pop()


def get_variable(name):
    for scope in reversed(stack):
        if name in scope['variables']:
            return scope['variables'][name]
    raise Exception(f"Variable {name} not found")


def get_function(name):
    for scope in reversed(stack):
        if name in scope['functions']:
            return scope['functions'][name]
    raise Exception(f"Function {name} not found")


def get_current_scope():
    return stack[-1]


def afficher(s, indent=0):
    print(" " * indent + s)


class Programme:
    def __init__(self, liste_instructions):
        self.liste_instructions = liste_instructions

    def afficher(self, indent=0):
        afficher("<programme>", indent)
        self.liste_instructions.afficher(indent + 1)
        afficher("</programme>", indent)


class ListeInstructions:
    def __init__(self):
        self.instructions = []

    def afficher(self, indent=0):
        afficher("<liste_instructions>", indent)
        for instruction in self.instructions:
            instruction.afficher(indent + 1)
        afficher("</liste_instructions>", indent)

    def __add__(self, other):
        self.instructions.append(other)
        return self


class Operation:
    def __init__(self, op, exp1, exp2):
        self.exp1 = exp1
        self.op = OperationEnum(op)
        self.exp2 = exp2
        # if self.op == OperationEnum.DIVIDE and self.exp2.valeur == 0:
        #     raise Exception("ZeroDivisionError")
        # if self.op == OperationEnum.MODULO and self.exp2.valeur == 0:
        #     raise Exception("ZeroDivisionError")

        if self.op in [OperationEnum.NOT, OperationEnum.AND, OperationEnum.OR, OperationEnum.GREATER_THAN,
                       OperationEnum.LESS_THAN, OperationEnum.GREATER_THAN_OR_EQUAL, OperationEnum.LESS_THAN_OR_EQUAL,
                       OperationEnum.EQUALITY, OperationEnum.INEQUALITY]:
            self.type = TypeEnum.BOOL
        else:
            self.type = self.exp1.type
        if self.op in [OperationEnum.NOT, OperationEnum.AND, OperationEnum.OR]:
            if self.exp1.type != TypeEnum.BOOL:
                raise Exception(f"Type mismatch: {self.exp1.type} and {self.exp2.type} for operation {self.op}")
            if self.exp2 and self.exp2.type != TypeEnum.BOOL:
                raise Exception(f"Type mismatch: {self.exp1.type} and {self.exp2.type} for operation {self.op}")

        elif self.exp1.type != self.exp2.type:
            raise Exception(f"Type mismatch: {self.exp1.type} and {self.exp2.type} for operation {self.op}")

    def afficher(self, indent=0):
        afficher("<operation>", indent)
        self.exp1.afficher(indent + 1)
        afficher(str(self.op), indent + 1)
        if self.exp2:
            self.exp2.afficher(indent + 1)
        afficher("</operation>", indent)


class Entier:
    def __init__(self, valeur: int):
        self.valeur = valeur
        self.type = TypeEnum.ENTIER

    def afficher(self, indent=0):
        afficher("<entier>", indent)
        afficher(str(self.valeur), indent + 1)
        afficher("</entier>", indent)


class VariableRead:
    def __init__(self, nom):
        self.nom = nom
        self.type = get_variable(self.nom)

    def afficher(self, indent=0):
        afficher("<variable_read>", indent)
        afficher(self.nom, indent + 1)
        afficher("</variable_read>", indent)


class VariableAssignment:
    def __init__(self, var, exp):
        self.var = var
        self.exp = exp
        self.type = get_variable(self.var)
        if self.type != self.exp.type:
            raise Exception(f"Type mismatch: {self.type} and {self.exp.type}")

    def afficher(self, indent=0):
        afficher("<affectation>", indent)
        afficher(f"<variable>{self.var}</variable>", indent + 1)
        self.exp.afficher(indent + 1)
        afficher("</affectation>", indent)


class VariableDefinition:
    def __init__(self, type, name, args=None):
        self.type = type
        self.name = name
        self.args = args
        if self.name in get_current_scope()['variables']:
            raise Exception(f"Variable {self.name} already defined")
        get_current_scope()['variables'][self.name] = self.type

    def afficher(self, indent=0):
        afficher("<VariableDefinition>", indent)
        afficher(f"<Type>{self.type}</Type>", indent + 1)
        afficher(f"<Name>{self.name}</Name>", indent + 1)
        afficher("</VariableDefinition>", indent)


class VariableDefinitionAssignment:
    def __init__(self, type, name, exp):
        self.type = type
        self.name = name
        self.exp = exp
        if self.name in get_current_scope()['variables']:
            raise Exception(f"Variable {self.name} already defined")
        get_current_scope()['variables'][self.name] = self.type
        if self.type != self.exp.type:
            raise Exception(f"Type mismatch: {self.type} and {self.exp.type}")

    def afficher(self, indent=0):
        afficher("<VariableDefinitionAssignment>", indent)
        afficher(f"<Type>{self.type}</Type>", indent + 1)
        afficher("<exp>", indent + 1)
        self.exp.afficher(indent + 2)
        afficher("</exp>", indent + 1)
        afficher("</VariableDefinitionAssignment>", indent)


class ExprList(list):
    def afficher(self, indent=0):
        afficher("<liste_expressions>", indent)
        for expression in self:
            expression.afficher(indent + 1)
        afficher("</liste_expressions>", indent)


class FunctionCall:
    def __init__(self, function_name: str, args: ExprList):
        self.function_name = function_name
        self.args = args
        self.function = get_function(self.function_name)

        if len(self.args) != len(self.function['parameters']):
            raise Exception(f"Wrong number of arguments for function {self.function_name}")
        for i in range(len(self.args)):
            if self.args[i].type != self.function['parameters'][i].type \
                    and self.function['parameters'][i].type != TypeEnum.BOOL_OR_INT:
                raise Exception(f"Type mismatch: {self.args[i].type} and {self.function['parameters'][i].type}")
        self.type = self.function['return_type']

    def afficher(self, indent=0):
        afficher("<functionCall>", indent)
        afficher(f"<functionName>{self.function_name}</functionName>", indent + 1)
        self.args.afficher(indent + 1)
        afficher("</functionCall>", indent)


class Boolean:
    def __init__(self, value: bool):
        self.value = value
        self.type = TypeEnum.BOOL

    def afficher(self, indent=0):
        afficher("<boolean>", indent)
        afficher(str(self.value), indent + 1)
        afficher("</boolean>", indent)


class Condition:
    def __init__(self, expr, scope1, scope2):
        self.expr = expr
        if self.expr.type != TypeEnum.BOOL:
            raise Exception(f"Type mismatch: {self.expr.type} and {TypeEnum.BOOL}")
        self.scope1 = scope1
        self.scope2 = scope2

    def afficher(self, indent=0):
        afficher("<condition>", indent)
        afficher("<expression>", indent + 1)
        self.expr.afficher(indent + 2)
        afficher("</expression>", indent + 1)

        if self.scope1:
            afficher("<scope1>", indent + 1)
            self.scope1.afficher(indent + 2)
            afficher("</scope1>", indent + 1)
        if self.scope2:
            afficher("<scope2>", indent + 1)
            self.scope2.afficher(indent + 2)
            afficher("</scope2>", indent + 1)
        afficher("</condition>", indent)


class ParameterList(list):
    def afficher(self, indent=0):
        afficher("<liste_parametres>", indent)
        for parameter in self:
            parameter.afficher(indent + 1)
        afficher("</liste_parametres>", indent)


class FunctionDeclaration:
    def __init__(self, type, name, args):
        self.scope = ListeInstructions()
        self.type = type
        self.name = name
        self.args = args
        stack[0]['functions'][self.name] = {
            'parameters': self.args,
            'return_type': self.type
        }

    def set_scope(self, scope):
        self.scope = scope
        for instruction in self.scope.instructions:
            if isinstance(instruction, ReturnStatement):
                if instruction.type != self.type:
                    raise Exception(f"Type mismatch: {instruction.type} and {self.type}")

    def afficher(self, indent=0):
        afficher("<functionDefinition>", indent)
        afficher(f"<Type>{self.type}</Type>", indent + 1)
        afficher(f"<Name>{self.name}</Name>", indent + 1)
        self.args.afficher(indent + 1)
        self.scope.afficher(indent + 1)
        afficher("</functionDefinition>", indent)


class ReturnStatement:
    def __init__(self, exp):
        self.exp = exp
        self.type = self.exp.type

    def afficher(self, indent=0):
        afficher("<returnStatement>", indent)
        self.exp.afficher(indent + 1)
        afficher("</returnStatement>", indent)


class WhileLoop:
    def __init__(self, expr, scope):
        self.expr = expr
        if self.expr.type != TypeEnum.BOOL:
            raise Exception(f"Type mismatch: {self.expr.type} and {TypeEnum.BOOL}")
        self.scope = scope

    def afficher(self, indent=0):
        afficher("<whileLoop>", indent)
        afficher("<expression>", indent + 1)
        self.expr.afficher(indent + 2)
        afficher("</expression>", indent + 1)
        afficher("<scope>", indent + 1)
        self.scope.afficher(indent + 2)
        afficher("</scope>", indent + 1)
        afficher("</whileLoop>", indent)
