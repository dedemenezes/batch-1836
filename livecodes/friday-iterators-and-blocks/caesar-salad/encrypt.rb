def encrypt(sentence)
  # 0. Create an array to store the shifted letters
  shifted_letters = []

  # 1. Make an array of the alphabet
  alphabet = ('A'..'Z').to_a
  # p alphabet
  # 2. Turn the sentence into an array of letters
  letters = sentence.split('')
  # 3. iterate over the letters
  letters.each do |letter|
    # FOR EACH LETTER
    # Check if it is an actual letter
    if alphabet.include?(letter)
      # p letter
    # IF IT IS A LETTER
      # 4. Match them to the array of the alphabet (identify the index in the alphabet)
      index = alphabet.index(letter)
      # 5. Subtract three from the letter index
      shifted_index = index - 3
      # read the new letter from the alphabet using the shifted index
      shifted_letter = alphabet[shifted_index] #=> to retrieve the new letter
      shifted_letters << shifted_letter
    else
    # IF IT IS NOT A LETTER
      # keep as it is
      shifted_letters << letter
    end
  end
  # 6. reassamble the letters
  # 6.1. access the new letter from the alphabet
  shifted_letters.join

end
