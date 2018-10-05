data.raw["recipe"]["artillery-shell"].ingredients =
    {
      {"explosive-cannon-shell", 4},
      {"explosives", 8}
    }
data.raw["artillery-projectile"]["artillery-projectile"].reveal_map = false
data.raw["artillery-projectile"]["artillery-projectile"].action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "nested-result",
            action =
            {
              type = "area",
              radius = 4.0,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 500 , type = "physical"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 500 , type = "explosion"}
                  },
                }
              }
            }
          },
          {
            type = "create-trivial-smoke",
            smoke_name = "artillery-smoke",
            initial_height = 0,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.005,
            offset_deviation = {{-4, -4}, {4, 4}},
            max_radius = 3.5,
            repeat_count = 4 * 4 * 15
          },
          {
            type = "create-entity",
            entity_name = "big-artillery-explosion"
          },
        }
      }
    }