class Request < ActiveRecord::Base
    belongs_to :job, dependent: :destroy
	has_many :candidates
end
