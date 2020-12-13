json.extract! user, :id, :name, :email, :last_login, :team_id, :created_at, :updated_at
json.url user_url(user, format: :json)
