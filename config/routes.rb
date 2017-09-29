Rails.application.routes.draw do
  get 'todos/create'

  resources :tasks, only: [:index, :show] do
    resources :todos, only: [:create, :destroy]
  end
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tasks#index'
end
