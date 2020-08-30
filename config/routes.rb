Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :avengers do
    resources :skills
  end
  resources :villains do
    resources :attacks
  end
end
