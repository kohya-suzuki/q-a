Rails.application.routes.draw do
  
  devise_for :users
  root 'home#index'
  get 'home/index'
  
  
  # get 'home/userpage' => 'questions#userpage'
  post '/home/userpage' => 'questions#create'
  get '/home/userpage'=> 'questions#create'

  get 'home/questiontop' => 'questions#questiontop'
  # resources :questions


  get '/start_questions' => 'start_questions#index'

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
