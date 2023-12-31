Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root "pages#index"
end
