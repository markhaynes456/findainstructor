require("rails_helper")

feature("Instructor update profile") do

  before(:each) do
    @user = User.create(:first_name=>"Mark",:last_name=>"Haynes",:email=>"markhaynes456@gmail.com",:password=>"password",instructor:true)
    page.set_rack_session(findainstructor: @user.id)
  end

  scenario "Instructor wants to add more detail to there profile" do
    visit('/')
    click_on("Update Profile")
    fill_in("user[profile]",with:"Lorem Ipsum Espsum")
    fill_in("user[first_pass_rate]",with:0.7)
    fill_in("user[second_pass_rate]",with:0.3)
    fill_in("user[started_teaching]",with:"2013/11/21")
    fill_in("user[students_taught]",with:90)
    fill_in("user[working_hours_monday_start]",with:"09:00")
    fill_in("user[working_hours_monday_end]",with:"17:00")
    fill_in("user[working_hours_tuesday_start]",with:"09:01")
    fill_in("user[working_hours_tuesday_start]",with:"17:01")
    fill_in("user[working_hours_wednesday_start]",with:"09:02")
    fill_in("user[working_hours_wednesday_end]",with:"17:02")
    fill_in("user[working_hours_thursday_start]",with:"09:03")
    fill_in("user[working_hours_thursday_end]",with:"17:03")
    fill_in("user[working_hours_friday_start]",with:"09:04")
    fill_in("user[working_hours_friday_end]",with:"17:04")
    fill_in("user[working_hours_saturday_start]",with:"09:05")
    fill_in("user[working_hours_saturday_end]",with:"17:05")
    fill_in("user[working_hours_sunday_start]",with:"09:06")
    fill_in("user[working_hours_sunday_end]",with:"17:06")
    fill_in("user[hourly_rate]",with:20)
    click_on("Save Profile")
    expect(page).to( have_content("Profile has been saved"))
  end

  scenario "Instructor adds tags to be found for certain keywords" do
    visit('/')
    click_on("Update Profile")
    fill_in("user[profile]",with:"Lorem Ipsum Espsum")
    fill_in("user[first_pass_rate]",with:0.7)
    fill_in("user[second_pass_rate]",with:0.3)
    fill_in("user[started_teaching]",with:"2013/11/21")
    fill_in("user[students_taught]",with:90)
    fill_in("user[working_hours_monday_start]",with:"09:00")
    fill_in("user[working_hours_monday_end]",with:"17:00")
    fill_in("user[working_hours_tuesday_start]",with:"09:00")
    fill_in("user[working_hours_tuesday_start]",with:"17:00")
    fill_in("user[working_hours_wednesday_start]",with:"09:00")
    fill_in("user[working_hours_wednesday_end]",with:"17:00")
    fill_in("user[working_hours_thursday_start]",with:"09:00")
    fill_in("user[working_hours_thursday_end]",with:"17:00")
    fill_in("user[working_hours_friday_start]",with:"09:00")
    fill_in("user[working_hours_friday_end]",with:"17:00")
    fill_in("user[working_hours_saturday_start]",with:"09:00")
    fill_in("user[working_hours_saturday_end]",with:"17:00")
    fill_in("user[working_hours_sunday_start]",with:"09:00")
    fill_in("user[working_hours_sunday_end]",with:"17:00")
    fill_in("user[hourly_rate]",with:20)
    click_on("Save Profile")
    expect(page).to(have_content("Profile has been saved"))
  end

  scenario "Instructor wants to remove tags which they no longer want to be accosiated with" do
    skip("Requirements")
  end
 
  scenario "When an instructor signs up they are required to fill in additional information before completing the site" do
    skip("Implementation")
  end


  

end
