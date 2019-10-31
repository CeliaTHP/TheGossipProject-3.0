class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      #je crée ma table user
    	t.string :first_name
    	t.string :last_name
    	t.text :description
    	t.string :email
    	t.integer :age
    end
  end
end
