def acronymize(sentence)
  # PSEUDOCODE
  # 1. Take the words (break into words)
  words = sentence.split
  # p words
  # 2.0 Create an array to store the first letters []
  # first_letters = []
  # 2. get the first letter of the wordSSSSSSSS (of EACH word)
  # 2.1 iterate over the array of words
  first_letters = words.map do |word|
    # 3. Capitalize all the first letters (all is the same as EACH ONE OF THEM)
    first_letter = word.capitalize[0]
    # 3.1 push the capitalized letter to the first letters array
    # first_letters << first_letter
    first_letter
  end
  p first_letters
  # 4. Get/Put them together
  # return an String
  first_letters.join
end
