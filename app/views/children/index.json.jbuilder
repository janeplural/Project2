json.array!(@children) do |child|
  json.extract! child, :id, :index
  json.url child_url(child, format: :json)
end
