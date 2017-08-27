json.extract! downtime, :id, :start_time, :end_time, :machine_id, :created_at, :updated_at
json.url downtime_url(downtime, format: :json)
