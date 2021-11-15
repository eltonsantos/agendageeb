json.extract! testimonial, :id, :name, :member_since, :title, :message, :created_at, :updated_at
json.url testimonial_url(testimonial, format: :json)
