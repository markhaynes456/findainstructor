require("rails_helper")

feature "Main Navigation" do

  scenario("User presses log in link") do
    visit("/")
    click_link('log_in_link')
    expect(page).to(have_css("#log_in_title"))
  end

  scenario("User presses home link") do
    visit("/")
    click_link('home_link')
    expect(page).to(have_css("#home_title"))
  end

  scenario("User presses getting started link") do
    visit("/")
    click_link('getting_started_link')
    expect(page).to(have_css("#getting_started_title"))
  end

  scenario("User presses Search link") do
    visit("/")
    click_link("search_link")
    expect(page).to(have_css("#search_title"))
  end

end
