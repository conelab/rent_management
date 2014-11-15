require 'rails_helper'

RSpec.describe "companies/new", :type => :view do
  before(:each) do
    assign(:company, Company.new(
      :name => "MyString",
      :logo => "",
      :address => "MyString",
      :city => "MyString",
      :country => "MyString"
    ))
  end

  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_logo[name=?]", "company[logo]"

      assert_select "input#company_address[name=?]", "company[address]"

      assert_select "input#company_city[name=?]", "company[city]"

      assert_select "input#company_country[name=?]", "company[country]"
    end
  end
end
