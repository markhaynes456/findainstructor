require('rails_helper')

describe('auth/_form.html.erb') do

  it 'render a form for a user to login' do
    assign(:user,mock_model("User",:email=>nil).as_new_record)
    render
    expect(rendered).to(have_xpath("//form[@action='#{auth_path}']"))
  end

end