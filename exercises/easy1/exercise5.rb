def rot13(str)
  letter_hash = {}

  ('A'..'Z').each_with_index do |letter, idx|
    letter_hash[idx] = letter
  end

  str.split('').each_with_object([]) do |given_letter, uncrypted_arr|
    if given_letter == ' '
      uncrypted_arr << ' '
      next 
    end
    
    letter_index = 0
    ('A'..'Z').each_with_index do |iterating_letter, idx|
      letter_index = idx if iterating_letter == given_letter.upcase
    end

    letter_index = (letter_index + 13) % 26
    uncrypted_arr << letter_hash[letter_index]
  end.join('')
end

p rot13 'Nqn Ybirynpr'
p rot13 'Tenpr Ubccre'
p rot13 'Nqryr Tbyqfgvar'
p rot13 'Nyna Ghevat'
p rot13 'Puneyrf Onoontr'
p rot13 'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv'
p rot13 'Wbua Ngnanfbss'
p rot13 'Ybvf Unvog'
p rot13 'Pynhqr Funaaba'
p rot13 'Fgrir Wbof'
p rot13 'Ovyy Tngrf'
p rot13 'Gvz Orearef-Yrr'
p rot13 'Fgrir Jbmavnx'
p rot13 'Xbaenq Mhfr'
p rot13 'Fve Nagbal Ubner'
p rot13 'Zneiva Zvafxl'
p rot13 'Lhxvuveb Zngfhzbgb'
p rot13 'Unllvz Fybavzfxv'
p rot13 'Tregehqr Oynapu'