class FrenchCity < ApplicationRecord
    has_many :weathers
    has_many :french_hotels

    extend FriendlyId
    friendly_id :name, use: :slugged

    def initialize(lon,lat)
        @lon = FrenchCity.longitude
        @lat = FrenchCity.latitude     
    end

end
