json.extract! request, :id, :job_id, :can_id, :created_at, :updated_at
json.url request_url(request, format: :json)