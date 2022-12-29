defmodule TrelloApp.Repo.Migrations.CreateTask do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :title, :string, null: false
      add :description, :text
      add :user_id, references(:users)
      add :state, :string, null: false

      timestamps()
    end
  end
end
