class CitiesController < ApplicationController
    def index
        @cities = City.all
        @hotels = Hotel.all
    end
end
