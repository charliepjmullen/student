class RequestsController < ApplicationController
  before_action :authorise, :only => [:new, :create, :edit, :update, :delete]
  #set_request, only: [:show, :edit, :update, :destroy]
	
	 def create
	    @job = Job.find params[:job_id]
		@request = @job.requests.new(request_params)
		@request.candidate_id = @current_candidate.id       #sets the user_id FK
		#@request.candidates << @current_candidate
		@request.save #saves the @request
	                  # object to the request table
            respond_to do |format|
                format.html{redirect_to @job}
            end			
	 end
	 
	 private
	 def request_params #This is the method ehich whitelists the data fields from the format
	       params.require(:request).permit( :request_id, :content, :job_id, :candidate_id)
	 end
end
