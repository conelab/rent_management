json.array!(@tennants) do |tennant|
  json.extract! tennant, :id, :property_id, :name, :username, :encrypted_password, :email, :phone_number, :address, :city, :country, :is_active
  json.url tennant_url(tennant, format: :json)
end
