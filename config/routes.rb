Rails.application.routes.draw do
  get 'review/show'

  post 'review/create'

  get 'review/index'

  get 'cuisine/index'

  post 'cuisine/create'

  get 'restaurants/index'

  get 'restaurants/show'

  post 'restaurants/create'

  post 'restaurants/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
