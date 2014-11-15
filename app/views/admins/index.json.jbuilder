json.array!(@admins) do |admin|
  json.extract! admin, :id, :email, :name, :role
  json.url admin_url(admin, format: :json)
end
