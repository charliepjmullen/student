class Sector < ActiveRecord::Base
    has_many :jobs, dependent: :destroy
	has_many :employers
	validates :sector_name, presence: true
end
