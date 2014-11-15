require 'rails_helper'

RSpec.describe "invoices/new", :type => :view do
  before(:each) do
    assign(:invoice, Invoice.new(
      :price => 1.5,
      :tennant_id => 1,
      :property_id => 1,
      :amount_paid => 1.5,
      :status => 1
    ))
  end

  it "renders new invoice form" do
    render

    assert_select "form[action=?][method=?]", invoices_path, "post" do

      assert_select "input#invoice_price[name=?]", "invoice[price]"

      assert_select "input#invoice_tennant_id[name=?]", "invoice[tennant_id]"

      assert_select "input#invoice_property_id[name=?]", "invoice[property_id]"

      assert_select "input#invoice_amount_paid[name=?]", "invoice[amount_paid]"

      assert_select "input#invoice_status[name=?]", "invoice[status]"
    end
  end
end
