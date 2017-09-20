Rails.application.routes.draw do
  get 'restaurants/all'

  get 'restaurants/get'

  post 'restaurants/create'

  get 'restaurants/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
