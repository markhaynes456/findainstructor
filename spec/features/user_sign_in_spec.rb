require('rails_helper')

feature 'User Authentication'  do

  before(:each) do
    User.create!(first_name:"car" , last_name:"car" , email:"instructor456@gmail.com" , password:"password" , instructor:false )
  end

  scenario "Given a user account When the user enters there correct credentials Then they should be logged in" do
    visit('login/')
    fill_in('user[email]', :with=>"instructor456@gmail.com")
    fill_in('user[password]',:with=>"password")
    click_on('Sign in')        
    expect(page).to(have_content("Success: Logged in"))
  end  

  scenario "Given a user account When the user enters there incorrect credentials Then they should not be logged in" do
    visit('login/')
    fill_in('user[email]',:with=>"instructor456@gmail.com")
    fill_in('user[password]',:with=>"password1")
    click_on('Sign in') 
    expect(page).to(have_content("Error: Wrong password or username, please try again"))
  end

  scenario "Given a user has no account When the user enters there credentials they they should not be logged in" do
    visit('login/')
    fill_in('user[email]',:with=>"student4561@gmail.com")
    fill_in('user[password]',:with=>"password1")
    click_on('Sign in')        
    expect(page).to(have_content("Error: Wrong password or username, please try again"))
  end

end
