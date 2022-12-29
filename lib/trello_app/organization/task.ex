defmodule TrelloApp.Organization.Task do
  use Ecto.Schema
  import Ecto.Changeset

  alias TrelloApp.Organization.{ Task, User }

  schema "tasks" do
    field :title, :string
    field :description, :string
    field :state, :string

    belongs_to :user, User

    timestamps()
  end

  def changeset(%Task{} = task, attrs) do
    task
    |> cast(attrs, [:title, :description, :state, :user_id])
  end
end
