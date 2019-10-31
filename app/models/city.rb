class City < ApplicationRecord
	#je fais ma relation qu'une city peut avoir plusieur users
	has_many :users

	validates :name, presence: true 

end
