class User < ApplicationRecord
	#j'effectue ma relation: 1 utilisateur appartient à 1 ville
	belongs_to :city
	#l'utilisateur peut avoir écrit plusieur gossips
	has_many :gossips
	#qu'un user peut envoyer plusieur message et recevoir plusieur message
	has_many :sent_messages, foreign_key: 'sender_id', class_name: "MessagePrive"
	has_many :received_messages, foreign_key: 'recipient_id', class_name: "MessagePrive"

	validates :first_name, presence:  {message: "Bonjour! Veux-tu bien renseigner ton prénom STP ?"}

	validates :last_name, presence:  {message: "Bonjour! Veux-tu bien renseigner ton nom STP ?"}

	validates :description, presence:  {message: "Bonjour! Veux-tu bien renseigner une description STP ?"}
	validates :description, length: {minimum: 20, message: "La description est trop courte."}

	validates :email, presence:  {message: "Bonjour! Veux-tu bien renseigner ton email STP ?"}
	validates :email, uniqueness: true
	validates :email, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Le dormat n'est pas correct. Renseigne un fomat d'adresse mail valide stp." }

end
