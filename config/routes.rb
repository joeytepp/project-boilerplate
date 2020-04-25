Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphqlPlayground::Rails::Engine, at: "/playground", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
