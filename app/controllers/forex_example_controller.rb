load "Authenticator.rb"

class ForexExampleController < ApplicationController
  def index
  end
  

  def login
  
	$i = 0
	
	auth = Authenticator.new
	
	# Get all users.
	users = User.all
	
	if auth.AuthenticateUser(params[:username] , params[:password] , users)
		redirect_to '/dashboard/dash'
	else
		Rails.logger.info "Not Found"
		redirect_to '/forex_example/index?error=NoUser'
	end
  
  end
  
end
