require 'rails_helper'

RSpec.describe "companies/edit", :type => :view do
  before(:each) do
    @company = assign(:company, Company.create!(
      :name => "MyString",
      :logo => "",
      :address => "MyString",
      :city => "MyString",
      :country => "MyString"
    ))
  end

  it "renders the edit company form" do
    render

    assert_select "form[action=?][method=?]", company_path(@company), "post" do

      assert_select "input#company_name[name=?]", "company[name]"

      assert_select "input#company_logo[name=?]", "company[logo]"

      assert_select "input#company_address[name=?]", "company[address]"

      assert_select "input#company_city[name=?]", "company[city]"

      assert_select "input#company_country[name=?]", "company[country]"
    end
  end
end
