defmodule TrelloApp.Organization.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias TrelloApp.Organization.{ Task, User }

  schema "users" do
    field :first_name
    field :last_name

    has_many :task, Task
    timestamps()
  end

  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name])
  end
end
