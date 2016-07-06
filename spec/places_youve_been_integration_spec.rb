require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application
set(:show_expections, false)

describe("entering places", {:type=> :feature}) do
  it("sends you to the plces you've been page") do
    visit("/")
    fill_in("place", :with=> "San Fransisco")
    fill_in("year", :with=> "2016")
    click_button("Add Place")
    expect(page).to have_content("congratulations")
  end
  it("puts content on the home page") do
    visit("/")
    fill_in("place", :with=> "Portland")
    fill_in("year", :with=> "2011")
    click_button("Add Place")
    click_link("link_home")
    expect(page).to have_content("Portland, 2011")
  end
  it("if the click the add new button you go back to the home page") do
    visit('/places_youve_been')
    # click_link("link_home")
    expect(page).to have_content("congratulations")
  end
end
