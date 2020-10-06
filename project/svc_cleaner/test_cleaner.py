import unittest

class TestStringMethods(unittest.TestCase):

    def test_false(self):
        self.assertEqual(False, True)

    def test_true(self):
        self.assertEqual(True, True)

if __name__ == '__main__':
    unittest.main()