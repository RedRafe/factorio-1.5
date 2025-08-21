local prototypes = require 'prototypes.config'

--- Remove SA prototypes
for k, list in pairs(prototypes) do
    for _, name in pairs(list) do
        data.raw[k][name] = nil
    end
end

--- Remove simulations
local main_menu_simulations = data.raw['utility-constants']['default'].main_menu_simulations
main_menu_simulations.aquilo_send_help = nil
main_menu_simulations.aquilo_starter = nil
main_menu_simulations.fulgora_city_crossing = nil
main_menu_simulations.fulgora_nightfall = nil
main_menu_simulations.fulgora_race = nil
main_menu_simulations.fulgora_recycling_hell = nil
main_menu_simulations.gleba_agri_towers = nil
main_menu_simulations.gleba_egg_escape = nil
main_menu_simulations.gleba_farm_attack = nil
main_menu_simulations.gleba_grotto = nil
main_menu_simulations.gleba_pentapod_ponds = nil
main_menu_simulations.nauvis_biolab = nil
main_menu_simulations.nauvis_bus = nil
main_menu_simulations.nauvis_power_up = nil
main_menu_simulations.nauvis_rocket_factory = nil
main_menu_simulations.nauvis_tank_building = nil
main_menu_simulations.platform_messy_nuclear = nil
main_menu_simulations.platform_moving = nil
main_menu_simulations.platform_science = nil
main_menu_simulations.vulcanus_crossing = nil
main_menu_simulations.vulcanus_lava_forge = nil
main_menu_simulations.vulcanus_punishmnent = nil
main_menu_simulations.vulcanus_sulfur_drop = nil

--- Remove sounds
for _, planet in pairs({ 'aquilo', 'fulgora', 'gleba', 'vulcanus' }) do
    for name, sound in pairs(data.raw['ambient-sound']) do
        if sound.planet == planet then
            data.raw['ambient-sound'][name] = nil
        end
    end
end

--- Remove segments
for name, _ in pairs(data.raw.segment) do
    data.raw.segment[name] = nil
end

require 'prototypes/resource'()
require 'prototypes/item'()
require 'prototypes/recipe'()
require 'prototypes/fluid'()
require 'prototypes/entity'()
require 'prototypes/technology'()
require 'prototypes/tiles'()
