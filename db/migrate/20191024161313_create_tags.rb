class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      #je crée ma table tag
    	t.string :title
    end
  end
end
