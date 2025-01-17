class Student:
    scores = [65,75,85,95]

    def average_score(self):
        total = 0
        for score in self.scores:
            total += score
        number_of_tests = len(self.scores)
        return total / number_of_tests