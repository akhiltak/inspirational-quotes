class Quote < ApplicationRecord
  belongs_to :author, class_name: "Person"
  enum status: [:active, :deleted]
  enum genre: [:general, :motivational, :humour, :advice]
  scope :active_quotes, -> { where(status: :active) }

  def self.quotes_with_author
  	Quote.joins("INNER JOIN people ON quotes.author_id = people.id AND quotes.status = 0").all.collect{ |data|
  		{
  			quote: data.text,
  			author_name: data.author.name
  		}
  	}
  end
end
