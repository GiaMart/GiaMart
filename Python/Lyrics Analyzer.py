text = """
a b c a a b
"""

print(text.split())

word_count = {}

for word in text.lower().split():
  if word in word_count:
    word_count[word] += 1
  else:
    word_count[word] = 1

print(word_count)
