defmodule DungeonCrawlTest.CLI.BaseCommandsTest do
  use ExUnit.Case
  doctest DungeonCrawl.CLI.BaseCommands

  test "correctly parses answers" do
    assert DungeonCrawl.CLI.BaseCommands.parse_answer("2\n") == 1
  end
end
