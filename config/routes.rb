Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#top'

  namespace :v1, defaults: { format: :json } do
    resources :memos
    resources :diaries
    mount_devise_token_auth_for 'User', at: 'auth'
  end

end
