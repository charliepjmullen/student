class Sector < ActiveRecord::Base
    has_many :jobs, dependent: :destroy
	
	validates :sector_name, presence: true
end
