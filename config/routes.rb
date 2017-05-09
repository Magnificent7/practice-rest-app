Rails.application.routes.draw do
  get "/messages" => "messages#index"

  get "/messages/new" => "messages#new"

  post "/messages" => "messages#create"

  get "/messages/:id" => "messages#show"

  get "/messages/:id/edit" => "messages#edit"

  patch "/messages/:id" => "messages#update"

  delete "/messages/:id" => "messages#destroy"
end
