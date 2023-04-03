class AddOutfitIdToShoes < ActiveRecord::Migration[6.1]
  def change
    add_column :shoes, :outfit_id, :integer
  end
end
