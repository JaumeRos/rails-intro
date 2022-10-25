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


# require 'amadeus'

# amadeus = Amadeus::Client.new({
#   client_id: "#{ENV["AMADEUS_KEY"]}",
#   client_secret: "#{ENV["AMADEUS_SECRET"]}"
# })

# begin
#     response = amadeus.reference_data.locations.points_of_interest.get(latitude: 52.541755, longitude: 13.354201)
#     real_array = response.data
 
#     real_array.each do |array|
#         puts array["name"]
#     end
# rescue Amadeus::ResponseError => error
#   puts error
# end

##################


########## ACCUWEATHER 

# response = RestClient.get("http://dataservice.accuweather.com/locations/v1/topcities/50?apikey=#{ENV["ACCU_KEY"]}")
# location_key = JSON.parse(response)


#  location_key.each do |location|
#    key = location["Key"]

#    response = RestClient.get("http://dataservice.accuweather.com/forecasts/v1/daily/1day/#{key}?apikey=#{ENV["ACCU_KEY"]}")
#     daily_weather = JSON.parse(response)

#     puts daily_weather

#     # daily_weather.each do |weather|

#     #   weather_data = weather["IconPhrase"]
#     #   puts weather_data
    
#     # end 

    

#  end 



########## AIR QUALITY 

# response = RestClient.get("https://api.waqi.info/feed/here/?token=#{ENV["AIR_QUALITY_KEY"]}")
# air_quality_data = JSON.parse(response)

# puts air_quality_data



############ TRIP #2

#### secondary internal search for details 
   # url = URI("https://api.content.tripadvisor.com/api/v1/location/#{location_id}/details?language=en&currency=USD&key=#{ENV["TRIP_KEY"]}")

  # http = Net::HTTP.new(url.host, url.port)
  # http.use_ssl = true
  
  # request = Net::HTTP::Get.new(url)
  # request["Accept"] = 'application/json'
  
  # new_response = http.request(request)
  
  # new_parsed_json = JSON.parse(new_response.body)

  # new_parsed_json.each do |data|
  #   puts "here's all the data: #{data}"

  # end   
###################

# require 'uri'
# require 'net/http'
# require 'openssl'

# url = URI("https://api.content.tripadvisor.com/api/v1/location/search?searchQuery=barcelona&language=en&key=#{ENV["TRIP_KEY"]}")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true

# request = Net::HTTP::Get.new(url)
# request["Accept"] = 'application/json'

# response = http.request(request)

# parsed_json = JSON.parse(response.body)["data"]

# parsed_json.each do |please|
  

#   # hotels = Hotel.create(
#   #   name: please["name"],
#   #   description: please["address_string"],
#   #   category: please["location_id"] 
#   # )
  

# end 

# #### i'm going to need to add a hotels model - and then save the data into the hotels database - think i'm going to have to have some type of 
# ### database association from the cities databse to the hotels - no idea how yet. 


####### New locationa api 

# require "uri"
# require "net/http"

# url = URI("https://countriesnow.space/api/v0.1/countries")

# https = Net::HTTP.new(url.host, url.port)
# https.use_ssl = true

# request = Net::HTTP::Get.new(url)

# response = https.request(request)
# puts response["iso2"].read_body



# require "uri"
# require "net/http"

# url = URI("https://countriesnow.space/api/v0.1/countries/cities")

# https = Net::HTTP.new(url.host, url.port)
# https.use_ssl = true

# request = Net::HTTP::Post.new(url)
# request.body = "{\n    \"country\": \"nigeria\"\n}"

# response = https.request(request)
# puts response.read_body


#fuck this bitch doesnt work either

## Trying scraping



####### So this actually worked - we scraped some french cities - sick 1 !!!!!!!!!!!!  ####

# require "open-uri"
# require "nokogiri"

# # ingredient = "chocolate"
# url = "https://en.wikipedia.org/wiki/Urban_area_(France)"

# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML(html_file)
# french_city_array = []

# html_doc.search(".wikitable tbody td a").each do |element|
#    puts element.text
#   # puts element.attribute("href").value
#   # new_city = City.create(
#   #   name: element.text
#   # )
#   french_city_array << element

# end

# puts "Here's your fkn list:"

# french_city_array.each_with_index do |element,index|
#   puts "#{index + 1} - #{element.text}"

# # end 

# require "open-uri"
# require "nokogiri"

# # ingredient = "chocolate"
# url = "https://en.wikipedia.org/wiki/List_of_communes_in_France_with_over_20,000_inhabitants"

# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML(html_file)

# massive_list_of_french = []

# html_doc.search(".wikitable tbody td a").each do |element|
#   puts element.text
#   # puts element.attribute("href").value
#   # new_city = City.create(
#   #   name: element.text
#   # )

#   massive_list_of_french << element

# end





# puts "Here's your fkn list:"

# french_city_array.each_with_index do |element,index|
#   puts "#{index + 1} - #{element.text}"
# end 

#  I HAVE FUCKING SUCCESSFULLY GOTTEN THE FRENCH FUCKING CITIES LETS FUCKING GO MOTHERFUCKER!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

# require "open-uri"
# require "nokogiri"

# # ingredient = "chocolate"
# url = "https://en.wikipedia.org/wiki/List_of_communes_in_France_with_over_20,000_inhabitants"

# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML(html_file)
# french_city_array = []

# html_doc.search(".wikitable tbody td:first-child a")[0..-9].each do |element|
#   french_city_array << element

# end


#  check this out https://tosbourn.com/ruby-on-rails-seo/ 



#  french_city_array.each do |city|
#   puts city
#  end


#  THIS IS WORKING @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
# require 'uri'
# require 'net/http'
# require 'openssl'

# france = FrenchCity.all

# france[0..9].each do |city|
#   name = city[:name]
  
# url = URI("https://api.content.tripadvisor.com/api/v1/location/search?searchQuery=#{name}&language=en&key=ADDTHEFKNKEY")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true

# request = Net::HTTP::Get.new(url)
# request["accept"] = 'application/json'

# response = http.request(request)
# puts response.read_body


# end 

###### This is fkn insane this also worked i got the fucking coordinates lets get it 

# france = FrenchCity.all

# france.each do |city|
#   name = city[:name].parameterize 

#   response = RestClient.get("http://api.openweathermap.org/geo/1.0/direct?q=#{name},FR&limit=1&appid=#{ENV["OPEN_WEATHER_KEY"]}")
#   location_key = JSON.parse(response)

#     location_key.each do |thing|

#       p "So for this city: #{thing["name"]} the latitude is: #{thing["lat"]} and the longitude is #{thing["lon"]}"

#       frenchie = FrenchCity.find_or_initialize_by(name: "#{name}")
#       frenchie.latitude = thing["lat"]
#       frenchie.longitude = thing["lon"]
#       frenchie.save!

#     end

# end 

####### GOT THE LONGITUDE AND LATITUDE ON TO THE NEXT ONE !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


# france = FrenchCity.all

# france[0..2].each do |city|
#   name = city[:name]
#   lat = city[:latitude]
#   lon = city[:longitude]


#   response = RestClient.get("https://api.openweathermap.org/data/2.5/weather?lat=#{lat}&lon=#{lon}&appid=#{ENV["OPEN_WEATHER_KEY"]}")
#   location_key = JSON.parse(response)

#   p "Sup you retards, for the city of #{name} the current weather is: #{location_key["main"]}"

#   location_key["weather"].each do |weather|
#     p "For the city of #{name} the current weather is: #{weather["main"]}"
#   end 


# end 


# THIS WORKS, AND IT SAVES PROPERLY BUT THE TRIPADVISOR API IS SHIT FUCK OFF. LET ME TRY SCRAPING. 

# require 'uri'
# require 'net/http'
# require 'openssl'


# france = FrenchCity.all

# france[0..1].each do |city|
#   name = city[:name]
#   lat = city[:latitude]
#   lon = city[:longitude]


# url = URI("https://api.content.tripadvisor.com/api/v1/location/nearby_search?latLong=#{lat}%252C#{lon}&category=hotels&radius=10&language=en&key=#{ENV["TRIP_KEY"]}")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true

# request = Net::HTTP::Get.new(url)
# request["accept"] = 'application/json'

# response = http.request(request)
# real_answer = JSON.parse(response.body)


#   real_answer["data"].each do |hotel|

#         new_hotel =  Frotel.create(
#                           name: hotel["name"],
#                           french_city_id: FrenchCity.find_or_initialize_by(name: "#{name}").id


#         )
#   end 



# end


# trying scraping one more time 

# france = FrenchCity.all

# france[0..1].each do |city|

# require "open-uri"
# require "nokogiri"

# # ingredient = "chocolate"
# url = "https://www.booking.com/reviews/fr/city/#{city.name}.en-gb.html?aid=356980&label=gog235jc-1BCCooTTjjAkgzWANoRogBAZgBCbgBGMgBDNgBAegBAYgCAagCBLgC6dXZmgbAAgHSAiQxMDU2NTcwNC02MTVkLTRjNmMtYjllZi04NWRkODBhZDE2NWTYAgXgAgE&sid=71483ca3752d9bebb275cf7988265628&out_of_stock=2"

# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML(html_file)
# french_city_array = []

# html_doc.search(".rlp-main-hotel__container")[0..1].each do |element|

#   puts "checkout this mad hotel in #{city.name}:" 

#   #name:
#   puts element.css(".rlp-main-hotel__hotel-name-link").text

#   #link 
#   puts element.css(".rlp-main-hotel__hotel-name-link").attribute("href").value

#   #Ranking 
#   puts element.css(".rlp-main-hotel__rank").text

#   #Category 1 
#   puts element.css(".rlp-main-hotel__theme-item__link")[0].text

#   #Category 2
#   puts element.css(".rlp-main-hotel__theme-item__link")[1].text

#   #and now for the fucking image


  



  
# end
# end

#  HAD TO RE SEED THE DATABASE WITH CITIES BECAUSE OF FUCKIGN POSTGRESQL FUCK ME 

# require "open-uri"
# require "nokogiri"

# # ingredient = "chocolate"
# url = "https://en.wikipedia.org/wiki/List_of_communes_in_France_with_over_20,000_inhabitants"

# html_file = URI.open(url).read
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search(".wikitable tbody td:first-child a")[0..-9].each do |element|
#     new_city = FrenchCity.create(
#     name: element.text
#   )

# end

# GETTING THE LONGITUDE AND LATITUDE ONE MORE FUCKIGN TIME FUCK 

france = FrenchCity.all

france[0..2].each do |city|
  name = city[:name].parameterize 

  response = RestClient.get("http://api.openweathermap.org/geo/1.0/direct?q=#{name},FR&limit=1&appid=#{ENV["OPEN_WEATHER_KEY"]}")
  location_key = JSON.parse(response)

    location_key.each do |thing|

      # p "So for this city: #{thing["name"]} the latitude is: #{thing["lat"]} and the longitude is #{thing["lon"]}"

      frenchie = FrenchCity.find_or_initialize_by(name: "#{name}")
      frenchie.latitude = thing["lat"]
      frenchie.longitude = thing["lon"]
      frenchie.update

    end

end 