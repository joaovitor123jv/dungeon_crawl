defmodule DungeonCrawl.Heroes do
  alias DungeonCrawl.Character

  def all, do: [ 
    %Character{
      name: "Cavaleiro",
      description: "O Cavaleiro tem uma defesa forte e um dano considerável.",
      hit_points: 18,
      max_hit_points: 18,
      damage_range: 4..5,
      attack_description: "uma espada"
    },
    %Character{
      name: "Bruxo",
      description: "O Bruxo tem um ataque forte, mas pouca vida.",
      hit_points: 8,
      max_hit_points: 8,
      damage_range: 6..10,
      attack_description: "uma bola de fogo"
    },
    %Character{
      name: "Mago",
      description: "O Mago tem um ataque ainda mais forte, mas ainda menos vida.",
      hit_points: 6,
      max_hit_points: 8,
      damage_range: 6..15,
      attack_description: "um raio de fogo"
    },
    %Character{
      name: "Ladino",
      description: "O Ladino tem uma alta variabilidade de dano em seus ataques.",
      hit_points: 12,
      max_hit_points: 12,
      damage_range: 1..12,
      attack_description: "uma adaga"
    }
  ]
end
