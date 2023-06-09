import sys

from sly import Parser

import arbre_abstrait
from analyse_lexicale import FloLexer


class FloParser(Parser):
    # On récupère la liste des lexèmes de l'analyse lexicale
    tokens = FloLexer.tokens

    # Règles gramaticales et actions associées

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

    @_('variable_definition', 'variable_assignment', 'variable_definition_assignment', 'function_call')
    def instruction(self, p):
        return p[0]

    """
    VARIABLE
    """

    @_('TYPE IDENTIFIANT ";"')
    def variable_definition(self, p):
        return arbre_abstrait.VariableDefinition(p[0], p.IDENTIFIANT)

    @_('IDENTIFIANT "=" expr ";"')
    def variable_assignment(self, p):
        return arbre_abstrait.VariableAssignment(p.IDENTIFIANT, p.expr)

    @_('TYPE IDENTIFIANT "=" expr ";"')
    def variable_definition_assignment(self, p):
        return arbre_abstrait.VariableDefinitionAssignment(p[0], p.IDENTIFIANT, p.expr)

    """
    FUNCTION CALL
    """

    @_('IDENTIFIANT "(" expr_list ")"')
    def function_call(self, p):
        return arbre_abstrait.FunctionCall(p.IDENTIFIANT, p.expr_list)

    @_('IDENTIFIANT "(" ")"')
    def function_call(self, p):
        return arbre_abstrait.FunctionCall(p.IDENTIFIANT, arbre_abstrait.ExprList())

    @_('IDENTIFIANT "(" expr ")"')
    def function_call(self, p):
        return arbre_abstrait.FunctionCall(p.IDENTIFIANT, arbre_abstrait.ExprList([p.expr]))

    @_('function_call ";"')
    def instruction(self, p):
        return p.function_call

    """
    CONDITION
    """

    @_('SI "(" expr_list ")" "{" listeInstructions "}"',
       'SI "(" expr_list ")" "{" listeInstructions "}" SINON "{" listeInstructions "}"')
    def instruction(self, p):
        return arbre_abstrait.Condition(p.expr_list, p.listeInstructions0, p.listeInstructions1)

    @_('expr')
    def expr_list(self, p):
        l = arbre_abstrait.ExprList()
        l.append(p[0])
        return l

    @_('expr "," expr_list')
    def expr_list(self, p):
        p[2].insert(0, p[0])
        return p[2]

    @_('expr "+" expr')
    def expr(self, p):
        return arbre_abstrait.Operation('+', p[0], p[2])

    @_('expr "*" expr')
    def expr(self, p):
        return arbre_abstrait.Operation('*', p[0], p[2])

    @_('"(" expr ")"')
    def expr(self, p):
        return p.expr  # ou p[1]

    @_('function_call')
    def expr(self, p):
        return p.function_call

    @_('ENTIER')
    def expr(self, p):
        return arbre_abstrait.Entier(p.ENTIER)  # p.ENTIER = p[0]

    @_('IDENTIFIANT')
    def expr(self, p):
        return arbre_abstrait.Variable(p.IDENTIFIANT)


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
