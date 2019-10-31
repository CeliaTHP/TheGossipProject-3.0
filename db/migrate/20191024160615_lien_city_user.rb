class LienCityUser < ActiveRecord::Migration[5.2]
  def change
    #je fais le lien entre users et city pour que mon User a une colonne rataché à city_id
  	add_reference :users, :city, foreign_key: true
  end
end
