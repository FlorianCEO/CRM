Rails.application.routes.draw do
  resources :entreprises do
    resources :prospects
  end
  root "entreprises#index"
  resources :prospects
end
