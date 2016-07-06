require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/places_youve_been")

get("/") do
  @places_youve_been = Places.show()
  erb(:index)
end

post("/places_youve_been") do
  place = params.fetch("place")
  year = params.fetch("year")
  place_youve_been = Places.new(place, year)
  place_youve_been.save()
  erb(:places_youve_been)
end

get("/places_youve_been") do
  erb(:places_youve_been)
end
