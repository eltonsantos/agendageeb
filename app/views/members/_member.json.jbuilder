json.extract! member, :id, :name, :email, :birthdate, :phone, :cep, :street, :number, :neighborhood, :country, :city, :state, :complement, :facebook, :instagram, :linkedin, :bio, :created_at, :updated_at
json.url member_url(member, format: :json)
