Rails.application.routes.draw do
  resources :arts
  resources :icons
  resources :texts
  resources :photos

  patch "arts#index", to: "arts#update"

  root "arts#index"
end
