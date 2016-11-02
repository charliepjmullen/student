module ApplicationHelper
	def signed_in?
		if session[:candidate_id].nil?
		   return
		else
		    @current_candidate = Candidate.find_by_id(session[:candidate_id])
		end
	end
end
