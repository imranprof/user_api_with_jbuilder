class AddAddress < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :address, :string, limit:50
  end
end
