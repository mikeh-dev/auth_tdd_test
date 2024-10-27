Rails.application.routes.draw do
  get 'user/create'
  get 'user/new'
  root "home#index"
  get "/about", to: "home#about"

  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  delete "logout", to: "sessions#destroy"

end
