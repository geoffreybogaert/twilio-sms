json.extract! attendee, :id, :login, :phone_number, :created_at, :updated_at
json.url attendee_url(attendee, format: :json)