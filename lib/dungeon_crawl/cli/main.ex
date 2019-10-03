defmodule DungeonCrawl.CLI.Main do
  @moduledoc """
  Main control of DungeonCrawl's functions.
  """
  alias Mix.Shell.IO, as: Shell

  @doc """
  Start the game.

  ## Examples

      iex> DungeonCrawl.CLI.Main.start_game()
      :ok

  """
  def start_game do
    welcome_message()
    Shell.prompt("Pressione 'enter' para continuar")
    hero_choice()
    crawl(DungeonCrawl.Room.all())

    :ok
  end

  defp welcome_message do
    Shell.info("=== Dungeon Crawl ===")
    Shell.info("Você acordou numa caverna repleta de monstros.")
    Shell.info("Agora você precisa sobreviver, e encontrar a saída.")
  end

  defp hero_choice do
    DungeonCrawl.CLI.HeroChoice.start()
  end

  defp crawl(rooms) do
    Shell.info("Você anda até encontrar a próxima sala.")
    Shell.prompt("Pressione 'enter' para continuar")
    Shell.cmd("clear")

    rooms
    |> Enum.random
    |> DungeonCrawl.CLI.RoomActionsChoice.start
  end
end
