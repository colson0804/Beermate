class Review < ActiveRecord::Base
	belongs_to :user
	has_one :beer
end
