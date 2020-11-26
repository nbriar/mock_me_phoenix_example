defmodule MockMePhoenixExampleWeb.Router do
  use MockMePhoenixExampleWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MockMePhoenixExampleWeb do
    pipe_through :api
  end
end
