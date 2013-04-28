Wharfmembers::Application.routes.draw do
  devise_for :users

  resources :members do
    member do
      get :renew
      get :complete
    end
    collection do
      get :current
      get :pending
      get :expired
      get :mailing_list
      post :bulk_action
    end
    resources :memberships, only: :destroy
  end


  root :to => 'members#index'
end
