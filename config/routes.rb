Rails.application.routes.draw do
  resources :consulta
  get 'challenge/index'
  root :to =>'challenge#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
