return function()
    local resource_autoplace = require 'resource-autoplace'
    local base_sounds = require '__base__.prototypes.entity.sounds'
    local simulations = require '__space-age__.prototypes.factoriopedia-simulations'

    resource_autoplace.initialize_patch_set('calcite', false)
    resource_autoplace.initialize_patch_set('tungsten-ore', false)
    resource_autoplace.initialize_patch_set('holmium-ore', false)

    local function resource(resource_parameters, autoplace_parameters, path)
        return {
            type = 'resource',
            name = resource_parameters.name,
            icon = '__' .. path .. '__/graphics/icons/' .. resource_parameters.name .. '.png',
            flags = { 'placeable-neutral' },
            order = 'a-b-' .. resource_parameters.order,
            tree_removal_probability = 0.8,
            tree_removal_max_distance = 32 * 32,
            minable = resource_parameters.minable or {
                mining_particle = resource_parameters.name .. '-particle',
                mining_time = resource_parameters.mining_time,
                result = resource_parameters.name,
            },
            category = resource_parameters.category,
            subgroup = resource_parameters.subgroup,
            walking_sound = resource_parameters.walking_sound,
            driving_sound = resource_parameters.driving_sound,
            collision_mask = resource_parameters.collision_mask,
            collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
            selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            autoplace = resource_autoplace.resource_autoplace_settings {
                name = resource_parameters.name,
                order = resource_parameters.order,
                base_density = autoplace_parameters.base_density,
                base_spots_per_km = autoplace_parameters.base_spots_per_km2,
                has_starting_area_placement = autoplace_parameters.has_starting_area_placement,
                regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
                starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
                candidate_spot_count = autoplace_parameters.candidate_spot_count,
                tile_restriction = autoplace_parameters.tile_restriction,
            },
            stage_counts = { 15000, 9500, 5500, 2900, 1300, 400, 150, 80 },
            stages = {
                sheet = {
                    filename = '__' .. path .. '__/graphics/entity/' .. resource_parameters.name .. '/' .. resource_parameters.name .. '.png',
                    priority = 'extra-high',
                    size = 128,
                    frame_count = 8,
                    variation_count = 8,
                    scale = 0.5,
                },
            },
            map_color = resource_parameters.map_color,
            mining_visualisation_tint = resource_parameters.mining_visualisation_tint,
            factoriopedia_simulation = resource_parameters.factoriopedia_simulation,
        }
    end

    data:extend({
        {
            type = 'autoplace-control',
            name = 'calcite',
            localised_name = { '', '[entity=calcite] ', { 'entity-name.calcite' } },
            richness = true,
            order = 'b-a',
            category = 'resource',
        },
        {
            type = 'autoplace-control',
            name = 'tungsten-ore',
            localised_name = { '', '[entity=tungsten-ore] ', { 'entity-name.tungsten-ore' } },
            richness = true,
            order = 'b-b',
            category = 'resource',
        },
        {
            type = 'autoplace-control',
            name = 'holmium-ore',
            localised_name = { '', '[entity=holmium-ore] ', { 'entity-name.holmium-ore' } },
            richness = true,
            order = 'b-c',
            category = 'resource',
        },
        {
            type = 'autoplace-control',
            name = 'lithium-brine',
            localised_name = { '', '[entity=lithium-brine] ', { 'entity-name.lithium-brine' } },
            richness = true,
            order = 'd-a',
            category = 'resource',
        },
        {
            type = 'autoplace-control',
            name = 'fluorine-vent',
            localised_name = { '', '[entity=fluorine-vent] ', { 'entity-name.fluorine-vent' } },
            richness = true,
            order = 'd-b',
            category = 'resource',
        },
        {
            type = 'resource',
            name = 'holmium-ore',
            icon = '__space-age__/graphics/icons/holmium-ore.png',
            flags = { 'placeable-neutral' },
            order = 'a-b-e',
            tree_removal_probability = 0.7,
            tree_removal_max_distance = 32 * 32,
            walking_sound = base_sounds.ore,
            driving_sound = {
                sound = {
                    filename = '__base__/sound/driving/vehicle-surface-stone.ogg',
                    volume = 0.8,
                    advanced_volume_control = { fades = { fade_in = { curve_type = 'cosine', from = { control = 0.5, volume_percentage = 0.0 }, to = { 1.5, 100.0 } } } },
                },
                fade_ticks = 6,
            },
            minable = {
                mining_particle = 'stone-particle', -- TODO: Add particle - There is an actual holmium-ore-particle-1.png in space-age\graphics\particle\holmium-ore-particle
                mining_time = 2,
                result = 'holmium-ore',
            },
            category = 'hard-solid',
            collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
            selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            autoplace = resource_autoplace.resource_autoplace_settings {
                name = 'holmium-ore',
                order = 'c-holmium',
                base_density = 0.5,
                base_spots_per_km2 = 1.25,
                has_starting_area_placement = false,
                random_spot_size_minimum = 2,
                random_spot_size_maximum = 4,
                regular_rq_factor_multiplier = 1.0,
            },
            stage_counts = { 15000, 9500, 5500, 2900, 1300, 400, 150, 80 },
            stages = {
                sheet = {
                    filename = '__factorio-1.5__/graphics/entity/holmium-ore/holmium-ore-patches.png',
                    priority = 'extra-high',
                    width = 128,
                    height = 128,
                    frame_count = 8,
                    variation_count = 8,
                    scale = 0.5,
                },
            },
            effect_animation_period = 5,
            effect_animation_period_deviation = 1,
            effect_darkness_multiplier = 3.6,
            min_effect_alpha = 0.2,
            max_effect_alpha = 0.3,
            mining_visualisation_tint = { r = 1, g = 0, b = 0.9, a = 1 },
            map_color = { 1, 0, 0.9 },
        },
        resource({
            name = 'tungsten-ore',
            order = 'b',
            map_color = { r = 98 / 256, g = 86 / 256, b = 150 / 256, a = 1.000 },
            mining_time = 5,
            walking_sound = base_sounds.ore,
            mining_visualisation_tint = { r = 150 / 256, g = 150 / 256, b = 180 / 256, a = 1.000 },
            category = 'hard-solid',
            factoriopedia_simulation = simulations.factoriopedia_tungsten_ore,
        }, {
            base_density = 2,
            random_spot_size_minimum = 2,
            random_spot_size_maximum = 4,
            regular_rq_factor_multiplier = 1.0,
            base_spots_per_km2 = 1.25,
            has_starting_area_placement = false,
        }, 'space-age'),
        resource({
            name = 'calcite',
            order = 'b',
            map_color = { 0.8, 0.7, 0.7 },
            mining_time = 1,
            walking_sound = base_sounds.ore,
            mining_visualisation_tint = { r = 0.99, g = 1.0, b = 0.92, a = 1.000 },
            factoriopedia_simulation = simulations.factoriopedia_calcite,
        }, {
            base_density = 0.5,
            random_spot_size_minimum = 2,
            random_spot_size_maximum = 4,
            regular_rq_factor_multiplier = 1.0,
            base_spots_per_km2 = 1.25,
            has_starting_area_placement = false,
        }, 'space-age'),
    })

    data.raw.resource['lithium-brine'].autoplace = resource_autoplace.resource_autoplace_settings {
        name = 'lithium-brine',
        order = 'c',
        base_density = 8.2,
        base_spots_per_km2 = 0.9,
        random_probability = 1 / 72,
        random_spot_size_minimum = 1,
        random_spot_size_maximum = 1,
        additional_richness = 220000,
        has_starting_area_placement = false,
        regular_rq_factor_multiplier = 1,
    }
    data.raw.resource['fluorine-vent'].autoplace = resource_autoplace.resource_autoplace_settings {
        name = 'fluorine-vent',
        order = 'c',
        base_density = 8.2,
        base_spots_per_km2 = 0.9,
        random_probability = 1 / 72,
        random_spot_size_minimum = 1,
        random_spot_size_maximum = 1,
        additional_richness = 220000,
        has_starting_area_placement = false,
        regular_rq_factor_multiplier = 1,
    }

    for _, entity in pairs({
        { control = 'calcite', resource = 'calcite' },
        { control = 'tungsten-ore', resource = 'tungsten-ore' },
        { control = 'holmium-ore', resource = 'holmium-ore' },
        { control = 'lithium-brine', resource = 'lithium-brine' },
        { control = 'fluorine-vent', resource = 'fluorine-vent' },
        --{ control = 'sulfuric_acid_geyser', resource = 'sulfuric-acid-geyser' },
    }) do
        data.raw.planet.nauvis.map_gen_settings.autoplace_controls[entity.control] = {}
        data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings[entity.resource] = {}
    end
end
