class FrenchCitiesController < ApplicationController
    def index 
     @french_cities = FrenchCity.all
    end 

    def show 
        @french_cities = FrenchCity.friendly.find(params[:id])
    end 

 end