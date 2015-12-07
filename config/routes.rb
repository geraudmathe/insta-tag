Rails.application.routes.draw do
  root "homepage#home"
  resources :pictures
end
