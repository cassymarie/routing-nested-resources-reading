Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show] do
    # nested resource for posts
    resources :posts, only: [:show, :index]
  end

  # adding this to the nested portion of :authors
  # resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

  # Long way to do a nest route
  # get 'authors/:id/posts', to: 'authors#posts_index'
  # get 'authors/:id/posts/:post_id', to: 'authors#post'

end
