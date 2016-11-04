class Candidate < ActiveRecord::Base
    has_secure_password
	validates_uniqueness_of:can_email
	
	has_many :requests
	#belongs_to :request
	
	validates :can_name, presence: true
	validates :can_surname, presence: true
	validates :college, presence: true
	validates :can_email, presence: true
	validates :address, presence: true
	validates :experience, presence: true
	validates :password_digest, presence: true
	validates :college_year, numericality: { only_integer: true }
	
	
	def age
		d = Date.new(Date.today.year, dob.month, dob.day)
		d.year - dob.year - (d > Date.today ? 1 : 0)
	end
	#def create
	##save user
	#flash[:notice] = "User successfully created"
	#redirect_to @candidate
	#end
	
	#def show
	#end
end
