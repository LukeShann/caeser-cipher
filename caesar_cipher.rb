def caeser_cipher(string, shift_factor)
  characters_array = string.split('')
  
  def shift_range_wrapped(num, shift_factor, lower_range, upper_range)
    new = num + shift_factor
    new = (lower_range + (new - upper_range - 1)) if new > upper_range
    new
  end

  characters_array.map do | char |
    char_num = char.ord
    if char_num.between?(65, 90)
      char_num = shift_range_wrapped(char_num, shift_factor, 65, 90)
    end
    if char_num.between?(97, 122)
      char_num = shift_range_wrapped(char_num, shift_factor, 97, 122)
    end
    char_num.chr
  end.join('')
end

puts caeser_cipher("What a string!", 5)
