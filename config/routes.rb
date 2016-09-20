Rails.application.routes.draw do
  get 'queries/last_update', to: "queries#last_update"

  get 'queries/new_participants/:since', to: "queries#new_participants"

  get 'queries/updated_data/:since', to: "queries#updated_data"

  get 'queries/has_new_data/:since', to: "queries#has_new_data"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
