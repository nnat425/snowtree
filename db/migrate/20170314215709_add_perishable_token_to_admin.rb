class AddPerishableTokenToAdmin < ActiveRecord::Migration
  def change
    add_column :admins, :perishable_token, :string, :default => "", :null => false
    add_index :admins, :perishable_token
  end
end
