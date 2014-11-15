require 'rails_helper'

RSpec.describe "properties/index", :type => :view do
  before(:each) do
    assign(:properties, [
      Property.create!(
        :company_id => 1,
        :name => "Name",
        :address => "Address",
        :city => "City",
        :country => "Country",
        :rent => 1.5,
        :percent_rent_increase => 1.5
      ),
      Property.create!(
        :company_id => 1,
        :name => "Name",
        :address => "Address",
        :city => "City",
        :country => "Country",
        :rent => 1.5,
        :percent_rent_increase => 1.5
      )
    ])
  end

  it "renders a list of properties" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
