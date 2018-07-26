Rails.application.routes.draw do
  root "static_pages#index"
  devise_for :users
  resources :user_courses do
    resources :user_subjects
  end
  namespace :admin do
    root "static_pages#index"
    resources :courses, only: [:index, :new, :create]
    resources :subjects
    resources :users, except: :show
  end
end
