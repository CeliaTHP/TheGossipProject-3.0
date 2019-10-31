class MessagePrive < ApplicationRecord
	#je permet une relation sender et recipient avec la class user
	belongs_to :sender, class_name: "User"
	belongs_to :recipient, class_name: "User"
end
