Rails.application.routes.draw do
  root to: 'comidas#index'
  get 'saludo', to: 'saludos#hola_mundo'
  get 'hello', to: 'saludos#hello_world'
  get 'hotdog', to: 'comidas#hotdog'
  get 'pizza', to: 'comidas#pizza'
  get 'hamburguesa', to: 'comidas#hamburguesa'
  get 'favorito', to: 'comidas#favorito'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
