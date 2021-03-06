Wallchalking::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :property_types
  resources :listings
  resources :facilities
  resources :reviews

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}, controllers: {omniauth_callbacks: "authentications", registrations: "registrations"}
  resources :users

  resources :listings do
    collection do
      post 'like'
      post 'unlike'
      post 'save'
      post 'unsave'
    end  
  end

  
  match 'search' => 'search#search_result'
  
end