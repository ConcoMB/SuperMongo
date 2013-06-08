Supermongo::Application.routes.draw do
    root :to => "city#index"
    resources :superhero
    resources :city
end
