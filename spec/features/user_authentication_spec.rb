require('rails_helper')

feature 'User user'  do

  before(:each) do
    User.create(first_name:"car" , last_name:"car" , email:"instructor456@gmail.com" , password:"password" , instructor:false )
    User.create(first_name:"car" , last_name:"car" , email:"student456@gmail.com" , password:"password" , instructor:false )
  end

  scenario "Instructor types in correct username and password" do
    visit('login/')
    fill_in('user[email]', :with=>"instructor456@gmail.com")
    fill_in('user[password]',:with=>"password")
    click_on('Sign in')        
    expect(page).to(have_content("Success: Logged in"))
  end  

  scenario "Instructor types in wrong password" do
    visit('login/')
    fill_in('user[email]',:with=>"instructor456@gmail.com")
    fill_in('user[password]',:with=>"password1")
    click_on('Sign in') 
    expect(page).to(have_content("Error: Wrong password or username, please try again"))
  end  

  scenario "Student types in correct username and password" do
    visit('login/')
    fill_in('user[email]',:with=>"student456@gmail.com")
    fill_in('user[password]',:with=>"password")
    click_on('Sign in')        
    expect(page).to(have_content("Success: Logged in"))
  end

  scenario "Student types in wrong password" do
    visit('login/')
    fill_in('user[email]',:with=>"student456@gmail.com")
    fill_in('user[password]',:with=>"password1")
    click_on('Sign in')        
    expect(page).to(have_content("Error: Wrong password or username, please try again"))
  end

  scenario "User can reset password" do
    visit('login/') 
    click_on('Forgot password?') 
    fill_in('user[email]',:with=>"student456@gmail.com")
    click_on('Reset password')
    expect(page).to(have_content("Email sent with password information"))
  end

  scenario "User can reset password invalid email" do
    visit('login/') 
    click_on('Forgot password?') 
    fill_in('user[email]',:with=>"student4i56@gmail.com")
    click_on('Reset password')
    expect(page).to(have_content("Invalid email address"))
  end

  scenario "User can log out" do
    visit('login/')
    fill_in('user[email]',:with=>"student456@gmail.com")
    fill_in('user[password]',:with=>"password")
    click_on('Sign in')
    click_on('Log out')        
    expect(page).to(have_css("#home_title"))
  end

end
