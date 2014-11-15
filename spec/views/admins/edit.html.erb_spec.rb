require 'rails_helper'

RSpec.describe "admins/edit", :type => :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :email => "MyString",
      :name => "MyString",
      :role => "MyString"
    ))
  end

  it "renders the edit admin form" do
    render

    assert_select "form[action=?][method=?]", admin_path(@admin), "post" do

      assert_select "input#admin_email[name=?]", "admin[email]"

      assert_select "input#admin_name[name=?]", "admin[name]"

      assert_select "input#admin_role[name=?]", "admin[role]"
    end
  end
end
