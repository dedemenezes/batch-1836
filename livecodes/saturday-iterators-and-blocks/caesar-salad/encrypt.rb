def encrypt(text)
  # 0. Create an array with the alphabet
  alphabet = ('A'..'Z').to_a
  # 1. Create an array with each letter of our text (break text into letters)
  letters = text.split('')
  # 2. ITERATE over the array of letters
  shifted_letters = letters.map do |letter|
    # FOR EACH LETTER
      # check if it is an actual letter in the alphabet (check if it is inside the alphabet array)
      # p alphabet.include?(letter)
      if alphabet.include?(letter)
        # IF IT IS A LETTER
          # 3. Shift it 3 letters backward
          # 3.0 Find the letter position in the alphabet
          index = alphabet.index(letter)
          # p index
          # 3.1 position letter I have minus 3
          new_index = index - 3
          # 4. Access alphabet letter in the new position (read)
          shifted_letter = alphabet[new_index]
          # p shifted_letter
      else
        # IF IT IS NOT A LETTER
        # do nothing but keep the space
        letter
      end
  end
  # 6. join them together
  shifted_letters.join
  # return an string
end
