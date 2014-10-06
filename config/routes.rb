Moot::Application.routes.draw do
  resources :rutas_surveys
  resources :pagos
  get "inicio/prohibido"
  get "inicio/index"
  get "inicio/unavailable"
  get "fichas_medicas/show"
  get "inicio/portada"
  get "inicio/success"
  get "inicio/mantenimiento"
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
  devise_scope :usuario do
    get "usuarios/sign_out", to: "devise/sessions#destroy"
  end
end
