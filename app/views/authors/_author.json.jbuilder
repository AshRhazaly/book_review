json.extract! author, :id, :name, :books_written, :created_at, :updated_at
json.url author_url(author, format: :json)