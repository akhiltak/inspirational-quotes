
# Inspirational-Quotes

Displays a slide-show of inspirational quotes with cycling background images in full-screen mode

Project description:

* Ruby version - 2.3.1

* Rails version - 5.0.0.1 

### Configuration (How to run):
 - Download rails application (Git-hub project)
 - Replace Quotes seed file if required at the root folder(it's named Quotes.csv) 
 - Run database creation and initialization steps as below (Seeding will take some some as there are a lot of quotes, will implemented batch processing in next iteration)
 - (Optional) Change the slide-show delay in #{RAILS_ROOT}/config/environment-variables.rb
 - Do 'bundle install'
 - Start the application with 'rails s' locally
 - Open http://localhost:3000 in full-screen and stay motivated!


### Database creation and initialization
 - rake db:create
 - rake db:migrate
 - rake db:seed

### Credits
 - Using [Unsplash API](https://github.com/unsplash/unsplash_rb) for background images. 

### License

 - The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


