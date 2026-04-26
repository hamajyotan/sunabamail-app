Sunabamail::Engine.routes.draw do
  namespace :messages do
    resource :all, only: %i[destroy]
  end
  resources :messages, only: %i[index show destroy] do
    scope module: :messages do
      resources :attachments, only: %i[show]
      resource :html, only: %i[show]
      resource :raw, only: %i[show]
      resource :source, only: %i[show]
      resource :text, only: %i[show]
    end
  end

  root to: redirect("messages")
end
