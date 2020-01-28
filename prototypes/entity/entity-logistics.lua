require("circuit-connector-generated-definitions")

data:extend(
    {
        {
            type = "roboport",
            name = "roboport-mk2",
            icon = "__FactorioExtended-Plus-Logistics__/graphics/icons/roboport-mk2.png",
            icon_size = 32,
            flags = {"placeable-player", "player-creation"},
            minable = {mining_time = 0.1, result = "roboport-mk2"},
            max_health = 750,
            corpse = "big-remnants",
            collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
            selection_box = {{-2, -2}, {2, 2}},
            dying_explosion = "medium-explosion",
            fast_replaceable_group = "roboport",
            energy_source = {
                type = "electric",
                usage_priority = "secondary-input",
                input_flow_limit = "15MW",
                buffer_capacity = "200MJ"
            },
            recharge_minimum = "80MJ",
            energy_usage = "100kW",
            -- per one charge slot
            charging_energy = "2000kW",
            logistics_radius = 37.5,
            construction_radius = 75,
            charge_approach_distance = 5,
            robot_slots_count = 7,
            material_slots_count = 7,
            stationing_offset = {0, 0},
            charging_offsets = {
                {-1.5, -0.5},
                {1.5, -0.5},
                {1.5, 1.5},
                {-1.5, 1.5},
                {-2.5, -1.5},
                {2.5, -1.5}
            },
            base = {
                layers = {
                    {
                        filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/roboport-base-mk2.png",
                        width = 143,
                        height = 135,
                        shift = {0.5, 0.25},
                        hr_version = {
                            filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/hr-roboport-base-mk2.png",
                            width = 228,
                            height = 277,
                            shift = util.by_pixel(2, 7.75),
                            scale = 0.5
                        }
                    },
                    {
                        filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
                        width = 147,
                        height = 101,
                        draw_as_shadow = true,
                        shift = util.by_pixel(28.5, 19.25),
                        hr_version = {
                            filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
                            width = 294,
                            height = 201,
                            draw_as_shadow = true,
                            shift = util.by_pixel(28.5, 19.25),
                            scale = 0.5
                        }
                    }
                }
            },
            base_patch = {
                filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/roboport-base-mk2-patch.png",
                priority = "medium",
                width = 69,
                height = 50,
                frame_count = 1,
                shift = {0.03125, 0.203125},
                hr_version = {
                    filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/hr-roboport-base-patch-mk2.png",
                    priority = "medium",
                    width = 138,
                    height = 100,
                    frame_count = 1,
                    shift = util.by_pixel(1.5, 5),
                    scale = 0.5
                }
            },
            base_animation = {
                filename = "__base__/graphics/entity/roboport/roboport-base-animation.png",
                priority = "medium",
                width = 42,
                height = 31,
                frame_count = 8,
                animation_speed = 0.5,
                shift = {-0.5315, -1.9375},
                hr_version = {
                    filename = "__base__/graphics/entity/roboport/hr-roboport-base-animation.png",
                    priority = "medium",
                    width = 83,
                    height = 59,
                    frame_count = 8,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-17.75, -61.25),
                    scale = 0.5
                }
            },
            door_animation_up = {
                filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/roboport-door-up-mk2.png",
                priority = "medium",
                width = 52,
                height = 20,
                frame_count = 16,
                shift = {0.015625, -0.890625},
                hr_version = {
                    filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/hr-roboport-door-up-mk2.png",
                    priority = "medium",
                    width = 97,
                    height = 38,
                    frame_count = 16,
                    shift = util.by_pixel(-0.25, -29.5),
                    scale = 0.5
                }
            },
            door_animation_down = {
                filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/roboport-door-down-mk2.png",
                priority = "medium",
                width = 52,
                height = 22,
                frame_count = 16,
                shift = {0.015625, -0.234375},
                hr_version = {
                    filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/hr-roboport-door-down-mk2.png",
                    priority = "medium",
                    width = 97,
                    height = 41,
                    frame_count = 16,
                    shift = util.by_pixel(-0.25, -9.75),
                    scale = 0.5
                }
            },
            recharging_animation = {
                filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
                priority = "high",
                width = 37,
                height = 35,
                frame_count = 16,
                scale = 1.5,
                animation_speed = 0.5
            },
            vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
            working_sound = {
                sound = {filename = "__base__/sound/roboport-working.ogg", volume = 0.6},
                max_sounds_per_type = 3,
                audible_distance_modifier = 0.5,
                probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
            },
            recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
            request_to_open_door_timeout = 15,
            spawn_and_station_height = -0.1,
            draw_logistic_radius_visualization = true,
            draw_construction_radius_visualization = true,
            open_door_trigger_effect = {
                {
                    type = "play-sound",
                    sound = {filename = "__base__/sound/roboport-door.ogg", volume = 1.2}
                }
            },
            close_door_trigger_effect = {
                {
                    type = "play-sound",
                    sound = {filename = "__base__/sound/roboport-door.ogg", volume = 0.75}
                }
            },
            circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
            circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
            circuit_wire_max_distance = default_circuit_wire_max_distance,
            default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
            default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
            default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
            default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
        },
        {
            type = "roboport",
            name = "roboport-mk3",
            icon = "__FactorioExtended-Plus-Logistics__/graphics/icons/roboport-mk3.png",
            icon_size = 32,
            flags = {"placeable-player", "player-creation"},
            minable = {mining_time = 0.1, result = "roboport-mk3"},
            max_health = 1000,
            corpse = "big-remnants",
            collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
            selection_box = {{-2, -2}, {2, 2}},
            dying_explosion = "medium-explosion",
            fast_replaceable_group = "roboport",
            energy_source = {
                type = "electric",
                usage_priority = "secondary-input",
                input_flow_limit = "27MW",
                buffer_capacity = "400MJ"
            },
            recharge_minimum = "120MJ",
            energy_usage = "150kW",
            -- per one charge slot
            charging_energy = "3000kW",
            logistics_radius = 50,
            construction_radius = 100,
            charge_approach_distance = 7,
            robot_slots_count = 7,
            material_slots_count = 7,
            stationing_offset = {0, 0},
            charging_offsets = {
                {-1.5, -0.5},
                {1.5, -0.5},
                {1.5, 1.5},
                {-1.5, 1.5},
                {-2.5, -1.5},
                {2.5, -1.5},
                {2.5, 2.5},
                {-2.5, 2.5}
            },
            base = {
                layers = {
                    {
                        filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/roboport-base-mk3.png",
                        width = 143,
                        height = 135,
                        shift = {0.5, 0.25},
                        hr_version = {
                            filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/hr-roboport-base-mk3.png",
                            width = 228,
                            height = 277,
                            shift = util.by_pixel(2, 7.75),
                            scale = 0.5
                        }
                    },
                    {
                        filename = "__base__/graphics/entity/roboport/roboport-shadow.png",
                        width = 147,
                        height = 101,
                        draw_as_shadow = true,
                        shift = util.by_pixel(28.5, 19.25),
                        hr_version = {
                            filename = "__base__/graphics/entity/roboport/hr-roboport-shadow.png",
                            width = 294,
                            height = 201,
                            draw_as_shadow = true,
                            shift = util.by_pixel(28.5, 19.25),
                            scale = 0.5
                        }
                    }
                }
            },
            base_patch = {
                filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/roboport-base-mk3-patch.png",
                priority = "medium",
                width = 69,
                height = 50,
                frame_count = 1,
                shift = {0.03125, 0.203125},
                hr_version = {
                    filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/hr-roboport-base-patch-mk3.png",
                    priority = "medium",
                    width = 138,
                    height = 100,
                    frame_count = 1,
                    shift = util.by_pixel(1.5, 5),
                    scale = 0.5
                }
            },
            base_animation = {
                filename = "__base__/graphics/entity/roboport/roboport-base-animation.png",
                priority = "medium",
                width = 42,
                height = 31,
                frame_count = 8,
                animation_speed = 0.5,
                shift = {-0.5315, -1.9375},
                hr_version = {
                    filename = "__base__/graphics/entity/roboport/hr-roboport-base-animation.png",
                    priority = "medium",
                    width = 83,
                    height = 59,
                    frame_count = 8,
                    animation_speed = 0.5,
                    shift = util.by_pixel(-17.75, -61.25),
                    scale = 0.5
                }
            },
            door_animation_up = {
                filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/roboport-door-up-mk3.png",
                priority = "medium",
                width = 52,
                height = 20,
                frame_count = 16,
                shift = {0.015625, -0.890625},
                hr_version = {
                    filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/hr-roboport-door-up-mk3.png",
                    priority = "medium",
                    width = 97,
                    height = 38,
                    frame_count = 16,
                    shift = util.by_pixel(-0.25, -29.5),
                    scale = 0.5
                }
            },
            door_animation_down = {
                filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/roboport-door-down-mk3.png",
                priority = "medium",
                width = 52,
                height = 22,
                frame_count = 16,
                shift = {0.015625, -0.234375},
                hr_version = {
                    filename = "__FactorioExtended-Plus-Logistics__/graphics/entity/roboport/hr-roboport-door-down-mk3.png",
                    priority = "medium",
                    width = 97,
                    height = 41,
                    frame_count = 16,
                    shift = util.by_pixel(-0.25, -9.75),
                    scale = 0.5
                }
            },
            recharging_animation = {
                filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
                priority = "high",
                width = 37,
                height = 35,
                frame_count = 16,
                scale = 1.5,
                animation_speed = 0.5
            },
            vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
            working_sound = {
                sound = {filename = "__base__/sound/roboport-working.ogg", volume = 0.6},
                max_sounds_per_type = 3,
                audible_distance_modifier = 0.5,
                probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
            },
            recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
            request_to_open_door_timeout = 15,
            spawn_and_station_height = -0.1,
            draw_logistic_radius_visualization = true,
            draw_construction_radius_visualization = true,
            open_door_trigger_effect = {
                {
                    type = "play-sound",
                    sound = {filename = "__base__/sound/roboport-door.ogg", volume = 1.2}
                }
            },
            close_door_trigger_effect = {
                {
                    type = "play-sound",
                    sound = {filename = "__base__/sound/roboport-door.ogg", volume = 0.75}
                }
            },
            circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
            circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
            circuit_wire_max_distance = default_circuit_wire_max_distance,
            default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
            default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
            default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
            default_total_construction_output_signal = {type = "virtual", name = "signal-T"}
        }
    }
)
