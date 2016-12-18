class Quote < ApplicationRecord
  belongs_to :author, class_name: "Person"
  enum status: [:active, :deleted]
  enum genre: [:general, :motivational, :humour, :advice]
end
