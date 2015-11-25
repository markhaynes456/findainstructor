require('rails_helper')

feature 'User sign up' do

  scenario "Given a User fills with valid data, When the user presses submit, Then the user should see 'success' message" do
    visit("getting_started/")
    choose("Learner Driver")
    fill_in("user[first_name]",with:"Mike")
    fill_in("user[last_name]",with:"Souther")
    fill_in("user[email]",with:"mike.souter@gmail.com")
    fill_in("user[password]",with:"souter_and_booter")
    fill_in("password_check",with:"souter_and_booter")
    click_on("Create Account")
    expect(page).to(have_content("Account Created"))
  end

  scenario "Given a User fails to fill in the first name field, When the user presses submit, Then the user should see a 'error' message" do
    visit("getting_started/")
    choose("Learner Driver")
    fill_in("user[last_name]",with:"Souther")
    fill_in("user[email]",with:"mike.souter@gmail.com")
    fill_in("user[password]",with:"souter_and_booter")
    fill_in("password_check",with:"souter_and_booter")
    click_on("Create Account")
    skip("Implemented in Javascript, Driver issue")
    expect(page).to(have_content("Account Creation Failed"))
  end

  scenario "Given a User fails to fill in their last name, When the user presses submit, Then the user should see a 'error' message" do
    visit("getting_started/")
    choose("Learner Driver")
    fill_in("user[first_name]",with:"Mike")
    fill_in("user[email]",with:"mike.souter@gmail.com")
    fill_in("user[password]",with:"souter_and_booter")
    fill_in("password_check",with:"souter_and_booter")
    click_on("Create Account")
    skip("Implemented in Javascript, Driver issue")
    expect(page).to(have_content("Account Creation Failed"))
  end

  scenario "Given a User fails to fill in the email field, When the user presses submit, Then the user should see a 'error' message" do
    visit("getting_started/")
    choose("Learner Driver")
    fill_in("user[first_name]",with:"Mike")
    fill_in("user[last_name]",with:"Souther")
    fill_in("user[password]",with:"souter_and_booter")
    fill_in("password_check",with:"souter_and_booter")
    click_on("Create Account")
    skip("Implemented in Javascript, Driver issue")
    expect(page).to(have_content("Account Creation Failed"))
  end

  scenario "Given a User fails to fill in the password field, When the user presses submit, Then the user should see a 'error' message" do
    visit("getting_started/")
    choose("Learner Driver")
    fill_in("user[first_name]",with:"Mike")
    fill_in("user[last_name]",with:"Souther")
    fill_in("user[email]",with:"mike.souter@gmail.com")
    fill_in("password_check",with:"souter_and_booter")
    click_on("Create Account")
    skip("Implemented in Javascript, Driver issue")
    expect(page).to(have_content("Account Creation Failed"))
  end

  scenario "Given a User fails to fill in the second password field, When the user presses submit, Then the user should see a 'error' message" do
    visit("getting_started/")
    choose("Learner Driver")
    fill_in("user[first_name]",with:"Mike")
    fill_in("user[last_name]",with:"Souther")
    fill_in("user[email]",with:"mike.souter@gmail.com")
    fill_in("user[password]",with:"souter_and_booter")
    click_on("Create Account")
    skip("Implemented in Javascript, Driver issue")
    expect(page).to(have_content("Account Creation Failed"))
  end

  scenario "Given a User fails to fill in the second password field with the same password as in password, When the user presses submit, Then the user should see a 'error' message sign up incorrect password" do
    visit("getting_started/")
    choose("Learner Driver")
    fill_in("user[first_name]",with:"Mike")
    fill_in("user[last_name]",with:"Souther")
    fill_in("user[email]",with:"mike.souter@gmail.com")
    fill_in("user[password]",with:"souter_and_booter")
    fill_in("password_check",with:"souter_booter")
    click_on("Create Account")
    skip("Implemented in Javascript, Driver issue")
    expect(page).to(have_content("Account Creation Failed"))
  end

end

