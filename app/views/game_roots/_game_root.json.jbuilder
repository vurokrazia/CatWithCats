json.extract! game_root, :id, :available, :user_id, :created_at, :updated_at
json.url game_root_url(game_root, format: :json)
