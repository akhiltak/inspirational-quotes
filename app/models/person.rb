class Person < ApplicationRecord
	enum profession: [:not_specified, :writer, :politician, :sportsperson, :scientist, :entertainment, :artist, :engineer]
	has_many :quotes, foreign_key: "author_id", dependent: :delete_all
end
