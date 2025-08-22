--- Map Settings
local ms = data.raw['map-settings']['map-settings']
ms.path_finder.fwd2bwd_ratio = 2 -- default 5
ms.path_finder.goal_pressure_ratio = 3 -- default 2
ms.path_finder.general_entity_collision_penalty = 5 -- default 10
ms.path_finder.general_entity_subsequent_collision_penalty = 1 -- default 3
ms.path_finder.short_cache_size = 30 -- default 5
ms.path_finder.long_cache_size = 50 -- default 25
ms.path_finder.short_cache_min_cacheable_distance = 10 -- default 10
ms.path_finder.long_cache_min_cacheable_distance = 60 -- default 30
ms.path_finder.short_cache_min_algo_steps_to_cache = 50 -- default 50
ms.path_finder.max_clients_to_accept_any_new_request = 4 -- default 10
ms.path_finder.max_clients_to_accept_short_new_request = 150 -- default 100
ms.path_finder.start_to_goal_cost_multiplier_to_terminate_path_find = 10000 -- default 2000

local presets = data.raw['map-gen-presets']['default']
presets['f15-segmented'] = {
    order = 'r-segmented',
    basic_settings = {
        property_expression_names = {
            ['segmentation_multiplier'] = 0.1,
        },
        --[[
        autoplace_controls = {
            -- Resources
            ['coal']          = { frequency = 6.5,  size = 0.34,  richness = 0.24  },
            ['copper-ore']    = { frequency = 8.05, size = 0.352, richness = 0.35  },
            ['iron-ore']      = { frequency = 8.5,  size = 0.8,   richness = 0.23  },
            ['stone']         = { frequency = 6,    size = 0.385, richness = 0.25  },
            ['uranium-ore']   = { frequency = 2.2,  size = 1,     richness = 1     },
            ['tungsten-ore']  = { frequency = 2.2,  size = 1,     richness = 1     },
            ['holmium-ore']   = { frequency = 2.2,  size = 1,     richness = 1     },
            ['calcite']       = { frequency = 2.2,  size = 1,     richness = 1     },
            -- Fluids
            ['crude-oil']     = { frequency = 8,    size = 1.4,   richness = 0.45  },
            ['lithium-brine'] = { frequency = 1,    size = 1.0,   richness = 1.0   },
            ['fluorine-vent'] = { frequency = 1,    size = 1.0,   richness = 1.0   },
            -- Other
            ['enemy-base']    = { frequency = 1,    size = 1,     richness = 1     },
            ['trees']         = { frequency = 0.65, size = 0.04,  richness = 0.002 },
            ['water']         = { frequency = 10,   size = 0.3,   richness = 0.1   },
        },
        ]]
        autoplace_controls = {
            -- Resources
            ['coal']          = { frequency = 6.0, size = 1/3, richness = 1/4 },
            ['copper-ore']    = { frequency = 6.0, size = 3/4, richness = 1/4 },
            ['iron-ore']      = { frequency = 6.0, size = 3/4, richness = 1/4 },
            ['stone']         = { frequency = 6.0, size = 1/3, richness = 1/4 },
            ['uranium-ore']   = { frequency = 2.0, size = 1.0, richness = 1/2 },
            ['tungsten-ore']  = { frequency = 2.0, size = 1.0, richness = 1/2 },
            ['holmium-ore']   = { frequency = 2.0, size = 1.0, richness = 1/2 },
            ['calcite']       = { frequency = 2.0, size = 1.0, richness = 1/2 },
            -- Fluids
            ['crude-oil']     = { frequency = 6.0, size = 1.5, richness = 1/2 },
            ['lithium-brine'] = { frequency = 1.0, size = 1.0, richness = 1.0 },
            ['fluorine-vent'] = { frequency = 1.0, size = 1.0, richness = 1.0 },
            -- Other
            ['enemy-base']    = { frequency = 1.0, size = 1.0, richness = 1.0 },
            ['trees']         = { frequency = 3/4, size = 1/6, richness = 1/6 },
            ['water']         = { frequency = 6.0, size = 1/3, richness = 1/6 },
        },
        cliff_settings = { cliff_elevation_interval = 0, cliff_elevation_0 = 0 },
        starting_area = 3.0,
    },
    advanced_settings = {
        enemy_evolution = { time_factor = 0.000002 },
        enemy_expansion = { enabled = false },
    },
}
presets['f15-default'] = {
    order = 'r-default',
    basic_settings = {
        property_expression_names = {
            ['segmentation_multiplier'] = 0.1,
        },
        autoplace_controls = {
            -- Resources
            ['coal']          = { frequency = 4/3, size = 3/4, richness = 3/4 },
            ['copper-ore']    = { frequency = 1.5, size = 3/4, richness = 3/4 },
            ['iron-ore']      = { frequency = 1.5, size = 1.5, richness = 3/4 },
            ['stone']         = { frequency = 1.0, size = 3/4, richness = 1/2 },
            ['uranium-ore']   = { frequency = 1/2, size = 3/4, richness = 1/2 },
            ['tungsten-ore']  = { frequency = 1/2, size = 3/4, richness = 1/2 },
            ['holmium-ore']   = { frequency = 1/2, size = 3/4, richness = 1/2 },
            ['calcite']       = { frequency = 1/2, size = 3/4, richness = 1/2 },
            -- Fluids
            ['crude-oil']     = { frequency = 1.0, size = 1.0, richness = 1.0 },
            ['lithium-brine'] = { frequency = 1.0, size = 1.0, richness = 1.0 },
            ['fluorine-vent'] = { frequency = 1.0, size = 1.0, richness = 1.0 },
            -- Other
            ['enemy-base']    = { frequency = 1.0, size = 1.0, richness = 1.0 },
            ['trees']         = { frequency = 3/4, size = 1/6, richness = 1/6 },
            ['water']         = { frequency = 6.0, size = 1/3, richness = 1/6 },
        },
        cliff_settings = { cliff_elevation_interval = 0, cliff_elevation_0 = 0 },
        starting_area = 3.0,
    },
    advanced_settings = {
        enemy_evolution = { time_factor = 0.000002 },
        enemy_expansion = { enabled = false },
    },
}
presets['f15-rail-world'] = {
    order = 'r-rail-world',
    basic_settings = {
        property_expression_names = {
            ['segmentation_multiplier'] = 0.1,
        },
        autoplace_controls = {
            -- Resources
            ['coal']          = { frequency = 1/3, size = 3.0, richness = 1.0 },
            ['copper-ore']    = { frequency = 1/3, size = 3.0, richness = 1.0 },
            ['iron-ore']      = { frequency = 1/3, size = 3.0, richness = 1.0 },
            ['stone']         = { frequency = 1/3, size = 3.0, richness = 1.0 },
            ['uranium-ore']   = { frequency = 1/3, size = 3.0, richness = 1.0 },
            ['tungsten-ore']  = { frequency = 1/3, size = 3.0, richness = 1.0 },
            ['holmium-ore']   = { frequency = 1/3, size = 3.0, richness = 1.0 },
            ['calcite']       = { frequency = 1/3, size = 3.0, richness = 1.0 },
            -- Fluids
            ['crude-oil']     = { frequency = 1/3, size = 3.0, richness = 1.0 },
            ['lithium-brine'] = { frequency = 1/3, size = 3.0, richness = 1.0 },
            ['fluorine-vent'] = { frequency = 1/3, size = 3.0, richness = 1.0 },
            -- Other
            ['enemy-base']    = { frequency = 1.0, size = 1.0, richness = 1.0 },
            ['trees']         = { frequency = 1.0, size = 1.0, richness = 1.0 },
            ['water']         = { frequency = 1/2, size = 1.5, richness = 2.0 },
        },
        cliff_settings = { cliff_elevation_interval = 0, cliff_elevation_0 = 0 },
    },
    advanced_settings = {
        enemy_evolution = { time_factor = 0.000002 },
        enemy_expansion = { enabled = false },
    },
}
presets['f15-ribbon-world'] = {
    order = 'r-ribbon-world',
    basic_settings = {
        property_expression_names = {
            ['segmentation_multiplier'] = 0.1,
        },
        autoplace_controls = {
            -- Resources
            ['coal']          = { frequency = 3.0, size = 1/2, richness = 2.0 },
            ['copper-ore']    = { frequency = 3.0, size = 1/2, richness = 2.0 },
            ['iron-ore']      = { frequency = 3.0, size = 1/2, richness = 2.0 },
            ['stone']         = { frequency = 3.0, size = 1/2, richness = 2.0 },
            ['uranium-ore']   = { frequency = 3.0, size = 1/2, richness = 2.0 },
            ['tungsten-ore']  = { frequency = 3.0, size = 1/2, richness = 2.0 },
            ['holmium-ore']   = { frequency = 3.0, size = 1/2, richness = 2.0 },
            ['calcite']       = { frequency = 3.0, size = 1/2, richness = 2.0 },
            -- Fluids
            ['crude-oil']     = { frequency = 3.0, size = 1/2, richness = 2.0 },
            ['lithium-brine'] = { frequency = 3.0, size = 1/2, richness = 2.0 },
            ['fluorine-vent'] = { frequency = 3.0, size = 1/2, richness = 2.0 },
            -- Other
            ['enemy-base']    = { frequency = 1.0, size = 1.0, richness = 1.0 },
            ['trees']         = { frequency = 1.0, size = 1.0, richness = 1.0 },
            ['water']         = { frequency = 4.0, size = 1/4, richness = 1/4 },
        },
        cliff_settings = { cliff_elevation_interval = 0, cliff_elevation_0 = 0 },
        starting_area = 3.0,
        height = 128,
    },
}
