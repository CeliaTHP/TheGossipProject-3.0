class CreateMessagePrives < ActiveRecord::Migration[5.2]
  def change
    create_table :message_prives do |t|
      #je crée ma table message_prives en mettant directement les liens avec recipient et sender de mon model user
    	t.references :recipient, index: true
    	t.references :sender, index: true
    	t.text :content
    end
  end
end
