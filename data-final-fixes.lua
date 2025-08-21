--- Remove references
for _, _type in pairs(data.raw) do
    for name, p in pairs(_type) do
        p.surface_conditions = nil
        if p.default_import_location and not data.raw['space-location'][p.default_import_location] then
            p.default_import_location = nil
        end
        p.spoil_result = nil
        p.spoil_ticks = nil

        --- Remove factoriopedia simulations
        if p.factoriopedia_simulation then
            for _, planet in pairs({ 'aquilo', 'fulgora', 'gleba', 'vulcanus' }) do
                if p.factoriopedia_simulation and p.factoriopedia_simulation.planet and p.factoriopedia_simulation.planet == planet then
                    p.factoriopedia_simulation = nil
                end
            end
        end

        --- Remove invalid crafting categories
        if p.crafting_categories then
            for i = #p.crafting_categories, 1, -1 do
                local cat = p.crafting_categories[i]
                if (not data.raw['recipe-category'][cat]) or data.raw['recipe-category'][cat].hidden then
                    table.remove(p.crafting_categories, i)
                end
            end
        end

        --- Remove invalid next upgrades
        if p.next_upgrade and not data.raw[p.type][p.next_upgrade] then
            p.next_upgrade = nil
        end

        --- Remove spores
        if p.energy_source and p.energy_source.emissions_per_minute then
            if p.energy_source.emissions_per_minute.spores and not p.energy_source.emissions_per_minute.pollution then
                p.energy_source.emissions_per_minute.pollution = p.energy_source.emissions_per_minute.spores
            end
            p.energy_source.emissions_per_minute.spores = nil
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

--- Remove lab inputs
for _, lab in pairs(data.raw.lab) do
    for i = #lab.inputs, 1, -1 do
        if not data.raw.tool[lab.inputs[i]] then
            table.remove(lab.inputs, i)
        end
    end
end

--- Update technologies
for _, tech in pairs(data.raw.technology) do
    --- Remove invalid prereqs
    local prerequisites = tech.prerequisites or {}
    for p = #prerequisites, 1, -1 do
        if not data.raw.technology[prerequisites[p]] then
            table.remove(tech.prerequisites, p)
        end
    end

    --- Remove invalid ingredients
    local ingredients = tech.unit and tech.unit.ingredients or {}
    for i = #ingredients, 1, -1 do
        if not data.raw.tool[ingredients[i][1]] then
            table.remove(tech.unit.ingredients, i)
        end
    end
end
