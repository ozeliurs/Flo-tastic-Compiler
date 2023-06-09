"""
Affiche une chaine de caractère avec une certaine identation
"""
from enum import Enum


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


class Ecrire:
    def __init__(self, exp):
        self.exp = exp

    def afficher(self, indent=0):
        afficher("<ecrire>", indent)
        self.exp.afficher(indent + 1)
        afficher("</ecrire>", indent)


class Lire:
    def afficher(self, indent=0):
        afficher("</lire>", indent)


class Operation:
    def __init__(self, op, exp1, exp2):
        self.exp1 = exp1
        self.op = OperationEnum(op)
        self.exp2 = exp2
        if self.op == OperationEnum.DIVIDE and self.exp2.valeur == 0:
            raise Exception("ZeroDivisionError")
        if self.op == OperationEnum.MODULO and self.exp2.valeur == 0:
            raise Exception("ZeroDivisionError")
        if self.exp1.type != self.exp2.type:
            raise Exception(f"Type mismatch: {self.exp1.type} and {self.exp2.type}")
        self.type = self.exp1.type

    def afficher(self, indent=0):
        afficher("<operation>", indent)
        self.exp1.afficher(indent + 1)
        afficher(str(self.op), indent + 1)
        self.exp2.afficher(indent + 1)
        afficher("</operation>", indent)


class Entier:
    def __init__(self, valeur: int):
        self.valeur = valeur
        self.type = TypeEnum.ENTIER

    def afficher(self, indent=0):
        afficher("[Entier:" + str(self.valeur) + "]", indent)


variable_dict: dict[str, str] = {}


class VariableRead:
    def __init__(self, nom):
        self.nom = nom
        if self.nom not in variable_dict:
            raise Exception("Undefined variable " + self.nom)
        self.type = variable_dict[self.nom]

    def afficher(self, indent=0):
        afficher("[VariableRead:" + str(self.nom) + "]", indent)


class VariableAssignment:
    def __init__(self, var, exp):
        self.var = var
        self.exp = exp
        if self.var not in variable_dict:
            raise Exception("Undefined variable " + self.var)
        self.type = variable_dict[self.var]
        if self.type != self.exp.type:
            raise Exception(f"Type mismatch: {self.type} and {self.exp.type}")

    def afficher(self, indent=0):
        afficher("<affectation>", indent)
        afficher(self.var, indent + 1)
        self.exp.afficher(indent + 1)
        afficher("</affectation>", indent)


class VariableDefinition:
    def __init__(self, type, name, args=None):
        self.type = type
        self.name = name
        self.args = args
        variable_dict[self.name] = self.type

    def afficher(self, indent=0):
        afficher("<VariableDefinition>", indent)
        afficher(f"[Type:{self.type}, Name:{self.name}]", indent + 1)
        afficher("</VariableDefinition>", indent)


class VariableDefinitionAssignment:
    def __init__(self, type, name, exp):
        self.type = type
        self.name = name
        self.exp = exp
        variable_dict[self.name] = self.type
        if self.type != self.exp.type:
            raise Exception(f"Type mismatch: {self.type} and {self.exp.type}")

    def afficher(self, indent=0):
        afficher("<VariableDefinitionAssignment>", indent)
        afficher(f"[Type:{self.type}, Name:{self.name}]", indent + 1)
        afficher("<exp>", indent + 1)
        self.exp.afficher(indent + 2)
        afficher("</exp>", indent + 1)
        afficher("</VariableDefinitionAssignment>", indent)


class FunctionArgument:
    def __init__(self, left, right):
        self.left = left
        self.right = right

    def afficher(self, indent=0):
        afficher("<functionArgument>", indent)
        self.left.afficher(indent + 1)
        self.right.afficher(indent + 1)
        afficher("</functionArgument>", indent)


class FunctionCall:
    def __init__(self, function_name, args):
        self.nom = function_name
        self.args = args

    def afficher(self, indent=0):
        afficher("<functionCall name=" + str(self.nom) + ">", indent)
        self.args.afficher(indent + 1)
        afficher("</functionCall>", indent)


class Identifiant:
    def __init__(self, nom):
        self.nom = nom

    def afficher(self, indent=0):
        afficher("[Identifiant:" + str(self.nom) + "]", indent)


class ExprList(list):
    def afficher(self, indent=0):
        afficher("<liste_expressions>", indent)
        for expression in self:
            expression.afficher(indent + 1)
        afficher("</liste_expressions>", indent)


class Boolean:
    def __init__(self, value: bool):
        self.value = value
        self.type = TypeEnum.BOOL

    def afficher(self, indent=0):
        afficher("[Boolean:" + str(self.value) + "]", indent)


class Condition:
    def __init__(self, op, exp1, exp2):
        self.exp1 = exp1
        self.op = op
        self.exp2 = exp2

    def afficher(self, indent=0):
        afficher("<condition>", indent)
        self.op.afficher(indent + 1)
        self.exp1.afficher(indent + 1)
        # self.exp2.afficher(indent + 1)
        afficher("</condition>", indent)
