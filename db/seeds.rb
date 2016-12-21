# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

FILENAME = "Quotes.csv"

puts "Entering quotes from file:'#{FILENAME}' into the database."
puts "Assuming the format of csv to be QUOTES;AUTHOR;GENRE"

# NOTE: important sidenote here, this could be easily done by using {headers: true} from CSV class, but that will reduce performance since it converts each row to a hash
seed_data = CSV.read(FILENAME, col_sep: ";")

puts "Entering #{seed_data.count-1} quotes into the database"

seed_data.shift

seed_data.each do |row|
	author = Person.where(name: row.second.strip).first_or_create
	quote = Quote.create(text: row.first.strip, author_id: author.id)
	# quote.genre = row.third.strip if row.third.present?
	# quote.save!
end