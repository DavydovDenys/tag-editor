Rails.application.routes.draw do
  get 'test/test'
  root 'homes#home'
  get 'homes/search'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
