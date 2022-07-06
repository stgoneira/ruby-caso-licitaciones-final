Rails.application.routes.draw do
  resources :categorias
  devise_for :licitantes
  devise_for :empresas
  devise_for :administradores
  root 'sites#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
