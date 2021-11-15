json.extract! suggestion, :id, :title, :message, :link, :created_at, :updated_at
json.url suggestion_url(suggestion, format: :json)
