require 'rails_helper'

RSpec.describe "tennants/index", :type => :view do
  before(:each) do
    assign(:tennants, [
      Tennant.create!(
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
      ),
      Tennant.create!(
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
      )
    ])
  end

  it "renders a list of tennants" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Encrypted Password".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
