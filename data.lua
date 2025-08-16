local prototypes = require 'prototypes.config'

--- Remove SA prototypes
for k, list in pairs(prototypes) do
    for _, name in pairs(list) do
        data.raw[k][name] = nil
    end
end

--- Remove references
for _, _type in pairs(data.raw) do
    for name, p in pairs(_type) do
        --- Remove surface conditions
        if p.surface_conditions then
            p.surface_conditions = nil
        end
        --- Remove import location
        if p.default_import_location then
            p.default_import_location = nil
        end
        --- Remove simulations
        if p.factoriopedia_simulation then
            for _, planet in pairs({ 'aquilo', 'fulgora', 'gleba', 'vulcanus' }) do
                if p.factoriopedia_simulation and p.factoriopedia_simulation.planet and p.factoriopedia_simulation.planet == planet then
                    p.factoriopedia_simulation = nil
                end
            end
        end
        --- Remove spoilage
        p.spoil_result = nil
        p.spoil_ticks = nil
        --- Remove invalid crafting categories
        if p.crafting_categories then
            for i = #p.crafting_categories, 1, -1 do
                local cat = p.crafting_categories[i]
                if (not data.raw['recipe-category'][cat]) or data.raw['recipe-category'][cat].hidden then
                    table.remove(p.crafting_categories, i)
                end
            end
        end
        --- Remove next upgrade
        if p.next_upgrade and not data.raw[p.type][p.next_upgrade] then
            p.next_upgrade = nil
        end
    end
end

--- Update tiles
for _, tile in pairs(data.raw.tile) do
    if tile.absorptions_per_second and tile.absorptions_per_second.spores then
        tile.absorptions_per_second.pollution = tile.absorptions_per_second.pollution or tile.absorptions_per_second.spores
        tile.absorptions_per_second.spores = nil
    end
    if tile.dying_explosion and not data.raw.explosion[tile.dying_explosion] then
        tile.dying_explosion = nil
    end
    if tile.fluid and not data.raw.fluid[tile.fluid] then
        tile.fluid = nil
    end
    if tile.minable and not data.raw.item[tile.minable.result] then
        tile.minable = nil
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

--- Remove lab inputs
for _, lab in pairs(data.raw.lab) do
    for i = #lab.inputs, 1, -1 do
        if not data.raw.tool[lab.inputs[i]] then
            table.remove(lab.inputs, i)
        end
    end
end

require 'prototypes/item'()
require 'prototypes/recipe'()
require 'prototypes/fluid'()
require 'prototypes/technology'()
