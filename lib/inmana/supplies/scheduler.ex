defmodule Inmana.Supplies.Scheduler do
  use GenServer

  alias Inmana.Supplies.ExpirationNotification

  # CLIENT BEHAVIORS

  def start_link(_state) do
    GenServer.start_link(__MODULE__, %{})
  end

  # SERVER BEHAVIORS

  @impl true
  def init(state \\ %{}) do
    schedule_notification()
    {:ok, state}
  end

  @impl true
  def handle_info(:generate, state) do
    ExpirationNotification.send()

    schedule_notification()

    {:noreply, state}
  end

  defp schedule_notification do
    ten_secs = 1000 * 10
    # one_week = 1000 * 60 * 60 * 24 * 7
    Process.send_after(self(), :generate, ten_secs)
  end
end
