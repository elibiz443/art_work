Rails.application.routes.draw do
  resources :arts
  resources :icons
  resources :texts
  resources :photos

  root "arts#index"
end
