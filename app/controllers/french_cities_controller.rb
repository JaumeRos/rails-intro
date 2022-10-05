class FrenchCitiesController < ApplicationController
    def index 
     @french_cities = FrenchCity.all
    end 

    def show 
        @french_cities = FrenchCity.friendly.find(params[:id])

        weather_object = Weather.new("97210")
        @humidity = weather_object.weather()
    end 

 end