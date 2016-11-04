class Employer < ActiveRecord::Base
	 has_secure_password
	 validates_uniqueness_of:emp_email
	 
	 has_many :jobs, dependent: :destroy
	 
	 validates :emp_name, presence: true
	 validates :location, presence: true
	 validates :password_digest, presence: true
	 validates :emp_sector, presence: true
	 validates :emp_email, presence: true
	 
end
