# -*- coding: utf-8 -*-
import os


class Tester:
    def __init__(self, logger, verifier):
        self.logger = logger
        self.verifier = verifier

    def run(self):
        self.test_ok()
        self.test_ko()

    def test_ok(self):
        self.logger.debug("Running all OK tests...")
        base_path = "./tests/ok/"
        for file in self.input_files_in(base_path):
            errors = self.verifier.check_errors(file)
            self.report_test_case(file, not errors)

    def test_ko(self):
        self.logger.debug("Running all KO tests...")
        base_path = "./tests/ko/"
        for file in self.input_files_in(base_path):
            out_path = os.path.splitext(file)[0] + '.out'
            errors = self.verifier.check_errors(file)
            with open(out_path, 'r') as out_file:
                expected_errors = out_file.read().strip()
                found_errors = "\n".join(errors).strip()
                self.report_test_case(file, expected_errors == found_errors)

    def input_files_in(self, path):
        input_files = []
        for root, dirs, files in os.walk(path):
            for file in files:
                if file.endswith(".pbxproj"):
                    input_files.append(path + file)
        return input_files

    def report_test_case(self, path, passed):
        if passed:
            passed_mark = "✓"
        else:
            passed_mark = "✗"

        self.logger.debug("Testing " + path + "... " + passed_mark)
