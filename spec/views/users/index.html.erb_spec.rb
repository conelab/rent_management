require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :company_id => 1,
        :is_owner_of_company => false,
        :username => "Username",
        :email => "Email",
        :phone_number => "Phone Number",
        :address => "Address",
        :city => "City",
        :country => "Country"
      ),
      User.create!(
        :name => "Name",
        :company_id => 1,
        :is_owner_of_company => false,
        :username => "Username",
        :email => "Email",
        :phone_number => "Phone Number",
        :address => "Address",
        :city => "City",
        :country => "Country"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
  end
end
