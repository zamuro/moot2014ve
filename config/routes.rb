Moot::Application.routes.draw do
  get "reports/index"
  get "reports/pagos"
  root :to => "inicio#portada"
  get "reportes/pagos"
  get "inicio/prohibido"
  get "inicio/index"
  get "inicio/unavailable"
  get "fichas_medicas/show"
  get "inicio/portada"
  get "inicio/success"
  get "inicio/mantenimiento"
  resources :rutas_surveys
  resources :pagos
  resources :datos_usuarios
  resources :datos_registros
  resources :fichas_medicas
  resources :vacunas
  resources :padecimientos
  resources :alergies
  resources :enfermedades
    get "usuarios/create", to: "devise/registrations#new"
  devise_for :usuarios, :controllers => {:registrations => "usuarios"}
  devise_scope :usuario do
    get "usuarios/sign_out", to: "devise/sessions#destroy"
  end
end
