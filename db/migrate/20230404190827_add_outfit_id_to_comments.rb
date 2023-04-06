class AddOutfitIdToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :outfit_id, :integer
  end
end
