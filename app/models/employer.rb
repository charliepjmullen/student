class Employer < ActiveRecord::Base
	 has_secure_password
	 validates_uniqueness_of:emp_email
	 
	 has_many :jobs, dependent: :destroy
	 belongs_to :sector
	 
	 validates :emp_name, presence: true
	 validates :location, presence: true
	 validates :password_digest, presence: true
	 
	 validates :emp_email, presence: true
	 
	 geocoded_by :location
	 after_validation :geocode, :if => :location_changed?
	 

end
