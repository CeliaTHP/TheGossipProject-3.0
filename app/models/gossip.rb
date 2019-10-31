class Gossip < ApplicationRecord
	#La relation est qu'un gossip est écrit pas un seul user
	belongs_to :user
	#mais qu'un gossip peut avoir plusieur tag
	has_many :tag_gossips
	has_many :tags, through: :tag_gossip

	validates :title, presence: {message: "Bonjour! Veux-tu bien renseigner un titre pour ton Gossip STP ?"}
	validates :title, uniqueness: true
	validates :title, length: {minimum: 3, maximum: 20, message: "Veux-tu bien renseigner un contenu un chouya plus long stp."}

	validates :content, presence: {message: "Bonjour! Veux-tu bien renseigner un titre pour ton Gossip STP ?"}
	validates :content, length: {minimum: 20, message: "Veux-tu bien renseigner un contenu un chouya plus long stp."}

end
