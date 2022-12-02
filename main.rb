def caesar_cipher(text, number)
  alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

  text_array = text.split("")

  new_array = text_array.map! do |char|

    if alphabet.include?(char.downcase)

      index = alphabet.find_index(char.downcase)
      new_index = (index + number) % 26

      if char == char.upcase
        char = alphabet[new_index].upcase
      else
        char = alphabet[new_index]
      end

    else

      char

    end
  end
  
  return new_array.join
end