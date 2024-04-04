def caesar_cipher(string, shift_factor)
  downcase_alphabet = ("a".."z").to_a
  upcase_alphabet = ("A".."Z").to_a
  cipher = ""

  string.each_char do |c|
    if downcase_alphabet.include?(c)
      new_index = downcase_alphabet.index(c) + shift_factor

      if new_index > downcase_alphabet.length - 1
        new_index -= downcase_alphabet.length
      end

      cipher += downcase_alphabet[new_index]
    elsif upcase_alphabet.include?(c)
      new_index = upcase_alphabet.index(c) + shift_factor

      if new_index > upcase_alphabet.length - 1
        new_index -= upcase_alphabet.length
      end

      cipher += upcase_alphabet[new_index]
    else
      cipher += c
    end
  end

  cipher
end

puts caesar_cipher("What a string!", 5)