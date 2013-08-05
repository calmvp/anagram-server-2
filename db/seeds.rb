dictionary = File.open('/usr/share/dict/words')

dictionary.each do |word|
  Word.create!(:word => word)
end
