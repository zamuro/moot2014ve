Moot::Application.routes.draw do
  root :to => "inicio#portada"
  get "postulaciones", to: "adults#new"
  get "adults/index"
  get "reports/index"
  get "reports/pagos"
  get "reportes/pagos"
  get "inicio/prohibido"
  get "inicio/index"
  get "inicio/unavailable"
  get "inicio/consolidado"
  get "fichas_medicas/show"
  get "inicio/portada"
  get "inicio/success"
  get "pagos/penalidades"
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
  resources :reports
  resources :adults
    get "usuarios/create", to: "devise/registrations#new"
  devise_for :usuarios, :controllers => {:registrations => "usuarios"}
  devise_scope :usuario do
    get "usuarios/sign_out", to: "devise/sessions#destroy"
  end
end
