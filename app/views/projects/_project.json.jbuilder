json.extract! project, :id, :name, :project_type, :customer_contact_person, :dues_so_far, :potential_next_jobs_from_this_client, :notes, :created_at, :updated_at
json.url project_url(project, format: :json)
