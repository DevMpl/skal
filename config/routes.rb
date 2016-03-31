Skal::Engine.routes.draw do
  resources :events
  get 'event/preview/:id' => 'events#preview', as: :event_preview
  
  resources :event_categories
  
end
