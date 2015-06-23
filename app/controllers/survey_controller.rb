class SurveyController < ApplicationController
  def home
  	# This is the first survey that we give to users to generate figure out their beer preferences
  	@beers = Beer.all
  end
end
