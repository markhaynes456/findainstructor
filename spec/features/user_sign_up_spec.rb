require('rails_helper')

feature 'User sign up' do

  scenario "Student sign up" do 
    visit("getting_started/")
    fill_in("user[account]",with:"student")
    fill_in("user[first_name]",with:"Mike")
    fill_in("user[last_name]",with:"Souther")
    fill_in("user[email]",with:"mike.souter@gmail.com")
    fill_in("user[password]",with:"souter_and_booter")
    fill_in("password_check",with:"souter_and_booter")
    click_on("Create Account")
    expect(page).to(have_content("Account Created"))
  end

  scenario "Driving instructor sign up" do
    visit("getting_started/")
    fill_in("user[account]",with:"instructor")
    fill_in("user[first_name]",with:"Mike")
    fill_in("user[last_name]",with:"Souther")
    fill_in("user[email]",with:"mike.souter@gmail.com")
    fill_in("user[password]",with:"souter_and_booter")
    fill_in("password_check",with:"souter_and_booter")
    click_on("Create Account")
    expect(page).to(have_content("Account Created"))
  end

  scenario "Student sign up incorrect password" do 
    visit("getting_started/")
    fill_in("user[account]",with:"student")
    fill_in("user[first_name]",with:"Mike")
    fill_in("user[last_name]",with:"Souther")
    fill_in("user[email]",with:"mike.souter@gmail.com")
    fill_in("user[password]",with:"souter_and_booter")
    fill_in("password_check",with:"souter_booter")
    click_on("Create Account")
    expect(page).to(have_content("Account Creation Failed"))
    pending "Configuration of capybara"
  end

  scenario "Driving instructor sign up incorrect password" do
    visit("getting_started/")
    fill_in("user[account]",with:"instructor")
    fill_in("user[first_name]",with:"Mike")
    fill_in("user[last_name]",with:"Souther")
    fill_in("user[email]",with:"mike.souter@gmail.com")
    fill_in("user[password]",with:"souter_and_booter")
    fill_in("password_check",with:"souter_booter")
    click_on("Create Account")
    expect(page).to(have_content("Account Creation Failed")) 
    pending "Configuration of capybara"
 end

  scenario "Student incomplete information entered" do
    visit("getting_started/")
    fill_in("user[account]",with:"instructor")
    fill_in("user[last_name]",with:"Souther")
    fill_in("user[password]",with:"souter_and_booter")
    fill_in("password_check",with:"souter_and_booter")
    click_on("Create Account")
    expect(page).to(have_content("Account Creation Failed"))
  end

  scenario "Instructor incomplete information added" do 
    visit("getting_started/")
    fill_in("user[account]",with:"instructor")
    fill_in("user[last_name]",with:"Souther")
    fill_in("user[password]",with:"souter_and_booter")
    fill_in("password_check",with:"souter_and_booter")
    click_on("Create Account")
    expect(page).to(have_content("Account Creation Failed"))
  end

end

