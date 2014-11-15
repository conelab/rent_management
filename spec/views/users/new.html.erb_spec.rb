require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :company_id => 1,
      :is_owner_of_company => false,
      :username => "MyString",
      :email => "MyString",
      :phone_number => "MyString",
      :address => "MyString",
      :city => "MyString",
      :country => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_company_id[name=?]", "user[company_id]"

      assert_select "input#user_is_owner_of_company[name=?]", "user[is_owner_of_company]"

      assert_select "input#user_username[name=?]", "user[username]"

      assert_select "input#user_email[name=?]", "user[email]"

      assert_select "input#user_phone_number[name=?]", "user[phone_number]"

      assert_select "input#user_address[name=?]", "user[address]"

      assert_select "input#user_city[name=?]", "user[city]"

      assert_select "input#user_country[name=?]", "user[country]"
    end
  end
end
