json.array!(@journalists) do |journalist|
  json.extract! journalist, :id, :name, :fb_id, :gender, :email, :latitude, :longitude
  json.url journalist_url(journalist, format: :json)
end
