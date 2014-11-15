json.array!(@users) do |user|
  json.extract! user, :id, :name, :company_id, :is_owner_of_company, :username, :email, :phone_number, :address, :city, :country
  json.url user_url(user, format: :json)
end
