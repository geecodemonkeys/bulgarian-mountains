Rails.application.routes.draw do
  get 'map/index'
  get  'map/search_poi'
  post 'map/upload'

  root 'map#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
