def rot13(string)
  alphabet_position = {}

  counter = 0
  ('a'..'z').each do |letter|
    alphabet_position[letter] = counter
    counter += 1
  end

  string.downcase.chars.map do |char|
    if char =~ /[a-z]/
      place_in_alphabet = alphabet_position[char]
      place_in_alphabet += 13
      place_in_alphabet = place_in_alphabet % 26
      alphabet_position.select { |_, v| v == place_in_alphabet }.keys[0]
    elsif char =~ /\n/
      '_'
    else
      char
    end
  end
end

p rot13(<<~block 
Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu
block
)