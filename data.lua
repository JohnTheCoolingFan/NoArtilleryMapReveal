data.raw["recipe"]["artillery-shell"].ingredients =
    {
      {"explosive-cannon-shell", 4},
      {"explosives", 8}
    }
data.raw["artillery-projectile"]["artillery-projectile"].reveal_map = false
-- TODO: make this procedural
data.raw['artillery-projectile']['artillery-projectile'].action.action_delivery.target_effects[4] = nil
