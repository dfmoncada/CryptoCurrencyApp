class Crypto < ApplicationRecord
	validates :name, presence: true, 
		length: { minimum: 5 }
	validates :short_name, presence: true,
		length: { maximum: 5 }
end
