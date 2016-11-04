class Request < ActiveRecord::Base
    belongs_to :job, dependent: :destroy
	belongs_to :candidate
	#has_many :candidates
end
