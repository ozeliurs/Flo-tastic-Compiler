from unittest import TestCase

from sly import Parser, Lexer

import analyse_syntaxique
import arbre_abstrait
from analyse_lexicale import FloLexer
from analyse_syntaxique import FloParser
from generation_code import gen_programme
from test_analyse_lexicale import DATA_DIR


class TestFloParser(TestCase):
    lexer: Lexer = FloLexer()
    parser: Parser = FloParser()
    TEST_FILES = [
        DATA_DIR / "input/fonction_2.flo",
    ]

    TEST_FILES_BAD = (DATA_DIR / "bad_input").iterdir()
    TEST_FILES_GOOD = (DATA_DIR / "input").iterdir()

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
                tree = self.parser.parse(tokens)
                tree.afficher()
                print(tree.liste_instructions.get_variable_definitions())
                gen_programme(tree)

    def test_bad(self):
        for file in self.TEST_FILES_BAD:
            with self.subTest(file=file):
                with open(file, "r", encoding="utf8") as f:
                    data = f.read()
                    with self.assertRaises(Exception):
                        analyse_syntaxique.parse(data)

    def test_good(self):
        for file in self.TEST_FILES_GOOD:
            with self.subTest(file=file):
                with open(file, "r", encoding="utf8") as f:
                    data = f.read()
                    analyse_syntaxique.parse(data)
