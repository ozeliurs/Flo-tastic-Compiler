import sys

from sly import Parser

import arbre_abstrait
from analyse_lexicale import FloLexer


class FloParser(Parser):
    # On récupère la liste des lexèmes de l'analyse lexicale
    tokens = FloLexer.tokens
    debugfile = 'parser.out'

    precedence = (
        ('left', 'ET'),
        ('left', 'OU'),
        ('right', 'NON'),
        ('right', 'EGAL'),
        ('left', 'INFERIEUR', 'SUPERIEUR', 'INFERIEUR_OU_EGAL', 'SUPERIEUR_OU_EGAL', 'DIFFERENT'),
        ('left', '+', '-'),
        ('left', '*', '/', '%'),
    )

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

    @_('variable_definition', 'variable_assignment', 'variable_definition_assignment', 'condition', 'function_call')
    def instruction(self, p):
        return p[0]

    @_('"{" new_scope listeInstructions "}"')
    def scope(self, p):
        instructions = p.listeInstructions
        arbre_abstrait.pop_scope()
        return instructions

    @_('')
    def new_scope(self, p):
        arbre_abstrait.create_scope()
        return

    @_('SI "(" expr ")" scope',
       'SI "(" expr ")" scope SINON scope'
       )
    def condition(self, p):
        if len(p) == 4:
            return arbre_abstrait.Condition(p[2], p[3], None)
        else:
            return arbre_abstrait.Condition(p[2], p[3], p[4])

    @_('SI "(" expr ")" scope elif_list')
    def condition(self, p):
        return arbre_abstrait.Condition(p.expr, p.scope, p.elif_list)

    @_('SINON SI "(" expr ")" scope')
    def elif_list(self, p):
        return arbre_abstrait.Condition(p.expr, p.scope, None)

    @_('SINON SI "(" expr ")" scope elif_list')
    def elif_list(self, p):
        return arbre_abstrait.Condition(p.expr, p.scope, p.elif_list)

    @_("SINON scope")
    def elif_list(self, p):
        return p.scope

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

    @_('TYPE IDENTIFIANT "(" parameter_list ")" scope')
    def function_definition(self, p):
        return arbre_abstrait.FunctionDefinition(p.TYPE, p.IDENTIFIANT, p.parameter_list, p.listeInstructions)

    @_('TYPE IDENTIFIANT')
    def parameter(self, p):
        return arbre_abstrait.Parameter(p[0], p.IDENTIFIANT)

    @_('parameter')
    def parameter_list(self, p):
        l = arbre_abstrait.ParameterList()
        l.append(p[0])
        return l

    @_('parameter "," parameter_list')
    def parameter_list(self, p):
        p[2].insert(0, p[0])
        return p[2]

    @_("RETOURNER expr")
    def return_statement(self, p):
        return arbre_abstrait.ReturnStatement(p.expr)

    @_('return_statement ";"')
    def instruction(self, p):
        return p.return_statement

    @_('expr')
    def expr_list(self, p):
        l = arbre_abstrait.ExprList()
        l.append(p[0])
        return l

    @_('expr "," expr_list')
    def expr_list(self, p):
        p[2].insert(0, p[0])
        return p[2]

    @_('expr "+" expr',
       'expr "-" expr',
       'expr "*" expr',
       'expr "/" expr',
       'expr "%" expr',
       'expr SUPERIEUR expr',
       'expr INFERIEUR expr',
       'expr INFERIEUR_OU_EGAL expr',
       'expr SUPERIEUR_OU_EGAL expr',
       'expr EGAL expr',
       'expr DIFFERENT expr',
       'expr ET expr',
       'expr OU expr'
       )
    def expr(self, p):
        return arbre_abstrait.Operation(p[1], p[0], p[2])

    @_('"(" expr ")"')
    def expr(self, p):
        return p.expr  # ou p[1]

    @_('function_call')
    def expr(self, p):
        return p.function_call

    @_('ENTIER')
    def expr(self, p):
        return arbre_abstrait.Entier(p.ENTIER)  # p.ENTIER = p[0]

    @_("BOOLEAN")
    def expr(self, p):
        return arbre_abstrait.Boolean(p.BOOLEAN)

    @_('IDENTIFIANT')
    def expr(self, p):
        return arbre_abstrait.VariableRead(p.IDENTIFIANT)


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
