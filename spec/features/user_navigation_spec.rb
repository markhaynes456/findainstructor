require("rails_helper")

feature "User main application navigation" do

  scenario("Given a user is using the application When they press the log in link Then they view the sign_in screen") do
    visit("/")
    click_link('log_in_link')
    expect(page).to(have_css("#log_in_title"))
  end

  scenario("Given a user is using the application When they press the home link Then they view the home page") do
    visit("/")
    click_link('home_link')
    expect(page).to(have_css("#home_title"))
  end

  scenario("Given a user is using the application When they press the getting started link Then they view the sign up form") do
    visit("/")
    click_link('getting_started_link')
    expect(page).to(have_css("#getting_started_title"))
  end

  scenario("Given a user is using the application When they press the search link Then they view the search page") do
    visit("/")
    click_link("search_link")
    expect(page).to(have_css("#search_title"))
  end

end
