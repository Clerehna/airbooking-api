Rails.application.routes.draw do
  get 'missions/index'
  get 'listings/index'
  get 'listings/show'
  get 'listings/create'
  get 'listings/edit'
  get 'listings/update'
  get 'listings/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
