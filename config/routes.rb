Rails.application.routes.draw do

  devise_for :admins
  
  root to: 'posts#index'

  get 'contact' => 'contact#index'
  post 'confirm' =>'contact#confirm'
  post 'thanks' => 'contact#thanks'

  resources :posts
end
