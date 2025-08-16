--- Update leftover references
data.raw.character.character.animations[4] = nil
data.raw.planet.nauvis.asteroid_spawn_definitions = nil
data.raw.planet.nauvis.asteroid_spawn_influence = nil
data.raw.planet.nauvis.planet_procession_set = nil
data.raw.planet.nauvis.platform_procession_set = nil
data.raw.planet.nauvis.procession_graphic_catalogue = nil
data.raw.planet.nauvis.subgroup = nil
data.raw.technology['space-science-pack'].localised_description = { 'technology-description.space-science-pack' }
data.raw['cargo-pod']['cargo-pod'].subgroup = nil
data.raw['character-corpse']['character-corpse'].armor_picture_mapping['mech-armor'] = nil
data.raw['item-subgroup']['space-related'].group = 'production'
data.raw['item-subgroup']['space-related'].order = 'g'
data.raw['rocket-silo-rocket']['rocket-silo-rocket'].inventory_size = 0
data.raw['temporary-container']['cargo-pod-container'].subgroup = nil
data.raw['unit-spawner']['biter-spawner'].captured_spawner_entity = nil
data.raw['unit-spawner']['spitter-spawner'].captured_spawner_entity = nil

local rocket_silo = data.raw['rocket-silo']['rocket-silo']
rocket_silo.launch_to_space_platforms = false
rocket_silo.to_be_inserted_to_rocket_inventory_size = 1
rocket_silo.logistic_trash_inventory_size = 0
rocket_silo.rocket_parts_required = 100
rocket_silo.cargo_station_parameters.prefer_packed_cargo_units = false

local landing_pad = data.raw['cargo-landing-pad']['cargo-landing-pad']
landing_pad.trash_inventory_size = 20
landing_pad.cargo_station_parameters = require 'prototypes/cargo-station-parameters'

require 'prototypes/item'()
require 'prototypes/recipe'()
require 'prototypes/fluid'()
require 'prototypes/technology'()
