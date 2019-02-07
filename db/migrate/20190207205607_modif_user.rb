class ModifUser < ActiveRecord::Migration[5.2]
  def change
  	remove_column :users, :surname
  	remove_column :users, :city
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :password_digest, :string
  	add_column :users, :description, :text

  end
end
