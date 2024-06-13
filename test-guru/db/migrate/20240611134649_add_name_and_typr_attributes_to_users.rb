class AddNameAndTyprAttributesToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :type, :string, null: false, default: 'User'
    remove_columns :users, :name
  end
end
