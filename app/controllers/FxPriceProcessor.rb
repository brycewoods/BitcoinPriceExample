require 'date'

# Webbernet examination
# By Bryce Woods


# ---------------------------------------------------------------------------
#
# Name: ApiHandler
# Description: Handles the data being passed from the stock api.
#
# ---------------------------------------------------------------------------
class FxPriceProcessor

	def initialize()

	end

	# ---------------------------------------------------
	#
	# Description: Converts downloaded JSON object to an array containing daily price data.
	# Input_1: JSON object containing required data.
	# Return: Array of price data from the JSON object.
	# 
	# ---------------------------------------------------
	def GetPriceInformation(jsonObj)

		# Need to get yesterday date as it is on American time. Can cause issues
		currentDate = DateTime.yesterday
		
		Rails.logger.info currentDate.strftime("%Y-%m-%d")

		resultArray = { "Information" => jsonObj["Meta Data"]["1. Information"] ,
						"Time Zone" => jsonObj["Meta Data"]["6. Time Zone"] ,
						"Last Refreshed" => jsonObj["Meta Data"]["5. Last Refreshed"] ,
						"From Symbol" => jsonObj["Meta Data"]["2. From Symbol"] ,
						"To Symbol" => jsonObj["Meta Data"]["3. To Symbol"] ,
						"Open" => jsonObj["Time Series FX (Daily)"][currentDate.strftime("%Y-%m-%d")]["1. open"],
						"High" => jsonObj["Time Series FX (Daily)"][currentDate.strftime("%Y-%m-%d")]["2. high"],
						"Low" => jsonObj["Time Series FX (Daily)"][currentDate.strftime("%Y-%m-%d")]["3. low"],
						"Close" => jsonObj["Time Series FX (Daily)"][currentDate.strftime("%Y-%m-%d")]["4. close"]
					  }

		return resultArray

	end

end