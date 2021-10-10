require 'weather_api'
module Queries
  class FetchUsers < Queries::BaseQuery

    type [Types::UserType], null: false

    def resolve
      api = WeatherAPI.new()
      weather = api.getWeather("107.181.180.170")
      print weather

      User.all.order(created_at: :desc)
    end
  end
end