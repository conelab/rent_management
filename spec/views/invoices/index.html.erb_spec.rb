require 'rails_helper'

RSpec.describe "invoices/index", :type => :view do
  before(:each) do
    assign(:invoices, [
      Invoice.create!(
        :price => 1.5,
        :tennant_id => 1,
        :property_id => 2,
        :amount_paid => 1.5,
        :status => 3
      ),
      Invoice.create!(
        :price => 1.5,
        :tennant_id => 1,
        :property_id => 2,
        :amount_paid => 1.5,
        :status => 3
      )
    ])
  end

  it "renders a list of invoices" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
