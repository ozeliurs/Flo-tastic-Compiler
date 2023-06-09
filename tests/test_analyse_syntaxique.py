import pprint
from unittest import TestCase

from sly import Parser, Lexer

from analyse_lexicale import FloLexer
from analyse_syntaxique import FloParser
from test_analyse_lexicale import DATA_DIR


class TestFloParser(TestCase):
    lexer: Lexer = FloLexer()
    parser: Parser = FloParser()
    TEST_FILES = [
        DATA_DIR / "input/variable.flo",
    ]

    def before_each(self):
        self.lexer = FloLexer()

    def test_integer(self):
        tokens = self.lexer.tokenize('1')
        tree = self.parser.parse(tokens)
        tree.afficher()
        self.assertTrue(tree is not None)

    def test_files(self):
        for file in self.TEST_FILES:
            with open(file, "r", encoding="utf8") as f:
                data = f.read()
                tokens = self.lexer.tokenize(data)
                pprint.pprint(list(self.lexer.tokenize(data)))
                tree = self.parser.parse(tokens)
                tree.afficher()
