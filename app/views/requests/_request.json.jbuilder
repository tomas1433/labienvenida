json.extract! request, :id, :seller, :user, :statut, :created_at, :updated_at
json.url request_url(request, format: :json)