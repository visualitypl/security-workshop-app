100.times do |i|
  Book.create(
    name: "Book_#{i}",
    description: "Sample description of Book #{i}",
    published: [true, false].sample
  )
end
