json.extract! person, :id, :name, :born_on, :profession, :died_on, :country, :created_at, :updated_at
json.url person_url(person, format: :json)