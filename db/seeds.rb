dictionary = File.open('/usr/share/dict/words')
dictionary.each do |word|
Word.create!(word: word.chomp.downcase, sorted_letters: word.chomp.downcase.split('').sort.join)
end
