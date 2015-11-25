require('rails_helper')

feature 'User log out' do

  before(:all) do
    User.create!(first_name:"Mark",last_name:"Haynes",password:"password",email:"markhaynes456@gmail.com")
  end

  scenario 'Given a user is authenticated When they press the log out Then they should no longer have user access rights' do
    visit('/login')
    fill_in('user[email]',:with=>"markhaynes456@gmail.com")
    fill_in('user[password]',:with=>"password")
    click_on('Sign in')
    click_on('Log out')
    expect(page).to(have_content("Log in"))
  end

end