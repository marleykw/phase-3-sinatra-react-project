class AddPurchaseDate < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :purchase_date, :datetime
  end
end
