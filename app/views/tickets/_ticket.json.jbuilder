json.extract! ticket, :id, :title, :description, :status, :assigner_id, :assignee_id, :reporter_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
