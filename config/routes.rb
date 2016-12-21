Rails.application.routes.draw do

  get 'inspiration/index'
  get 'inspiration/random_quote'
  get 'inspiration/fetch_images'


  resources :quotes
  resources :people

	root to: 'welcome#index'
end
