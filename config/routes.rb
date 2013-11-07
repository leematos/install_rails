InstallRails::Application.routes.draw do

  mount Mercury::Engine => '/'
  resources :steps do
    member { put :mercury_update }
  end

  resources :sessions, only: :destroy
  resources :install_steps, path: 'steps'
  root 'welcome#index'

  get 'test', to: 'welcome#test'
  delete 'signout', to: 'sessions#destroy'

end
