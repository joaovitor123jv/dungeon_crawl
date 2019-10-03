defmodule DungeonCrawl.CLI.BaseCommands do
  alias Mix.Shell.IO, as: Shell

  def display_options(options) do
    options
    |> Enum.with_index(1)
    |> Enum.each(fn {option, index} -> Shell.info("#{index} - #{option}") end)

    options
  end

  @doc """
  Generates a question, given options.

  ## Examples
      iex> DungeonCrawl.CLI.BaseCommands.generate_question(["one", "two"])
      "Qual opção você escolhe? [1, 2]"
  """
  def generate_question(options) do
    options = Enum.join(1..Enum.count(options), ", ")
    "Qual opção você escolhe? [#{options}]"
  end

  @doc """
  Parses the user input option

  ## Examples
      iex> DungeonCrawl.CLI.BaseCommands.parse_answer "2"
      1
  """
  def parse_answer(answer) do
    {option, _} = Integer.parse(answer)
    option - 1
  end
end
