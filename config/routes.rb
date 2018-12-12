Rails.application.routes.draw do
  get 'units/index'
  get 'units/import'
  post 'units/parse'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
