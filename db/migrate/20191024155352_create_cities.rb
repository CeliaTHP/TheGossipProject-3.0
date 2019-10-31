class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      #je crée ma table cities
    	t.string :name
    	t.string :zip_code
    end
  end
end
