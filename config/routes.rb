Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: %i[index create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
