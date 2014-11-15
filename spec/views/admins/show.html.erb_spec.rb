require 'rails_helper'

RSpec.describe "admins/show", :type => :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :email => "Email",
      :name => "Name",
      :role => "Role"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Role/)
  end
end
