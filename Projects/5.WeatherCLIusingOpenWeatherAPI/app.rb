# app.rb

# This application fetches current weather data using the OpenWeatherMap API.

require 'net/http' # For making HTTP requests
require 'json'     # For parsing JSON responses

# IMPORTANT: Replace 'YOUR_API_KEY_HERE' with your actual OpenWeatherMap API key.
# You can get a free API key from https://openweathermap.org/api
API_KEY = 'YOUR_API_KEY_HERE'
BASE_URL = 'http://api.openweathermap.org/data/2.5/weather'

# Function to fetch weather data for a given city
# Returns: A hash containing weather data, or nil if an error occurs
def fetch_weather_data(city)
  # Construct the URL with city, API key, and units (metric for Celsius)
  uri = URI("#{BASE_URL}?q=#{URI.encode_www_form_component(city)}&appid=#{API_KEY}&units=metric")

  begin
    response = Net::HTTP.get_response(uri)

    case response
    when Net::HTTPSuccess then
      # Parse the JSON response body
      data = JSON.parse(response.body)
      return data
    when Net::HTTPUnauthorized then
      # HTTP 401: Unauthorized - likely an invalid API key
      puts "Error: Unauthorized. Please check your OpenWeatherMap API key."
      return nil
    when Net::HTTPNotFound then
      # HTTP 404: Not Found - city not found
      puts "Error: City '#{city}' not found. Please check the spelling."
      return nil
    else
      # Handle other HTTP errors
      puts "Error: HTTP request failed with code #{response.code} - #{response.message}"
      return nil
    end
  rescue StandardError => e
    # Catch any network or other unexpected errors
    puts "An error occurred: #{e.message}"
    return nil
  end
end

# Function to display the formatted weather information
def display_weather(data)
  if data
    city_name = data['name']
    country = data['sys']['country']
    temperature = data['main']['temp']
    feels_like = data['main']['feels_like']
    description = data['weather'][0]['description']
    humidity = data['main']['humidity']
    wind_speed = data['wind']['speed'] # Wind speed in m/s (metric units)

    puts "\n--- Weather in #{city_name}, #{country} ---"
    puts "Temperature: #{temperature}°C (Feels like: #{feels_like}°C)"
    puts "Conditions: #{description.capitalize}" # Capitalize the first letter
    puts "Humidity: #{humidity}%"
    puts "Wind Speed: #{wind_speed} m/s"
    puts "------------------------------------"
  end
end

# Main application logic
def run_weather_cli
  puts "--- Ruby Weather CLI ---"
  puts "Enter 'exit' to quit."

  loop do
    print "\nEnter city name: "
    city = gets.chomp.strip # Read city name and remove leading/trailing whitespace

    if city.downcase == 'exit'
      puts "Exiting weather CLI. Goodbye!"
      break
    elsif city.empty?
      puts "City name cannot be empty. Please try again."
      next
    end

    puts "Fetching weather for #{city}..."
    weather_data = fetch_weather_data(city)
    display_weather(weather_data)
  end
end

# Run the application
run_weather_cli