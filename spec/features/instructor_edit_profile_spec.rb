require("rails_helper")

feature("User update profile") do

  scenario "Instructor wants to add more detail to there profile" do
    visit('/')
    click_on("Edit Profile")
    fill_in("user[profile]","Lorem Ipsum Espsum")
    fill_in("user[first_pass_rate]")
    fill_in("user[second_pass_rate]")
    fill_in("user[years_experiance]") 
    fill_in("user[students_taught]")
    fill_in("user[working_hours_monday_start]")
    fill_in("user[working_hours_monday_end]")
    fill_in("user[working_hours_tuesday_start]")
    fill_in("user[working_hours_tuesday_end]")
    fill_in("user[working_hours_wednesday_start]")
    fill_in("user[working_hours_wednesday_end]")
    fill_in("user[working_hours_thursday_start]")
    fill_in("user[working_hours_thursday_end]")
    fill_in("user[working_hours_friday_start]")
    fill_in("user[working_hours_friday_end]")
    fill_in("user[working_hours_saturday_start]")
    fill_in("user[working_hours_saturday_end]")
    fill_in("user[working_hours_sunday_start]")
    fill_in("user[working_hours_sunday_end]")
    fill_in("user[hourly_rate]")
    click_on("Update profile")
    expect(page).to(have_content("Lorem Ipsum Espsum"))
  end

  scenario "Instructor adds tags to be found for certain keywords" do
    pending "Requirements"
  end

  scenario "Instructor wants to remove tags which they no longer want to be accosiated with" do
    pending "Requirements"
  end
 
  scenario "When an instructor signs up they are required to fill in additional information before completing the site" do

  end


  

end
