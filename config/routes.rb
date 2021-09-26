Rails.application.routes.draw do

  devise_for :users, path: '', path_names:{
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :users do
    resources :accounts do
      resources :account_transactions
    end
  end

  get '/current_user', to: 'current_user#index'
  get 'private/test'
end
