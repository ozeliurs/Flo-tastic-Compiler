"""
Affiche une chaine de caractère avec une certaine identation
"""
from enum import Enum

stack = []


def create_scope():
    stack.append({
        'variables': {}
    })


create_scope()


def pop_scope():
    if len(stack) == 1:
        return
    stack.pop()


def get_variable(name):
    for scope in reversed(stack):
        if name in scope['variables']:
            return scope['variables'][name]
    # raise Exception(f"Variable {name} not found")


def get_current_scope():
    return stack[-1]


class TypeEnum(Enum):
    ENTIER = 'entier'
    FLOAT = 2
    STRING = 3
    BOOL = 'booleen'

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


class Operation:
    def __init__(self, op, exp1, exp2):
        self.exp1 = exp1
        self.op = OperationEnum(op)
        self.exp2 = exp2
        # if self.op == OperationEnum.DIVIDE and self.exp2.valeur == 0:
        #     raise Exception("ZeroDivisionError")
        # if self.op == OperationEnum.MODULO and self.exp2.valeur == 0:
        #     raise Exception("ZeroDivisionError")

        if self.op == OperationEnum.NOT:
            self.type = TypeEnum.BOOL
        elif self.exp1.type != self.exp2.type:
            raise Exception(f"Type mismatch: {self.exp1.type} and {self.exp2.type}")
        self.type = self.exp1.type

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
        self.type = TypeEnum.ENTIER

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


class Parameter:
    def __init__(self, type, name):
        self.type = type
        self.name = name
        get_current_scope()['variables'][self.name] = self.type

    def afficher(self, indent=0):
        afficher("<parameter>", indent)
        afficher(f"<Type>{self.type}</Type>", indent + 1)
        afficher(f"<Name>{self.name}</Name>", indent + 1)
        afficher("</parameter>", indent)


class ParameterList(list):
    def afficher(self, indent=0):
        afficher("<liste_parametres>", indent)
        for parameter in self:
            parameter.afficher(indent + 1)
        afficher("</liste_parametres>", indent)


class FunctionDefinition:
    def __init__(self, type, name, args, body):
        self.type = type
        self.name = name
        self.args = args
        self.body = body

    def afficher(self, indent=0):
        afficher("<functionDefinition>", indent)
        afficher(f"<Type>{self.type}</Type>", indent + 1)
        afficher(f"<Name>{self.name}</Name>", indent + 1)
        self.args.afficher(indent + 1)
        self.body.afficher(indent + 1)
        afficher("</functionDefinition>", indent)


class ReturnStatement:
    def __init__(self, exp):
        self.exp = exp

    def afficher(self, indent=0):
        afficher("<returnStatement>", indent)
        self.exp.afficher(indent + 1)
        afficher("</returnStatement>", indent)


class WhileLoop:
    def __init__(self, expr, scope):
        self.expr = expr
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
