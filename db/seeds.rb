# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ayn = Author.new(first_name: 'Ayn', last_name: 'Rand', year_born: 1905)
peter = Author.new(first_name: 'Peter', last_name: 'Benchley', year_born: 1940)

fountainhead = Book.new(title: 'The Fountainhead', year: 1943, summary: 'Blah...')
atlas = Book.new(title: 'Atlas Shrugged', year: 1957, summary: 'Blah...')
jaws = Book.new(title: 'Jaws', year: 1974, summary: 'Blah...')

penguin = Publisher.new(name: 'Penguin Random House', url: 'https://www.penguinrandomhouse.com/')
harper = Publisher.new(name: 'HarperCollins', url: 'https://www.harpercollins.com/')


fountainhead.author = ayn
atlas.author = ayn
jaws.author = peter

fountainhead.imprint = penguin
atlas.imprint = harper
jaws.imprint = penguin


ayn.save!
peter.save!

fountainhead.save!
atlas.save!
jaws.save!

penguin.save!
harper.save!
