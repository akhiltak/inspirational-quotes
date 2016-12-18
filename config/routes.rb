Rails.application.routes.draw do

  resources :quotes
  resources :people
  # get 'welcome/index'

	root to: 'welcome#index'
end
