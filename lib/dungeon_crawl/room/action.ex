defmodule DungeonCrawl.Room.Action do
  alias DungeonCrawl.Room.Action
  defstruct label: nil, id: nil

  def forward, do: %Action{id: :forward, label: "Siga em frente"}
  def rest, do: %Action{id: :rest, label: "Descanse um pouco enquanto olha o ambiente"}
  def search, do: %Action{id: :search, label: "Procure na sala"}

  defimpl String.Chars do
    def to_string(action), do: action.label
  end
end

