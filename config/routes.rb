Rails.application.routes.draw do
  # root to: 'articles#index' - why is this needed!!?!?
  resources :articles do
    resources :comments
  end
  resources :tags
end
