class CitiesController < ApplicationController
    def index
        @City = City.all
    end
end
