class Tag < ApplicationRecord
	#cette relation: un tag peut avoir plusieur gossip
	has_many :tagGossips
	has_many :Gossips, through: :tagGossip
end
