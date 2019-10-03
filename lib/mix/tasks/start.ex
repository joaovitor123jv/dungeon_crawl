defmodule Mix.Tasks.Start do
  @moduledoc """
  Starts DungeonCrawl Game.
  """
  use Mix.Task


  @doc """
  Start task, that starts the game.

  ## Examples

      iex> Mix.Tasks.Start.run(:void)
      :ok

  """
  def run(_), do: DungeonCrawl.CLI.Main.start_game()
end
