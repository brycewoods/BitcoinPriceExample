
# Webbernet examination
# By Bryce Woods

# ---------------------------------------------------------------------------
#
# Name: ApiHandler
# Description: Handles the data being passed from the stock api.
#
# ---------------------------------------------------------------------------

class ApiHandler

	def initialize()

	end

	# ---------------------------------------------------
	#
	# Description: Downloads the data as html then converts it to a JSON obj.
	# Input_1: Url to download data from.
	# Return: JSON object of the downloaded data.
	# 
	# ---------------------------------------------------
	def GetData(url)
	
		url = URI.parse(url)
		response = ""

		open(url) do |http|
			response += http.read
		end
	
		hash = JSON.parse response

		return hash

	end


end