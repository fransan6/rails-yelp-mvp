Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants, only: %i[index new show create]
end
