defmodule TrelloApp.Repo do
  use Ecto.Repo,
    otp_app: :trello_app,
    adapter: Ecto.Adapters.Postgres
end
