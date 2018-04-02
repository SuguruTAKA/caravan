Rails.application.routes.draw do
  devise_for :users,path_names: {sign_in: "login",sign_out: "logout"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blogs
  root to: 'blogs#index'

  get '/research'=>'blogs#research',as: 'research'
  get '/hobby'=>'blogs#hobby',as: 'hobby'

end
