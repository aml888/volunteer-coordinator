class Event < ActiveRecord::Base
	has_many :assignments
	has_many :volunteers, through: :assignments

end
