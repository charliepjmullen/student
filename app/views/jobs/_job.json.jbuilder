json.extract! job, :id, :name, :employer, :sector, :experience_req, :job_info, :created_at, :updated_at
json.url job_url(job, format: :json)