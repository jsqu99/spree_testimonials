Spree::Core::Engine.add_routes do
  namespace :admin do
    resources :testimonials do
      member do
        get 'approve'
        get 'deny'
      end
    end
  end

  resources :testimonials
end
