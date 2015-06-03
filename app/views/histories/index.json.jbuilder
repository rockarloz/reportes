json.array!(@histories) do |history|
  json.extract! history, :id, :title, :body, :photo, :show, :latitude, :longitude, :views, :report, :favorite
  json.url history_url(history, format: :json)
end
