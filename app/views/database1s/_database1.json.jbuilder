json.extract! database1, :id, :first_name, :last_name, :email, :phone, :twitter, :created_at, :updated_at
json.url database1_url(database1, format: :json)
