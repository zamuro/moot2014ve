Moot::Application.routes.draw do
  resources :rutas_surveys
  get "contact_form/new"
  get "contact_form/create"
  devise_for :admins
  devise_scope :admin do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end
  resources :admin, :controller => "admin"
  resources :pagos
  get "inicio/prohibido"
  get "inicio/index"
  get "inicio/unavailable"
  get "fichas_medicas/show"
  get "inicio/portada"
  get "inicio/success"
  resources :datos_usuarios
  resources :datos_registros
  resources :fichas_medicas
  resources :vacunas
  resources :tipo_sangres
  resources :padecimientos
  resources :alergies
  resources :enfermedades
  devise_for :usuarios
  root :to => "inicio#portada"
end
