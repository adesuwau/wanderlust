json.array!(@trips) do |trip|
  json.extract! trip, :id, :trip_name, :trip_date, :description, :fave_memory, :photo, :city_id, :user_id
  json.url trip_url(trip, format: :json)
end
