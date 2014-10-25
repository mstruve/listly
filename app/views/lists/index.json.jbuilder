json.array!(@lists) do |list|
  json.extract! list, :id, :user_id, :name, :description, :list_type
  json.url list_url(list, format: :json)
end
