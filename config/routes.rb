Rails.application.routes.draw do
  get '/top', to: 'home#index' #Heroku用設定 
  
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # devise_for :users, controller =>{
  #   :confirmations => 'users/confirmations',
  #   :registrations => 'users/registrations',
  #   :sessions => 'users/sessions',
  #   :passwords => 'users/passwords'
  # }

  
  resources :posts
  root to: 'home#index' #Herokuのトップページを指定




  # root 'home#index'
  get 'home/index'
  
  # get 'home/userpage' => 'questions#userpage'
  post '/home/userpage' => 'questions#create'
  get '/home/userpage'=> 'questions#create'
  get 'home/questiontop' => 'questions#questiontop'
  # resources :questions
  get '/start_questions' => 'start_questions#index'

  resources :start_questions 


# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
