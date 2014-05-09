json.array!(@volunteers) do |volunteer|
  json.extract! volunteer, :id, :name, :email, :availability, :preferred_task
  json.url volunteer_url(volunteer, format: :json)
end
