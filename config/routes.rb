Rails.application.routes.draw do
  root 'sites#index'  

  devise_for :licitantes
  devise_for :empresas
  devise_for :administradores  

  get "/licitacion/:id", to: "sites#licitacion", as: :licitacion 
  post "/postular/licitacion/:id", to: "sites#postular", as: :postular 
end
