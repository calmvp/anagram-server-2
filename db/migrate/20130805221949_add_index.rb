class AddIndex < ActiveRecord::Migration
  def change
  	add_index :words, :sorted_letters
  end
end
