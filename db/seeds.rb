# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# BASE_URL = 'https://opendata.aemet.es/opendata/api/'

# ENV["KEY"]

############# FIRST API TRY 
# actual_link = RestClient.get(coast_array["datos"])
# actual_array_link = JSON.parse(actual_link)

# actual_array_link.each do |water|
#     binding.pry
# end 

# response = RestClient.get("https://opendata.aemet.es/opendata/api/prediccion/maritima/costera/costa/42?api_key=#{ENV["AEMET_KEY"]}")
# coast_array = JSON.parse(response)

#############


############ TRIP ADVISOR API 

# require 'uri'
# require 'net/http'
# require 'openssl'

# url = URI("https://api.content.tripadvisor.com/api/v1/location/search?searchQuery=SantCugat&category=%22restaurants%22&language=en&key=")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true

# request = Net::HTTP::Get.new(url)
# request["Accept"] = 'application/json'

# response = http.request(request)
# puts response.read_body


############### 


############## AMADEUS 
#           # puts "You should check out this bar: #{array["name"]}! also check out the coordinates incase ur a geofreak: #{array["geoCode"]}"


require 'amadeus'

amadeus = Amadeus::Client.new({
  client_id: "#{ENV["AMADEUS_KEY"]}",
  client_secret: "#{ENV["AMADEUS_SECRET"]}"
})

begin
    response = amadeus.reference_data.locations.points_of_interest.get(latitude: 52.541755, longitude: 13.354201)
    real_array = response.data
 
    real_array.each do |array|
        puts array["name"]
    end
rescue Amadeus::ResponseError => error
  puts error
end

