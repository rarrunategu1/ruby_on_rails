Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root
  root 'posts#index', as: 'home'

  # other routes
  get 'about' => 'pages#about', as: 'about'

  # maps HTTP verbs to controller actions
  resources :posts
end
