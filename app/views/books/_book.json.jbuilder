json.extract! book, :id, :name, :description, :created_at, :updated_at, :user
json.url book_url(book, format: :json)
