Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "hello_world", to: 'application#hello_world'

  namespace :v1, defaults: { format: :json } do
    resources :memos
    resources :diaries
  end
  
end
