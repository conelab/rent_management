require 'rails_helper'

RSpec.describe "tennants/show", :type => :view do
  before(:each) do
    @tennant = assign(:tennant, Tennant.create!(
      :property_id => 1,
      :name => "Name",
      :username => "Username",
      :encrypted_password => "Encrypted Password",
      :email => "Email",
      :phone_number => "Phone Number",
      :address => "Address",
      :city => "City",
      :country => "Country",
      :is_active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Encrypted Password/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/false/)
  end
end
