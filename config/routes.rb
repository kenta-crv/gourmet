Rails.application.routes.draw do

  devise_for :admins

  root to: 'posts#index'

  get 'tops' => 'tops#index'
  get 'business' => 'tops#business'
  get 'cast' => 'tops#cast'
  get 'attract' => 'tops#attract'

  get 'contact' => 'contact#index'
  post 'confirm' =>'contact#confirm'
  post 'thanks' => 'contact#thanks'

  resources :posts do
    collection {post :import}
  end
end
