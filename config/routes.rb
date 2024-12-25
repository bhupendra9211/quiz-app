Rails.application.routes.draw do
  devise_for :users

  root 'categories#index'

  # namespace :admin do
  #   resources :categories do
  #     resources :questions, shallow: true
  #   end
  # end
  namespace :admin do
    resources :categories do
      resources :questions, only: [:index, :new, :create]
    end
  end

  # resources :categories, only: [:index, :show] do
  #   resources :questions, only: [:show] do
  #     post :submit_answer, on: :member
  #   end
  # end
  resources :categories, only: [:index, :show] do
    post :submit_answers, on: :member
  end
  
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
end
