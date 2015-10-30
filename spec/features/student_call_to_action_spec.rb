require("rails_helper")

feature "Student call to actions" do
  
  scenario("Homepage - Directrion to the search page") do
    visit("/")
    click_link('call_to_action_button')
    expect(page).to(have_css("#search_title"))
  end

end
