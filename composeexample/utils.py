import unittest

def isGood():
    return False

class UtilsTest(unittest.TestCase):
    def test(self):
        self.assertTrue(isGood())
