class CreateOutfits < ActiveRecord::Migration[6.1]
  def change
    create_table :outfits do |t|
      t.string :name
      t.datetime :last_worn
    end
  end
end