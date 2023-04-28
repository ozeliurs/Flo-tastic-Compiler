"""
Affiche une chaine de caractère avec une certaine identation
"""


def afficher(s, indent=0):
    print(" " * indent + s)


class Programme:
    def __init__(self, listeInstructions):
        self.listeInstructions = listeInstructions

    def afficher(self, indent=0):
        afficher("<programme>", indent)
        self.listeInstructions.afficher(indent + 1)
        afficher("</programme>", indent)


class ListeInstructions:
    def __init__(self):
        self.instructions = []

    def afficher(self, indent=0):
        afficher("<listeInstructions>", indent)
        for instruction in self.instructions:
            instruction.afficher(indent + 1)
        afficher("</listeInstructions>", indent)


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
        self.op = op
        self.exp2 = exp2

    def afficher(self, indent=0):
        afficher("<operation>", indent)
        afficher(self.op, indent + 1)
        self.exp1.afficher(indent + 1)
        self.exp2.afficher(indent + 1)
        afficher("</operation>", indent)


class Entier:
    def __init__(self, valeur):
        self.valeur = valeur

    def afficher(self, indent=0):
        afficher("[Entier:" + str(self.valeur) + "]", indent)


class Variable:
    def __init__(self, nom):
        self.nom = nom

    def afficher(self, indent=0):
        afficher("[Variable:" + str(self.nom) + "]", indent)


class Affectation:
    def __init__(self, var, exp=None):
        self.var = var
        self.exp = exp

    def afficher(self, indent=0):
        afficher("<affectation>", indent)
        afficher(self.var, indent + 1)
        self.exp.afficher(indent + 1)
        afficher("</affectation>", indent)


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
    def __init__(self, nom, args):
        self.nom = nom
        self.args = args

    def afficher(self, indent=0):
        afficher("<functionCall>", indent)
        self.nom.afficher(indent + 1)
        self.args.afficher(indent + 1)
        afficher("</functionCall>", indent)


class Identifiant:
    def __init__(self, nom):
        self.nom = nom

    def afficher(self, indent=0):
        afficher("[Identifiant:" + str(self.nom) + "]", indent)


class Type:
    def __init__(self, type):
        self.type = type

    def afficher(self, indent=0):
        afficher("[Type:" + str(self.type) + "]", indent)


class Définition:
    def __init__(self, type, nom, args=None):
        self.type = type
        self.nom = nom
        self.args = args

    def afficher(self, indent=0):
        afficher("<définition>", indent)
        print(self.type)
        self.nom.afficher(indent + 1)
        self.args.afficher(indent + 1)
        afficher("</définition>", indent)
