class AddVotesToPictures < ActiveRecord::Migration
  def change
  	add_column :pictures, :upvotes, :integer
  	add_column :pictures, :downvotes, :integer
  end
end
