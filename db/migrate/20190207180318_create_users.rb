class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    	t.string :surname
    	t.string :age
    	t.string :email
    	t.string :city 
    end
  end
end
