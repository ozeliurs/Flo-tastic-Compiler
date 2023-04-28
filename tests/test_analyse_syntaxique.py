from unittest import TestCase

from sly import Parser, Lexer

from analyse_lexicale import FloLexer
from analyse_syntaxique import FloParser
from test_analyse_lexicale import DATA_DIR


class TestFloParser(TestCase):
    lexer: Lexer = FloLexer()
    parser: Parser = FloParser()
    TEST_FILES = [
        DATA_DIR / "input/exemple1.flo",
    ]

    def before_each(self):
        self.lexer = FloLexer()

    def test_files(self):
        for file in self.TEST_FILES:
            with open(file, "r", encoding="utf8") as f:
                tokens = self.lexer.tokenize(f.read())
                tree = self.parser.parse(tokens)
                tree.afficher()
