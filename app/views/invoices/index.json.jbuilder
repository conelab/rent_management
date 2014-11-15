json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :price, :tennant_id, :property_id, :amount_paid, :status
  json.url invoice_url(invoice, format: :json)
end
