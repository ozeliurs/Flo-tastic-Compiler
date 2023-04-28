import sys

from sly import Parser

import arbre_abstrait
from analyse_lexicale import FloLexer


class FloParser(Parser):
    # On récupère la liste des lexèmes de l'analyse lexicale
    tokens = FloLexer.tokens
    debugfile = 'parser.out'

    precedence = (
        ('left', "+", "-"),
        ('left', "*", "/", "%"),
    )

    # Règles gramaticales et actions associées

    @_('TYPE IDENTIFIANT "=" expr ";"')
    def instruction(self, p):
        return arbre_abstrait.Affectation(p.IDENTIFIANT, p.expr)

    @_('TYPE IDENTIFIANT ";"')
    def instruction(self, p):
        return arbre_abstrait.Affectation(p.IDENTIFIANT)

    @_('listeInstructions')
    def prog(self, p):
        return arbre_abstrait.Programme(p[0])

    @_('instruction')
    def listeInstructions(self, p):
        l = arbre_abstrait.ListeInstructions()
        l.instructions.append(p[0])
        return l

    @_('instruction listeInstructions')
    def listeInstructions(self, p):
        p[1].instructions.append(p[0])
        return p[1]

    @_('ecrire')
    def instruction(self, p):
        return p[0]

    @_('expr "," expr')
    def expr(self, p):
        return arbre_abstrait.FunctionArgument(p[0], p[2])
    @_('IDENTIFIANT')
    def expr(self, p):
        return arbre_abstrait.Identifiant(p.IDENTIFIANT)

    @_('ECRIRE "(" expr ")" ";"')
    def ecrire(self, p):
        return arbre_abstrait.Ecrire(p.expr)  # p.expr = p[2]

    @_('expr "(" expr ")"')
    def expr(self, p):
        print(p)
        return arbre_abstrait.Operation(p[0], p[2], p[4])

    @_('LIRE "(" IDENTIFIANT ")" ";"')
    def expr(self, p):
        return arbre_abstrait.Lire(p.IDENTIFIANT)

    @_('expr "+" expr')
    def expr(self, p):
        return arbre_abstrait.Operation('+', p[0], p[2])

    @_('expr "-" expr')
    def expr(self, p):
        return arbre_abstrait.Operation('-', p[0], p[2])

    @_('"-" expr')
    def expr(self, p):
        return arbre_abstrait.Operation('-', arbre_abstrait.Entier(0), p[1])

    @_('expr "*" expr')
    def expr(self, p):
        return arbre_abstrait.Operation('*', p[0], p[2])

    @_('expr "/" expr')
    def expr(self, p):
        return arbre_abstrait.Operation('/', p[0], p[2])

    @_('expr "%" expr')
    def expr(self, p):
        return arbre_abstrait.Operation('%', p[0], p[2])

    @_('"(" expr ")"')
    def expr(self, p):
        return p.expr  # ou p[1]

    @_('ENTIER')
    def expr(self, p):
        return arbre_abstrait.Entier(p.ENTIER)

    @_('IDENTIFIANT')
    def identifiant(self, p):
        return arbre_abstrait.Identifiant(p.IDENTIFIANT)


if __name__ == '__main__':
    lexer = FloLexer()
    parser = FloParser()
    if len(sys.argv) < 2:
        print("usage: python3 analyse_syntaxique.py NOM_FICHIER_SOURCE.flo")
    else:
        with open(sys.argv[1], "r") as f:
            data = f.read()
            try:
                arbre = parser.parse(lexer.tokenize(data))
                arbre.afficher()
            except EOFError:
                exit()
