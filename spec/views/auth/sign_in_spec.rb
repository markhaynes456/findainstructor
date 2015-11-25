require("rails_helper")

describe("auth/sign_in.html.erb") do

  before(:each) do
    assign(:user,mock_model("User",email: nil ))
  end

  it("renders a link to forgotten password") do
    render
    expect(rendered).to(have_selector("[href='#{auth_reset_password_path}']"))
  end

end