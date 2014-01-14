Wallchalking::Application.routes.draw do
  resources :property_types
  resources :listings
  resources :facilities

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}, controllers: {omniauth_callbacks: "authentications", registrations: "registrations"}
  resources :users

  match 'search' => 'search#search_result'

end