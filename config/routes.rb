Rails.application.routes.draw do
  get 'users/singup'
  get 'users/register'
  
  get 'users/login'
  get 'users/logining'

  get 'users/edit'
  get 'users/update'
  
  get 'users/logout'
  get 'users/getout'

  get '/' => 'posts#index' # get이라는 방식으로 들어 왔을 때 posts의 index action으로 처리하겠다.
  get '/posts/new' => 'posts#new'
  get '/posts/create' => 'posts#create'
  get '/posts/show/:id' => 'posts#show'
  get '/posts/edit/:id' => 'posts#edit'
  get '/posts/update/:id' => 'posts#update'
  get '/posts/destroy/:id' => 'posts#destroy'
end
