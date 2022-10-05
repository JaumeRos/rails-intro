class RefreshWeatherJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts "lets refresh the weather api"
  end
end
