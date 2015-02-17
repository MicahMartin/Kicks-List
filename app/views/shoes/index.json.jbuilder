json.array!(@shoes) do |shoe|
  json.extract! shoe, :id, :title, :description, :user_id, :image
  json.url shoe_url(shoe, format: :json)
end
