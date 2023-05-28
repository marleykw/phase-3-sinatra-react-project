class AddLastWornDate < ActiveRecord::Migration[6.1]
  def change
  add_column :articles, :last_worn, :datetime
end
end
