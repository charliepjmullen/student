class Candidate < ActiveRecord::Base
    has_secure_password
	validates_uniqueness_of:email
	
	belongs_to :request
	
	validates :can_name, presence: true
	validates :can_surname, presence: true
	validates :college, presence: true
	validates :can_email, presence: true
	validates :address, presence: true
	validates :experience, presence: true
	validates :password_digest, presence: true
	validates :college_year, numericality: { only_integer: true }
	
end
