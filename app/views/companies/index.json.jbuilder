json.array!(@companies) do |company|
  json.extract! company, :id, :name, :logo, :address, :city, :country
  json.url company_url(company, format: :json)
end
