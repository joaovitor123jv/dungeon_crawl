defmodule DungeonCrawl.Character do
  defstruct name: nil, # An Unique character name
    description: nil, # A long description that explains the character's advantages and disavantages
    hit_points: 0, # Current HP
    max_hit_points: 0, # The maximum HP a character can have
    attack_description: nil, # The text that explains how a character attacks another
    damage_range: nil # The minumum and maximum damage a character can cause when attacking

  defimpl String.Chars do
    def to_string(character), do: character.name
  end
end

