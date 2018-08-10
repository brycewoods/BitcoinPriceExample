# Webbernet examination
# By Bryce Woods


# ---------------------------------------------------------------------------
#
# Name: Authenricator
# Description: Basic class that handles the authentication of a user.
#
# ---------------------------------------------------------------------------
class Authenticator

	def initialize()
	
	end
	
	def AuthenticateUser(username, password , userArray)
	
		$i = 0
		
		while $i < userArray.length
			
			if userArray[$i].username == username && userArray[$i].password == password
				return true
			end
			
			$i += 1
		end 
		
		return false
		
	end


end