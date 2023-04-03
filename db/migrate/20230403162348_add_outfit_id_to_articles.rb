class AddOutfitIdToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :outfit_id, :integer
  end
end
