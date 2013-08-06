class Word < ActiveRecord::Base

  def self.anagrams(sorted)
    self.where(sorted_letters: sorted)
  end

end
