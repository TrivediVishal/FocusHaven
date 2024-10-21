json.extract! session, :id, :initial_time, :started_at, :completed_at, :duation, :is_completed, :incomplete_id, :created_at, :updated_at
json.url session_url(session, format: :json)
