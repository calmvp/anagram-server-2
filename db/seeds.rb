dictionary = File.open('/usr/share/dict/words')
dictionary.each do |word|
Word.create!(word: word, sorted_letters: word.split('').sort.join)
end
