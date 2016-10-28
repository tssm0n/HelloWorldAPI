import unittest

class TestHelloWorld(unittest.TestCase):

    def test_stuff(self):
        self.assertEqual('test','test')

if __name__ == '__main__':
    unittest.main()
