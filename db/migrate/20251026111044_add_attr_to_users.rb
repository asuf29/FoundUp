class AddAttrToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :gsm, :string
    add_column :users, :role, :integer, default: 0
  end
end
