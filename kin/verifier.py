from antlr4 import *
from grammar.PBXProjLexer import PBXProjLexer
from grammar.PBXProjParser import PBXProjParser
from kin_error_listener import KinErrorListener


class Verifier:
    def check_errors(self, path):
        parser, error_listener = self.create_parser(path)
        tree = parser.start()
        return error_listener.errors

    def create_parser(self, path):
        file = FileStream(path, "utf-8")
        lexer = PBXProjLexer(file)
        stream = CommonTokenStream(lexer)
        error_listener = KinErrorListener()
        parser = PBXProjParser(stream)
        parser._listeners = [error_listener]
        return parser, error_listener
