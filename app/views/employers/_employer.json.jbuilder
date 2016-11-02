json.extract! employer, :id, :emp_name, :location, :emp_sector, :emp_email, :password_digest, :created_at, :updated_at
json.url employer_url(employer, format: :json)