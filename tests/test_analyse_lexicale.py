from pathlib import Path
from unittest import TestCase

from sly import Lexer

from src.analyse_lexicale import FloLexer

DATA_DIR = Path(__file__).parent.parent / "data"


class TestFloLexer(TestCase):
    lexer: Lexer = FloLexer()
    TEST_FILES = [
        DATA_DIR / "input/exemple1.flo",
        # DATA_DIR / "input/exemple2.flo",
        # DATA_DIR / "input/variable.flo",
        # DATA_DIR / "input/eval_lexicale.flo",
    ]

    def before_each(self):
        self.lexer = FloLexer()

    def test_integer(self):
        tokens = self.lexer.tokenize('1')
        self.assertTrue(list(tokens)[0].type == 'ENTIER')

    def test_float(self):
        tokens = self.lexer.tokenize('1.0')
        self.assertTrue(list(tokens)[0].type == 'FLOAT')

    def test_files(self):
        for file in self.TEST_FILES:
            # subtest
            with self.subTest(file=file):
                with open(file, "r", encoding="utf8") as f:
                    tokens = list(self.lexer.tokenize(f.read()))
                    for token in tokens:
                        print(token)
                    self.assertTrue(len(list(tokens)) > 0)
