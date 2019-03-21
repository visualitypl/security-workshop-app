user = User.create!(email: 'user@example.com', password: 'password')

john = User.create!(email: 'john.doe@example.com', password: 'password')
jane = User.create!(email: 'jane@example.com', password: 'password')
robert = User.create!(email: 'robert@example.com', password: 'password')

books = [
  {
    name: 'The Great Gatsby',
    description: "A social satire and a milestone in 20th century literature, 'The Great Gatsby' peels away the layers of the glamorous twenties in the U.S. to display the coldness and cruelty at its heart.",
    published: true
  },
  {
    name: 'The Grapes of Wrath',
    description: "Today, nearly forty years after his death, Nobel Prize winner John Steinbeck remains one of America’s greatest writers and cultural figures. Over the next year, his many works published as black-spine Penguin Classics for the first time and will feature eye-catching, newly commissioned art. Of this initial group of six titles, The Grapes of Wrath is in a new edition with a completely revised...",
    published: true
  },
  {
    name: 'Nineteen Eighty-Four',
    description: "Written in 1948, 1984 was George Orwell’s chilling prophecy about the future. And while 1984 has come and gone, his dystopian vision of a government that will do anything to control the narrative is timelier than ever...",
    published: true
  },
  {
    name: 'Ulysses',
    description: "Set entirely on one day, 16 June 1904,Ulyssesfollows Leopold Bloom and Stephen Daedalus as they go about their daily business in Dublin. From this starting point, James Joyce constructs a novel of extraordinary imaginative richness and depth. Unique in the history of literature,Ulyssesis one of the most important and enjoyable works of the twentieth century. After its first publication in Paris...",
    published: true
  },
  {
    name: 'The Catcher in the Rye',
    description: "The Catcher in Rye is the ultimate novel for disaffected youth, but it's relevant to all ages. The story is told by Holden Caulfield, a seventeen- year-old dropout who has just been kicked out of his fourth school. Throughout, Holden dissects the 'phony' aspects of society, and the 'phonies' themselves: the headmaster whose affability depends on the wealth of the parents, his roommate who...",
    published: true
  },
  {
    name: 'Beloved',
    description: "Winner of the Pulitzer Prize, Toni Morrison’s Beloved is a spellbinding and dazzlingly innovative portrait of a woman haunted by the past. Sethe was born a slave and escaped to Ohio, but eighteen years later she is still not free. She has borne the unthinkable and not gone mad, yet she is still held captive by memories of Sweet Home, the beautiful farm where so...",
    published: true
  },
  {
    name: 'The Sound and the Fury',
    description: "Arguably one of the greatest novels written in modern times, William Faulkner’ s masterpiece The Sound and the Fury is the story of the Compsons, a traditional upper-class family in Yoknapatawpha County, Mississippi, who are on the brink of personal and financial ruin. Narrated in stream of consciousness, The Sound and the Fury introduces such memorable characters as the autistic Benjy,...",
    published: true
  },
  {
    name: 'Invisible Man',
    description: "Invisible Man is a milestone in American literature, a book that has continued to engage readers since its appearance in 1952. A first novel by an unknown writer, it remained on the bestseller list for sixteen weeks, won the National Book Award for fiction, and established Ralph Ellison as one of the key writers of the century. The nameless narrator of the novel describes growing up in a black...",
    published: true
  },
  {
    name: 'Great Expectations',
    description: "Great Expectations is a novel by Charles Dickens first serialised in All the Year Round from 1 December 1860 to August 1861. It is regarded as one of his greatest and most sophisticated novels, and is one of his most enduringly popular novels; having been adapted for stage and screen over 250 times.Great Expectations is written in the genre of 'bildungsroman' or the style of book that follows...",
    published: true
  },
  {
    name: 'The Sun Also Rises',
    description: "The most popular of Ernest Hemingway’ s books, The Sun Also Rises is an elegant showcase for Hemingway’ s powerful prose, memorable characters, and biting social commentary on love and society post WWI. The New York Times called it “ An absorbing, beautifully and tenderly absurd, heart-breaking narrative…” Following American and British expatriates from the lights of Paris to the bloody...",
    published: true
  },
  {
    name: 'The Stranger',
    description: 'Through the story of an ordinary man unwittingly drawn into a senseless murder on an Algerian beach, Camus explored what he termed "the nakedness of man faced with the absurd." First published in 1946; now in a new translation by Matthew Ward.',
    published: true
  },
  {
    name: 'For Whom the Bell Tolls',
    description: "For Whom the Bell Tolls is Ernest Hemingway’ s brilliant war novel, telling the story of Robert Jordan, a young American fighting with an anti-fascist guerilla unit in Spain. Jordan wages war, forges friendships, and falls deeply in love with the beautiful Maria. First published in 1940, For Whom the Bell Tolls has been adapted for movies, television, and stage. It is widely viewed as Hemingway...",
    published: true
  }
]


books.each do |book_params|
  book = Book.create!(book_params)
  book.users << jane
end

user.books << Book.first
user.books << Book.second
user.books << Book.last

john.books << Book.first

robert.books << Book.first
robert.books << Book.last
robert.books << Book.second
robert.books << Book.third

Book.last.update(creator: user)
