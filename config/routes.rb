Rails.application.routes.draw do
  root "pictures#new"
  resources :pictures
end
