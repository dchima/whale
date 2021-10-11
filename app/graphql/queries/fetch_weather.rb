require 'weather_api'
module Queries
  class FetchWeather < Queries::BaseQuery

    type Types::WeatherType, null: false

    def resolve
      api = WeatherAPI.new()
      weather = api.getWeather(context[:ip])
      params = { 
        longitude: weather['coord']['lon'],
        latitude: weather['coord']['lat'],
        weather: weather['weather'][0]['main'],
        description: weather['weather'][0]['description'],
        temperature: weather['main']['temp'],
        pressure: weather['main']['pressure'],
        humidity: weather['main']['humidity'],
        country_code: weather['sys']['country'],
        city: weather['name'],
        sunrise: weather['sys']['sunrise'],
        sunset: weather['sys']['sunset']
      }
      params
    end
  end
end