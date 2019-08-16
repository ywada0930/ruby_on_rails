Rails.application.routes.draw do
  get 'posts/new' => "posts#new"
  get 'posts/index' => "posts#index"
  get "posts/:id" => "posts#show"
  get "posts/:id/edit" => "posts#edit"

  post "posts/create" => "posts#create"
  post "posts/:id/update" => "posts#update"

  get "/" => "home#top"
  get "about" => "home#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
