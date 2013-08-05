class Word < ActiveRecord::Base
  # Remember to create a migration!
  def sort_word
    self.split(" ").sort
  end
end
