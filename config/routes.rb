Rails.application.routes.draw do
  root to: 'patients#index'
  resources :patients, only: [:new, :create, :index, :show] do
    resources :admissions, only: [:new, :create, :show, :edit, :update] do
      resources :respectforms, only: [:new, :create, :show, :edit, :update, :print]
      resources :edls, only: [:new, :create, :show, :edit, :update]
    end
  end
  resources :consultants, only: [:new, :create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
