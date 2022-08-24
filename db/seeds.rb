# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# BASE_URL = 'https://opendata.aemet.es/opendata/api/'

# ENV["KEY"]


# actual_link = RestClient.get(coast_array["datos"])
# actual_array_link = JSON.parse(actual_link)

# actual_array_link.each do |water|
#     binding.pry
# end 


# response = RestClient.get("https://opendata.aemet.es/opendata/api/prediccion/maritima/costera/costa/42?api_key=#{ENV["AEMET_KEY"]}")
# coast_array = JSON.parse(response)

require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://api.content.tripadvisor.com/api/v1/location/search?searchQuery=SantCugat&category=%22restaurants%22&language=en&key=586AFE7C1934478AB8D2FBF09FD73AEB")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'

response = http.request(request)
puts response.read_body
