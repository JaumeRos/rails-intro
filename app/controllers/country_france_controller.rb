class CountryFranceController < ApplicationController
    def index 
     @french_cities = FrenchCity.all
    end 
 end