Sunabamail::Engine.routes.draw do
  namespace :messages do
    resource :all, only: %i[destroy]
  end
  resources :messages, only: %i[index show destroy]
  root to: redirect("messages")
end
