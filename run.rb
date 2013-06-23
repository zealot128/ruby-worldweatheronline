require "worldweatheronline"

Worldweatheronline.api_key =  "2yq6s9seh6fah6eu6tzccxrg"


@r= Worldweatheronline::FreeWeather.weather q: "51.0,13.0", num_of_days: 5, includelocation: "yes"
p @r
