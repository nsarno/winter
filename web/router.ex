defmodule Winter.Router do
  use Winter.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Winter do
    pipe_through :api
    resources "/auth_token", AuthTokenController, only: [:create]
    resources "/users", UserController
    resources "/projects", ProjectController
    resources "/targets", TargetController
  end
end
