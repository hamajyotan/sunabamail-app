Sunabamail::Engine.routes.draw do
  resources :messages, only: %i[index show destroy]
  root to: redirect("messages")
end
