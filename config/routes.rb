Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'users/new'

  get 'users/create'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    # I've created a gif controller so I have a page I can secure later.
    # This is optional (as is the root to: above).
    get '/cool' => 'gif#cool'
    get '/sweet' => 'gif#sweet'

    # These routes will be for signup. The first renders a form in the browse, the second will
    # receive the form and create a user in our database using the data given to us by the user.
    get '/signup' => 'users#new'
    post '/users' => 'users#create'

    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    get '/signup' => 'users#new'
    post '/users' => 'users#create'
end
