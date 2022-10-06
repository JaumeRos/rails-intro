class FrenchCity < ApplicationRecord
    has_many :weathers

    extend FriendlyId
    friendly_id :name, use: :slugged

    def initialize(lon,lat)
        @lon = FrenchCity.longitude
        @lat = FrenchCity.latitude     
    end

end
