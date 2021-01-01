json.extract! channel, :id, :title, :about, :created_at, :updated_at
json.url channel_url(channel, format: :json)
