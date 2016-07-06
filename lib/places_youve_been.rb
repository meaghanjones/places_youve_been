require('pry')

class Places
  @@all_places = []

  define_method(:initialize) do |place, year|
    @place = place
    @year = year
  end

  define_method(:save) do
    @@all_places.push(self)
  end

  define_method(:place) do
    @place
  end

  define_method(:year) do
    @year
  end

  define_singleton_method(:show) do
  @@all_places
  end

  define_singleton_method(:clear) do
    @@all_places = []
  end
end
