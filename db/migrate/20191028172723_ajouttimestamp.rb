class Ajouttimestamp < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :gossips, null: true
  end
end
