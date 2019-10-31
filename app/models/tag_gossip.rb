class TagGossip < ApplicationRecord
	#cette relation intermédiaire me permet de faire le lien entre gossip et tag
	belongs_to :gossip
	belongs_to :tag
end
