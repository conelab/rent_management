require 'rails_helper'

RSpec.describe "properties/show", :type => :view do
  before(:each) do
    @property = assign(:property, Property.create!(
      :company_id => 1,
      :name => "Name",
      :address => "Address",
      :city => "City",
      :country => "Country",
      :rent => 1.5,
      :percent_rent_increase => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
