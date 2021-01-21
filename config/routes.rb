Rails.application.routes.draw do
  scope module: :end_users do
    devise_for :end_users, controllers: {
        sessions: 'end_users/sessions',
        registrations: 'end_users/registrations',
        passwords: 'end_users/passwords'
    }
    root to: "home#top"
    get "/about" => "home#about"
    get '/auth/:provider/callback', to: 'twitters#create', as: "twitter_login_end_user"
    get '/logout', to: 'twitters#destroy'
    get 'musics/search'
    resources :musics, only:[:show] do
      resource :favorites, only: [:create, :destroy]
    end
  end
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
