class Person < ApplicationRecord
	enum profession: [:not_specified, :writer, :politician, :sportsperson, :scientist, :entertainment, :artist, :engineer]
end
