json.extract! classement_series, :id, :nom, :genre, :synopsis, :note,:created_at, :updated_at
json.url classement_series_url(classement_series, format: :json)