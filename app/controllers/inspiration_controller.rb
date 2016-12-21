class InspirationController < ApplicationController

	@@page = 1
	@@per_page = 10

  def index
  end

  def random_quote
  	quote = Quote.limit(1).order("RANDOM()").active_quotes.first
   	respond_to do |format|
    	format.json {render :json => {:quote => quote.text, :author => quote.author.name}, status: :ok}
    end
  end

  def fetch_images
  	photos = ::Unsplash::Photo.all(@@page, @@per_page).map { |p|  
  		p.urls.regular
  	}
  	@@page += 1
   	respond_to do |format|
    	format.json {render :json => photos, status: :ok}
    end  	
  end
end
