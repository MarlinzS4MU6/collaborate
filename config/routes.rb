Rails.application.routes.draw do
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
    get 'login', to: 'devise/sessions#new'
  end
devise_for :users, :controllers => {:registrations => "registrations"}

root to: 'pages#index'
end
