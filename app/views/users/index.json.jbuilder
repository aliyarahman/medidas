json.array!(@users) do |user|
  json.extract! user, :id, :firstname1, :firstname2, :lastname1, :lastname2, :username
  json.url user_url(user, format: :json)
end
