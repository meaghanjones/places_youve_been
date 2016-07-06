require("rspec")
require("places_youve_been.rb")

describe(Places)do
  before() do
    Places.clear
  end

  describe("#show")do
    it("lets you read the places you've been and the years you have been there") do
      test_places_youve_been = Places.new("San Fransisco", 2008)
      test_places_youve_been.save()
      expect(Places.show()).to(eq([test_places_youve_been]))
    end
  end
end
