require 'rails_helper'

RSpec.describe "tennants/edit", :type => :view do
  before(:each) do
    @tennant = assign(:tennant, Tennant.create!(
      :property_id => 1,
      :name => "MyString",
      :username => "MyString",
      :encrypted_password => "MyString",
      :email => "MyString",
      :phone_number => "MyString",
      :address => "MyString",
      :city => "MyString",
      :country => "MyString",
      :is_active => false
    ))
  end

  it "renders the edit tennant form" do
    render

    assert_select "form[action=?][method=?]", tennant_path(@tennant), "post" do

      assert_select "input#tennant_property_id[name=?]", "tennant[property_id]"

      assert_select "input#tennant_name[name=?]", "tennant[name]"

      assert_select "input#tennant_username[name=?]", "tennant[username]"

      assert_select "input#tennant_encrypted_password[name=?]", "tennant[encrypted_password]"

      assert_select "input#tennant_email[name=?]", "tennant[email]"

      assert_select "input#tennant_phone_number[name=?]", "tennant[phone_number]"

      assert_select "input#tennant_address[name=?]", "tennant[address]"

      assert_select "input#tennant_city[name=?]", "tennant[city]"

      assert_select "input#tennant_country[name=?]", "tennant[country]"

      assert_select "input#tennant_is_active[name=?]", "tennant[is_active]"
    end
  end
end
