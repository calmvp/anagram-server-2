class Word < ActiveRecord::Base
  


  def find_anagram_matches
    Word.where(sorted_letters: self.sorted_letters)
  end

  def anagrams
    answer = []
    self.find_anagram_matches.each do |i|
      answer << i.word
    end
    answer
  end

end
