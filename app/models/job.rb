class Job < ActiveRecord::Base
     belongs_to :sector
	 
	 has_many :requests, dependent: :destroy
	 
	 validates :name, presence: true
	 validates :employer, presence: true
	 validates :sector, presence: true
	 validates :experience_req, presence: true
	 validates :job_info, presence: true
end
