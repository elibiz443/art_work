Rails.application.routes.draw do
  resources :arts
  resources :icons
  resources :art_texts
  resources :photos
  resources :selected_texts

  patch "arts#index", to: "arts#update"

  root "arts#index"
end
