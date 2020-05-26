Rails.application.routes.draw do
  resources :testimonials, only: [:index, :create, :destroy]
  resources :contact_messages, only: [:index, :show, :create, :destroy]
  resources :admins, only: [:index, :show, :update, :create, :destroy]

  post "/login", to: "authentication#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
