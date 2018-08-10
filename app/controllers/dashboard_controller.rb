require 'open-uri'
load 'ApiHandler.rb'
load 'FxPriceProcessor.rb'

class DashboardController < ApplicationController
  
def dash
	
	api = ApiHandler.new
	fxProcessor = FxPriceProcessor.new
	result = api.GetData("https://www.alphavantage.co/query?function=FX_DAILY&from_symbol=EUR&to_symbol=USD&apikey=demo")
	@priceInformation = fxProcessor.GetPriceInformation(result)

  end
end
