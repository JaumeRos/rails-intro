class FrenchCitiesController < ApplicationController
    def index 
     @french_cities = FrenchCity.all
    end 

    def show 
        @french_cities = FrenchCity.friendly.find(params[:id])

        # @frotels = FrenchCity.find_or_initialize_by(name: FrenchCity.   §name).frotels

        @frotels = FrenchCity.friendly.find(params[:id]).frotels


        @weather_data = GetWeatherService.new(latitude: @french_cities.latitude, longitude: @french_cities.longitude, units: "imperial").call

        
    end 

 end