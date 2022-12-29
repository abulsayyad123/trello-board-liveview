defmodule TrelloApp.Organization do
  alias TrelloApp.Repo
  alias TrelloApp.Organization.Task

  def get_grouped_tasks() do
    Task
    |> Repo.all()
    |> Repo.preload(:user)
    |> Enum.group_by(fn %{state: state} -> state end)
  end

  def change_task_state(task_id, transition_state) do
    Task
    |> Repo.get(task_id)
    |> Task.changeset(%{state: transition_state})
    |> Repo.update
  end
end
