# Ruby Weather CLI Application
A simple command-line interface (CLI) application written in Ruby that fetches and displays current weather information for a specified city using the OpenWeatherMap API.

## Features
- Real-time Weather Data: Fetches up-to-date temperature, conditions, humidity, and wind speed.

- City Lookup: Get weather for any city by name.

- Metric Units: Displays temperature in Celsius and wind speed in meters per second.

- Interactive Mode: Continuously query weather for different cities until you choose to exit.

- Error Handling: Provides informative messages for city not found, invalid API keys, or network issues.

## Prerequisites
To run this application, you need to have:

- Ruby Installed:

  - macOS (pre-installed, or via Homebrew): brew install ruby

  - Ubuntu/Debian: sudo apt-get update && sudo apt-get install ruby-full

  - Windows: Use RubyInstaller for Windows.

- OpenWeatherMap API Key:

  - You'll need a free API key from OpenWeatherMap.

  - Sign up for an account at OpenWeatherMap.

  - After signing up, you can find your API key on your API keys page.

  - The free tier is usually sufficient for personal use and this application.


## How to Run
- Save the Code: Save the provided Ruby code into a file named app.rb.

- Insert Your API Key:

  - Open weather_cli.rb in a text editor.

  - Locate the line API_KEY = 'YOUR_API_KEY_HERE'.

  - Replace 'YOUR_API_KEY_HERE' with the actual API key you obtained from OpenWeatherMap. Do not include quotes if your key itself contains quotes (which it usually doesn't).

  ```text
  API_KEY = 'YOUR_ACTUAL_OPENWEATHERMAP_API_KEY_GOES_HERE'
  ```

- Open Terminal/Command Prompt: Navigate to the directory where you saved weather_cli.rb.

- Execute the Application:  

```text
ruby app.rb
```

## Usage
Once the application starts, you will be prompted to enter a city name:

```text
--- Ruby Weather CLI ---
Enter 'exit' to quit.

Enter city name: London
Fetching weather for London...
--- Weather in London, GB ---
Temperature: 15.0°C (Feels like: 14.5°C)
Conditions: Clear sky
Humidity: 70%
Wind Speed: 3.6 m/s
------------------------------------

Enter city name: New York
Fetching weather for New York...
--- Weather in New York, US ---
Temperature: 22.1°C (Feels like: 21.8°C)
Conditions: Scattered clouds
Humidity: 65%
Wind Speed: 4.1 m/s
------------------------------------

Enter city name: InvalidCity
Fetching weather for InvalidCity...
Error: City 'invalidcity' not found. Please check the spelling.

Enter city name: exit
Exiting weather CLI. Goodbye!
```


## How It Works
- API Key & Base URL: The application uses a constant API_KEY (which you must set) and BASE_URL for the OpenWeatherMap API endpoint.

- fetch_weather_data(city):

  - Constructs the full API request URL, encoding the city name to handle spaces and special characters.

  - Uses Ruby's built-in Net::HTTP library to send an HTTP GET request to the OpenWeatherMap API.

  - Parses the JSON response using JSON.parse.

  - Includes a case statement to handle different HTTP response codes (e.g., 200 OK, 401 Unauthorized, 404 Not Found) and general network errors (rescue StandardError).

- display_weather(data):

  - Takes the parsed weather data (a Ruby Hash) as input.

  - Extracts relevant information like city name, country, temperature, description, humidity, and wind speed.

  - Presents this information in a user-friendly format on the console.

- app:

  - This is the main loop of the application.

  - It continuously prompts the user for a city name.

  - Calls fetch_weather_data to get the weather.

  - Calls display_weather to show the results.

  - Allows the user to exit the application.