json.array!(@properties) do |property|
  json.extract! property, :id, :company_id, :name, :address, :city, :country, :rent, :percent_rent_increase, :last_increased
  json.url property_url(property, format: :json)
end
