return function()
    --- Revert SA changes
    data.raw.character.character.animations[4] = nil
    data.raw.character.character.crafting_categories = {
        'crafting',
        'electronics-or-assembling',
        'metallurgy-or-assembling',
        'recycling-or-hand-crafting',
    }
    data.raw['cargo-pod']['cargo-pod'].subgroup = nil
    data.raw['character-corpse']['character-corpse'].armor_picture_mapping['mech-armor'] = nil
    data.raw['item-subgroup']['space-related'].group = 'production'
    data.raw['item-subgroup']['space-related'].order = 'g'
    data.raw['rocket-silo-rocket']['rocket-silo-rocket'].inventory_size = 0
    data.raw['temporary-container']['cargo-pod-container'].subgroup = nil
    data.raw['unit-spawner']['biter-spawner'].captured_spawner_entity = nil
    data.raw['unit-spawner']['spitter-spawner'].captured_spawner_entity = nil

    local nauvis = data.raw.planet.nauvis
    nauvis.asteroid_spawn_definitions = nil
    nauvis.asteroid_spawn_influence = nil
    nauvis.planet_procession_set = nil
    nauvis.platform_procession_set = nil
    nauvis.procession_graphic_catalogue = nil
    nauvis.subgroup = nil

    local rocket_silo = data.raw['rocket-silo']['rocket-silo']
    rocket_silo.launch_to_space_platforms = false
    rocket_silo.to_be_inserted_to_rocket_inventory_size = 1
    rocket_silo.logistic_trash_inventory_size = 0
    rocket_silo.rocket_parts_required = 100
    rocket_silo.cargo_station_parameters.prefer_packed_cargo_units = false

    local landing_pad = data.raw['cargo-landing-pad']['cargo-landing-pad']
    landing_pad.trash_inventory_size = 20
    landing_pad.cargo_station_parameters = require 'prototypes/cargo-station-parameters'

    local crafters = data.raw['assembling-machine']
    crafters['assembling-machine-1'].crafting_categories = {
        'parameters',
        'crafting',
        'basic-crafting',
        'advanced-crafting',
        'metallurgy-or-assembling',
        'electronics-or-assembling',
    }
    crafters['assembling-machine-2'].crafting_categories = {
        'parameters',
        'crafting',
        'basic-crafting',
        'advanced-crafting',
        'crafting-with-fluid',
        'metallurgy-or-assembling',
        'electronics-or-assembling',
        'cryogenics-or-assembling',
        'crafting-with-fluid-or-metallurgy',
    }
    crafters['assembling-machine-3'].crafting_categories = {
        'parameters',
        'crafting',
        'basic-crafting',
        'advanced-crafting',
        'crafting-with-fluid',
        'metallurgy-or-assembling',
        'electronics-or-assembling',
        'cryogenics-or-assembling',
        'crafting-with-fluid-or-metallurgy',
    }
    crafters['biochamber'].energy_source = table.deepcopy(crafters['chemical-plant'].energy_source)
    crafters['biochamber'].crafting_categories = {
        'organic',
        'parameters',
        'chemistry',
        'cryogenics-or-assembling',
    }
    crafters['chemical-plant'].crafting_categories = {
        'parameters',
        'chemistry',
        'cryogenics-or-assembling',
    }
    crafters['cryogenic-plant'].crafting_categories = {
        'parameters',
        'oil-processing',
        'cryogenics-or-assembling',
        'cryogenics',
    }
    crafters['foundry'].crafting_categories = {
        'parameters',
        'smelting',
        'metallurgy',
        'metallurgy-or-assembling',
        'crafting-with-fluid-or-metallurgy',
    }
    crafters['oil-refinery'].crafting_categories = {
        'parameters',
        'oil-processing',
        'cryogenics-or-assembling',
    }
end
