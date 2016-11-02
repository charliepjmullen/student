class SessionsController < ApplicationController
 
  def new
  end

  def create
	candidate = Candidate.find_by_can_email(params[:can_email])
	if candidate && candidate.authenticate(params[:password])
				session[:candidate_id] = candidate.id
				redirect_to candidate
	else
		flash.now[:error]="Invalid email/password combination"
		render 'new'
		end
  end

  def destroy
	if signed_in?
			session[:candidate_id] = nil
	else 
			flash[:notice] = "You need to log in first"
	end
	redirect_to login_path
  end
  

end
