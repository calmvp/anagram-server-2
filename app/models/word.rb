class Word < ActiveRecord::Base
  # Remember to create a migration!
  def sort_word(word)
    word.split("").sort.join
  end

  def self.anagrams(word)
    @answer = []
    Words.all.each do |i|
      if i[:sorted_letters] == sort_word(word)
        @answer << i[:word]
      end
    end
  end
end
