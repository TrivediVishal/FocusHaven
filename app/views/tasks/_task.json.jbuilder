json.extract! task, :id, :status_id, :level_id, :description, :due_by, :session_id, :user_id, :created_at, :updated_at
json.url task_url(task, format: :json)
