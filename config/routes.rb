Rails.application.routes.draw do
  get 'home/home'
  get 'static_pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'home#home' # Route pour la page d'accueil
  get 'contact', to: 'home#contact' # Route pour la page de contact
  get 'team', to: 'home#team' # Route pour la page de l'équipe
  
  get 'gossips/:id', to: 'home#gossips_show', as: 'gossips_show' # Route pour la page d'un potin

  
end
