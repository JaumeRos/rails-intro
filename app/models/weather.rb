class Weather < ApplicationRecord
   belongs_to :french_city


    def initialize(lon,lat)
        @lon = FrenchCity.longitude
        @lat = FrenchCity.latitude     
    end
    
      def get_weather
        response = RestClient.get("https://api.openweathermap.org/data/2.5/weather?lat=#{@lat}&lon=#{@lon}&appid=#{ENV["OPEN_WEATHER_KEY"]}")
        location_key = JSON.parse(response)
      end
end
