class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      #je crée ma table gossip
    	t.string :title
    	t.text :content
    end
  end
end
