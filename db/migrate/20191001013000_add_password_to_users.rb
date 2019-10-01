class AddPasswordToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password_digest, :string, default: "", null: false
    add_index :users, :name, unique: true
  end
end
