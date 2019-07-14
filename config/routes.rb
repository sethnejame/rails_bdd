Rails.application.routes.draw do
  # devise_for :users

  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'articles/index'
  root controller: :articles, action: :index
  resources :articles do
    resources :comments
  end

end
