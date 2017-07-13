Rails.application.routes.draw do
  root 'url#index' 
 
  get 'url/:id' => 'url#show', as: 'url_show'

  post 'url/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
