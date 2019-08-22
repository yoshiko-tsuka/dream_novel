Rails.application.routes.draw do
  
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'hohoho', to: "pages#privacy"
  devise_for :users, :path => 'auth', controllers: {
    confirmations: 'auth/confirmations',
    sessions: 'auth/sessions',
    registrations: "auth/registrations",
    passwords: "auth/passwords",
  }
end
