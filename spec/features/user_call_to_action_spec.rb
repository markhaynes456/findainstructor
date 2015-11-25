require("rails_helper")

feature "User call to actions" do
  
  scenario("Given a user in on the homepage When they click the search button Then they are taken to the search page") do
    visit("/")
    click_link('call_to_action_button')
    expect(page).to(have_css("#search_title"))
  end

end
