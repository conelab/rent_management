require 'rails_helper'

RSpec.describe "properties/edit", :type => :view do
  before(:each) do
    @property = assign(:property, Property.create!(
      :company_id => 1,
      :name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :country => "MyString",
      :rent => 1.5,
      :percent_rent_increase => 1.5
    ))
  end

  it "renders the edit property form" do
    render

    assert_select "form[action=?][method=?]", property_path(@property), "post" do

      assert_select "input#property_company_id[name=?]", "property[company_id]"

      assert_select "input#property_name[name=?]", "property[name]"

      assert_select "input#property_address[name=?]", "property[address]"

      assert_select "input#property_city[name=?]", "property[city]"

      assert_select "input#property_country[name=?]", "property[country]"

      assert_select "input#property_rent[name=?]", "property[rent]"

      assert_select "input#property_percent_rent_increase[name=?]", "property[percent_rent_increase]"
    end
  end
end
