defmodule TrelloAppWeb.HomeLive do
  use TrelloAppWeb, :live_view

  alias TrelloApp.Organization

  def mount(_params, _session, socket) do
    tasks = Organization.get_grouped_tasks()
    {:ok, assign(socket, tasks: tasks)}
  end

  def handle_event("move_task", %{"target" => target, "taskId" => taskId}, socket) do
    Organization.change_task_state(taskId, target)
    {:noreply, socket}
  end
end
