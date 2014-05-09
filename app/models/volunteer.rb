class Volunteer < ActiveRecord::Base
	has_many :assignments
	has_many :events, through: :assignments
	
	validates :name, presence: true
	validates :email, presence: true

end
