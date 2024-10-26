def acronymize(sentence)
  # 0. Create the empty array
  # first_letters = []
  # 1. isolate the words
  words = sentence.split
  # 2. for EACH word
  first_letters = words.map do |word|
    # 2.1 we isolate the first letter
    # word[0]
    # 3. Add it to the array
    # first_letters <<
    word[0]
  end
  # p first_letters
  # 4. to_string
  # 5. upcase the string
  first_letters.join.upcase
end
