defmodule DungeonCrawl.Room do
  alias DungeonCrawl.Room
  import DungeonCrawl.Room.Action

  defstruct description: nil, actions: []
  
  def all, do: [
    %Room{
      description: "Você encontrou um local tranquilo. Aparentemente é seguro para uma sonequinha.",
      actions: [forward(), rest()]
    }
  ]
end
