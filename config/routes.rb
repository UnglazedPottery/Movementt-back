Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    default_url_options :host => 'localhost:3000'


    resources(:users)
    resources(:posts)
    resources(:tags)

    post('/login', to: 'authentication#login')
    get('/currentuser', to: 'application#profile')
    get('/logout', to: 'users#destroy')

    get '*path', to: "application#react_app"
end
