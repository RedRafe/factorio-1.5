--- source: factorio/data/base/prototypes/recipe.lua

return function()
    function create_recipe_parameter(number)
        data:extend({
            {
                type = 'recipe',
                name = 'parameter-' .. number,
                icon = '__base__/graphics/icons/parameter/parameter-' .. number .. '.png',
                localised_name = { 'parameter-x', tostring(number) },
                subgroup = 'parameters',
                category = 'parameters',
                order = 'a',
                parameter = true,
                allow_productivity = true,
            },
        })
    end

    for n = 0, 9 do
        create_recipe_parameter(n)
    end

    -- ==================================================================== Base
    data:extend({
        {
            type = 'recipe',
            name = 'speed-module',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'electronic-circuit', amount = 5 },
            },
            energy_required = 15,
            results = { { type = 'item', name = 'speed-module', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'speed-module-2',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'speed-module', amount = 4 },
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'processing-unit', amount = 5 },
            },
            energy_required = 30,
            results = { { type = 'item', name = 'speed-module-2', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'speed-module-3',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'speed-module-2', amount = 4 },
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'processing-unit', amount = 5 },
            },
            energy_required = 60,
            results = { { type = 'item', name = 'speed-module-3', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'productivity-module',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'electronic-circuit', amount = 5 },
            },
            energy_required = 15,
            results = { { type = 'item', name = 'productivity-module', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'productivity-module-2',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'productivity-module', amount = 4 },
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'processing-unit', amount = 5 },
            },
            energy_required = 30,
            results = { { type = 'item', name = 'productivity-module-2', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'productivity-module-3',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'productivity-module-2', amount = 4 },
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'processing-unit', amount = 5 },
            },
            energy_required = 60,
            results = { { type = 'item', name = 'productivity-module-3', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'efficiency-module',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'electronic-circuit', amount = 5 },
            },
            energy_required = 15,
            results = { { type = 'item', name = 'efficiency-module', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'efficiency-module-2',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'efficiency-module', amount = 4 },
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'processing-unit', amount = 5 },
            },
            energy_required = 30,
            results = { { type = 'item', name = 'efficiency-module-2', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'efficiency-module-3',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'efficiency-module-2', amount = 4 },
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'processing-unit', amount = 5 },
            },
            energy_required = 60,
            results = { { type = 'item', name = 'efficiency-module-3', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'bulk-inserter',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'iron-gear-wheel', amount = 15 },
                { type = 'item', name = 'electronic-circuit', amount = 15 },
                { type = 'item', name = 'advanced-circuit', amount = 1 },
                { type = 'item', name = 'fast-inserter', amount = 1 },
            },
            results = { { type = 'item', name = 'bulk-inserter', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'basic-oil-processing',
            category = 'oil-processing',
            enabled = false,
            energy_required = 5,
            ingredients = {
                { type = 'fluid', name = 'crude-oil', amount = 100, fluidbox_index = 2 },
            },
            results = {
                { type = 'fluid', name = 'petroleum-gas', amount = 45, fluidbox_index = 3 },
            },
            allow_productivity = true,
            icon = '__base__/graphics/icons/fluid/basic-oil-processing.png',
            subgroup = 'fluid-recipes',
            order = 'a[oil-processing]-a[basic-oil-processing]',
            main_product = '',
        },

        {
            type = 'recipe',
            name = 'advanced-oil-processing',
            category = 'oil-processing',
            enabled = false,
            energy_required = 5,
            ingredients = {
                { type = 'fluid', name = 'water', amount = 50 },
                { type = 'fluid', name = 'crude-oil', amount = 100 },
            },
            results = {
                { type = 'fluid', name = 'heavy-oil', amount = 25 },
                { type = 'fluid', name = 'light-oil', amount = 45 },
                { type = 'fluid', name = 'petroleum-gas', amount = 55 },
            },
            allow_productivity = true,
            icon = '__base__/graphics/icons/fluid/advanced-oil-processing.png',
            subgroup = 'fluid-recipes',
            order = 'a[oil-processing]-b[advanced-oil-processing]',
        },

        {
            type = 'recipe',
            name = 'coal-liquefaction',
            category = 'oil-processing',
            enabled = false,
            energy_required = 5,
            ingredients = {
                { type = 'item', name = 'coal', amount = 10 },
                { type = 'fluid', name = 'heavy-oil', amount = 25, ignored_by_stats = 25 },
                { type = 'fluid', name = 'steam', amount = 50 },
            },
            results = {
                { type = 'fluid', name = 'heavy-oil', amount = 90, ignored_by_stats = 25, ignored_by_productivity = 25 },
                { type = 'fluid', name = 'light-oil', amount = 20 },
                { type = 'fluid', name = 'petroleum-gas', amount = 10 },
            },
            allow_productivity = true,
            icon = '__base__/graphics/icons/fluid/coal-liquefaction.png',
            subgroup = 'fluid-recipes',
            order = 'a[oil-processing]-d[coal-liquefaction]',
            allow_decomposition = false,
        },

        {
            type = 'recipe',
            name = 'heavy-oil-cracking',
            category = 'chemistry',
            enabled = false,
            energy_required = 2,
            ingredients = {
                { type = 'fluid', name = 'water', amount = 30 },
                { type = 'fluid', name = 'heavy-oil', amount = 40 },
            },
            results = {
                { type = 'fluid', name = 'light-oil', amount = 30 },
            },
            allow_productivity = true,
            main_product = '',
            icon = '__base__/graphics/icons/fluid/heavy-oil-cracking.png',
            subgroup = 'fluid-recipes',
            order = 'b[fluid-chemistry]-a[heavy-oil-cracking]',
            crafting_machine_tint = {
                primary = { r = 1.000, g = 0.642, b = 0.261, a = 1.000 }, -- #ffa342ff
                secondary = { r = 1.000, g = 0.722, b = 0.376, a = 1.000 }, -- #ffb85fff
                tertiary = { r = 0.854, g = 0.659, b = 0.576, a = 1.000 }, -- #d9a892ff
                quaternary = { r = 1.000, g = 0.494, b = 0.271, a = 1.000 }, -- #ff7e45ff
            },
        },

        {
            type = 'recipe',
            name = 'light-oil-cracking',
            category = 'chemistry',
            enabled = false,
            energy_required = 2,
            ingredients = {
                { type = 'fluid', name = 'water', amount = 30 },
                { type = 'fluid', name = 'light-oil', amount = 30 },
            },
            results = {
                { type = 'fluid', name = 'petroleum-gas', amount = 20 },
            },
            allow_productivity = true,
            main_product = '',
            icon = '__base__/graphics/icons/fluid/light-oil-cracking.png',
            subgroup = 'fluid-recipes',
            order = 'b[fluid-chemistry]-b[light-oil-cracking]',
            crafting_machine_tint = {
                primary = { r = 0.764, g = 0.596, b = 0.780, a = 1.000 }, -- #c298c6ff
                secondary = { r = 0.762, g = 0.551, b = 0.844, a = 1.000 }, -- #c28cd7ff
                tertiary = { r = 0.895, g = 0.773, b = 0.596, a = 1.000 }, -- #e4c597ff
                quaternary = { r = 1.000, g = 0.734, b = 0.290, a = 1.000 }, -- #ffbb49ff
            },
        },

        {
            type = 'recipe',
            name = 'sulfuric-acid',
            category = 'cryogenics-or-assembling',
            subgroup = 'fluid-recipes',
            order = 'c[oil-products]-b[sulfuric-acid]',
            energy_required = 1,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'sulfur', amount = 5 },
                { type = 'item', name = 'iron-plate', amount = 1 },
                { type = 'fluid', name = 'water', amount = 100 },
            },
            results = {
                { type = 'fluid', name = 'sulfuric-acid', amount = 50 },
            },
            allow_productivity = true,
            crafting_machine_tint = {
                primary = { r = 1.000, g = 0.958, b = 0.000, a = 1.000 }, -- #fff400ff
                secondary = { r = 1.000, g = 0.852, b = 0.172, a = 1.000 }, -- #ffd92bff
                tertiary = { r = 0.876, g = 0.869, b = 0.597, a = 1.000 }, -- #dfdd98ff
                quaternary = { r = 0.969, g = 1.000, b = 0.019, a = 1.000 }, -- #f7ff04ff
            },
        },
        {
            type = 'recipe',
            name = 'plastic-bar',
            category = 'cryogenics-or-assembling',
            energy_required = 1,
            enabled = false,
            auto_recycle = false,
            ingredients = {
                { type = 'fluid', name = 'petroleum-gas', amount = 20 },
                { type = 'item', name = 'coal', amount = 1 },
            },
            results = {
                { type = 'item', name = 'plastic-bar', amount = 2 },
            },
            allow_productivity = true,
            crafting_machine_tint = {
                primary = { r = 1.000, g = 1.000, b = 1.000, a = 1.000 }, -- #fefeffff
                secondary = { r = 0.771, g = 0.771, b = 0.771, a = 1.000 }, -- #c4c4c4ff
                tertiary = { r = 0.768, g = 0.665, b = 0.762, a = 1.000 }, -- #c3a9c2ff
                quaternary = { r = 0.000, g = 0.000, b = 0.000, a = 1.000 }, -- #000000ff
            },
        },

        {
            type = 'recipe',
            name = 'solid-fuel-from-light-oil',
            category = 'chemistry',
            energy_required = 1,
            ingredients = {
                { type = 'fluid', name = 'light-oil', amount = 10 },
            },
            results = {
                { type = 'item', name = 'solid-fuel', amount = 1 },
            },
            allow_productivity = true,
            icon = '__base__/graphics/icons/solid-fuel-from-light-oil.png',
            subgroup = 'fluid-recipes',
            enabled = false,
            order = 'b[fluid-chemistry]-d[solid-fuel-from-light-oil]',
            crafting_machine_tint = {
                primary = { r = 0.710, g = 0.633, b = 0.482, a = 1.000 }, -- #b5a17aff
                secondary = { r = 0.745, g = 0.672, b = 0.527, a = 1.000 }, -- #beab86ff
                tertiary = { r = 0.894, g = 0.773, b = 0.596, a = 1.000 }, -- #e4c598ff
                quaternary = { r = 0.812, g = 0.583, b = 0.202, a = 1.000 }, -- #cf9433ff
            },
        },

        {
            type = 'recipe',
            name = 'solid-fuel-from-petroleum-gas',
            category = 'chemistry',
            energy_required = 1,
            ingredients = {
                { type = 'fluid', name = 'petroleum-gas', amount = 20 },
            },
            results = {
                { type = 'item', name = 'solid-fuel', amount = 1 },
            },
            allow_productivity = true,
            icon = '__base__/graphics/icons/solid-fuel-from-petroleum-gas.png',
            subgroup = 'fluid-recipes',
            enabled = false,
            order = 'b[fluid-chemistry]-c[solid-fuel-from-petroleum-gas]',
            crafting_machine_tint = {
                primary = { r = 0.768, g = 0.631, b = 0.768, a = 1.000 }, -- #c3a0c3ff
                secondary = { r = 0.659, g = 0.592, b = 0.678, a = 1.000 }, -- #a896acff
                tertiary = { r = 0.774, g = 0.631, b = 0.766, a = 1.000 }, -- #c5a0c3ff
                quaternary = { r = 0.564, g = 0.364, b = 0.564, a = 1.000 }, -- #8f5c8fff
            },
        },

        {
            type = 'recipe',
            name = 'solid-fuel-from-heavy-oil',
            category = 'chemistry',
            energy_required = 1,
            ingredients = {
                { type = 'fluid', name = 'heavy-oil', amount = 20 },
            },
            results = {
                { type = 'item', name = 'solid-fuel', amount = 1 },
            },
            allow_productivity = true,
            icon = '__base__/graphics/icons/solid-fuel-from-heavy-oil.png',
            subgroup = 'fluid-recipes',
            enabled = false,
            order = 'b[fluid-chemistry]-e[solid-fuel-from-heavy-oil]',
            crafting_machine_tint = {
                primary = { r = 0.889, g = 0.628, b = 0.566, a = 1.000 }, -- #e2a090ff
                secondary = { r = 0.803, g = 0.668, b = 0.644, a = 1.000 }, -- #ccaaa4ff
                tertiary = { r = 0.854, g = 0.659, b = 0.576, a = 1.000 }, -- #d9a892ff
                quaternary = { r = 1.000, g = 0.395, b = 0.127, a = 1.000 }, -- #ff6420ff
            },
        },

        {
            type = 'recipe',
            name = 'sulfur',
            category = 'cryogenics-or-assembling',
            energy_required = 1,
            enabled = false,
            auto_recycle = false,
            ingredients = {
                { type = 'fluid', name = 'water', amount = 30 },
                { type = 'fluid', name = 'petroleum-gas', amount = 30 },
            },
            results = {
                { type = 'item', name = 'sulfur', amount = 2 },
            },
            allow_productivity = true,
            crafting_machine_tint = {
                primary = { r = 1.000, g = 0.995, b = 0.089, a = 1.000 }, -- #fffd16ff
                secondary = { r = 1.000, g = 0.974, b = 0.691, a = 1.000 }, -- #fff8b0ff
                tertiary = { r = 0.723, g = 0.638, b = 0.714, a = 1.000 }, -- #b8a2b6ff
                quaternary = { r = 0.954, g = 1.000, b = 0.350, a = 1.000 }, -- #f3ff59ff
            },
        },

        {
            type = 'recipe',
            name = 'lubricant',
            category = 'chemistry',
            enabled = false,
            energy_required = 1,
            ingredients = {
                { type = 'fluid', name = 'heavy-oil', amount = 10 },
            },
            results = {
                { type = 'fluid', name = 'lubricant', amount = 10 },
            },
            allow_productivity = true,
            subgroup = 'fluid-recipes',
            order = 'c[oil-products]-a[lubricant]',
            crafting_machine_tint = {
                primary = { r = 0.268, g = 0.723, b = 0.223, a = 1.000 }, -- #44b838ff
                secondary = { r = 0.432, g = 0.793, b = 0.386, a = 1.000 }, -- #6eca62ff
                tertiary = { r = 0.647, g = 0.471, b = 0.396, a = 1.000 }, -- #a57865ff
                quaternary = { r = 1.000, g = 0.395, b = 0.127, a = 1.000 }, -- #ff6420ff
            },
        },
        {
            type = 'recipe',
            name = 'barrel',
            category = 'crafting',
            energy_required = 1,
            subgroup = 'intermediate-product',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 1 },
            },
            results = { { type = 'item', name = 'barrel', amount = 1 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'night-vision-equipment',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'steel-plate', amount = 10 },
            },
            results = { { type = 'item', name = 'night-vision-equipment', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'belt-immunity-equipment',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'steel-plate', amount = 10 },
            },
            results = { { type = 'item', name = 'belt-immunity-equipment', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'energy-shield-equipment',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'steel-plate', amount = 10 },
            },
            results = { { type = 'item', name = 'energy-shield-equipment', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'energy-shield-mk2-equipment',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'energy-shield-equipment', amount = 10 },
                { type = 'item', name = 'processing-unit', amount = 5 },
                { type = 'item', name = 'low-density-structure', amount = 5 },
            },
            results = { { type = 'item', name = 'energy-shield-mk2-equipment', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'battery-equipment',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'battery', amount = 5 },
                { type = 'item', name = 'steel-plate', amount = 10 },
            },
            results = { { type = 'item', name = 'battery-equipment', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'battery-mk2-equipment',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'battery-equipment', amount = 10 },
                { type = 'item', name = 'processing-unit', amount = 15 },
                { type = 'item', name = 'low-density-structure', amount = 5 },
            },
            results = { { type = 'item', name = 'battery-mk2-equipment', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'solar-panel-equipment',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'solar-panel', amount = 1 },
                { type = 'item', name = 'advanced-circuit', amount = 2 },
                { type = 'item', name = 'steel-plate', amount = 5 },
            },
            results = { { type = 'item', name = 'solar-panel-equipment', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'fission-reactor-equipment',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'processing-unit', amount = 200 },
                { type = 'item', name = 'low-density-structure', amount = 50 },
                { type = 'item', name = 'uranium-fuel-cell', amount = 4 },
            },
            results = { { type = 'item', name = 'fission-reactor-equipment', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'personal-laser-defense-equipment',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'processing-unit', amount = 20 },
                { type = 'item', name = 'low-density-structure', amount = 5 },
                { type = 'item', name = 'laser-turret', amount = 5 },
            },
            results = { { type = 'item', name = 'personal-laser-defense-equipment', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'discharge-defense-equipment',
            category = 'electronics-or-assembling',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'processing-unit', amount = 5 },
                { type = 'item', name = 'steel-plate', amount = 20 },
                { type = 'item', name = 'laser-turret', amount = 10 },
            },
            results = { { type = 'item', name = 'discharge-defense-equipment', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'exoskeleton-equipment',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'processing-unit', amount = 10 },
                { type = 'item', name = 'electric-engine-unit', amount = 30 },
                { type = 'item', name = 'steel-plate', amount = 20 },
            },
            results = { { type = 'item', name = 'exoskeleton-equipment', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'personal-roboport-equipment',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'advanced-circuit', amount = 10 },
                { type = 'item', name = 'iron-gear-wheel', amount = 40 },
                { type = 'item', name = 'steel-plate', amount = 20 },
                { type = 'item', name = 'battery', amount = 45 },
            },
            results = { { type = 'item', name = 'personal-roboport-equipment', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'personal-roboport-mk2-equipment',
            enabled = false,
            energy_required = 20,
            ingredients = {
                { type = 'item', name = 'personal-roboport-equipment', amount = 5 },
                { type = 'item', name = 'processing-unit', amount = 100 },
                { type = 'item', name = 'low-density-structure', amount = 20 },
            },
            results = { { type = 'item', name = 'personal-roboport-mk2-equipment', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'laser-turret',
            enabled = false,
            energy_required = 20,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 20 },
                { type = 'item', name = 'electronic-circuit', amount = 20 },
                { type = 'item', name = 'battery', amount = 12 },
            },
            results = { { type = 'item', name = 'laser-turret', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'flamethrower-turret',
            enabled = false,
            energy_required = 20,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 30 },
                { type = 'item', name = 'iron-gear-wheel', amount = 15 },
                { type = 'item', name = 'pipe', amount = 10 },
                { type = 'item', name = 'engine-unit', amount = 5 },
            },
            results = { { type = 'item', name = 'flamethrower-turret', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'artillery-turret',
            enabled = false,
            energy_required = 40,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 60 },
                { type = 'item', name = 'concrete', amount = 60 },
                { type = 'item', name = 'iron-gear-wheel', amount = 40 },
                { type = 'item', name = 'advanced-circuit', amount = 20 },
            },
            results = { { type = 'item', name = 'artillery-turret', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'gun-turret',
            enabled = false,
            energy_required = 8,
            ingredients = {
                { type = 'item', name = 'iron-gear-wheel', amount = 10 },
                { type = 'item', name = 'copper-plate', amount = 10 },
                { type = 'item', name = 'iron-plate', amount = 20 },
            },
            results = { { type = 'item', name = 'gun-turret', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'wooden-chest',
            ingredients = { { type = 'item', name = 'wood', amount = 2 } },
            results = { { type = 'item', name = 'wooden-chest', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'display-panel',
            ingredients = { { type = 'item', name = 'iron-plate', amount = 1 }, { type = 'item', name = 'electronic-circuit', amount = 1 } },
            results = { { type = 'item', name = 'display-panel', amount = 1 } },
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'iron-stick',
            enabled = false,
            ingredients = { { type = 'item', name = 'iron-plate', amount = 1 } },
            results = { { type = 'item', name = 'iron-stick', amount = 2 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'stone-furnace',
            ingredients = { { type = 'item', name = 'stone', amount = 5 } },
            results = { { type = 'item', name = 'stone-furnace', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'boiler',
            enabled = false,
            ingredients = { { type = 'item', name = 'stone-furnace', amount = 1 }, { type = 'item', name = 'pipe', amount = 4 } },
            results = { { type = 'item', name = 'boiler', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'steam-engine',
            ingredients = {
                { type = 'item', name = 'iron-gear-wheel', amount = 8 },
                { type = 'item', name = 'pipe', amount = 5 },
                { type = 'item', name = 'iron-plate', amount = 10 },
            },
            results = { { type = 'item', name = 'steam-engine', amount = 1 } },
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'iron-gear-wheel',
            ingredients = { { type = 'item', name = 'iron-plate', amount = 2 } },
            results = { { type = 'item', name = 'iron-gear-wheel', amount = 1 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'electronic-circuit',
            category = 'electronics-or-assembling',
            ingredients = {
                { type = 'item', name = 'iron-plate', amount = 1 },
                { type = 'item', name = 'copper-cable', amount = 3 },
            },
            results = { { type = 'item', name = 'electronic-circuit', amount = 1 } },
            enabled = false,
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'transport-belt',
            category = 'metallurgy-or-assembling',
            ingredients = {
                { type = 'item', name = 'iron-plate', amount = 1 },
                { type = 'item', name = 'iron-gear-wheel', amount = 1 },
            },
            results = { { type = 'item', name = 'transport-belt', amount = 2 } },
        },
        {
            type = 'recipe',
            name = 'electric-mining-drill',
            energy_required = 2,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 3 },
                { type = 'item', name = 'iron-gear-wheel', amount = 5 },
                { type = 'item', name = 'iron-plate', amount = 10 },
            },
            results = { { type = 'item', name = 'electric-mining-drill', amount = 1 } },
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'burner-mining-drill',
            energy_required = 2,
            ingredients = {
                { type = 'item', name = 'iron-gear-wheel', amount = 3 },
                { type = 'item', name = 'stone-furnace', amount = 1 },
                { type = 'item', name = 'iron-plate', amount = 3 },
            },
            results = { { type = 'item', name = 'burner-mining-drill', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'inserter',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 1 },
                { type = 'item', name = 'iron-gear-wheel', amount = 1 },
                { type = 'item', name = 'iron-plate', amount = 1 },
            },
            results = { { type = 'item', name = 'inserter', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'fast-inserter',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 2 },
                { type = 'item', name = 'iron-plate', amount = 2 },
                { type = 'item', name = 'inserter', amount = 1 },
            },
            results = { { type = 'item', name = 'fast-inserter', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'long-handed-inserter',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'iron-gear-wheel', amount = 1 },
                { type = 'item', name = 'iron-plate', amount = 1 },
                { type = 'item', name = 'inserter', amount = 1 },
            },
            results = { { type = 'item', name = 'long-handed-inserter', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'burner-inserter',
            ingredients = {
                { type = 'item', name = 'iron-plate', amount = 1 },
                { type = 'item', name = 'iron-gear-wheel', amount = 1 },
            },
            results = { { type = 'item', name = 'burner-inserter', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'pipe',
            ingredients = { { type = 'item', name = 'iron-plate', amount = 1 } },
            results = { { type = 'item', name = 'pipe', amount = 1 } },
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'offshore-pump',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'pipe', amount = 3 },
                { type = 'item', name = 'iron-gear-wheel', amount = 2 },
            },
            results = { { type = 'item', name = 'offshore-pump', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'copper-cable',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = { { type = 'item', name = 'copper-plate', amount = 1 } },
            results = { { type = 'item', name = 'copper-cable', amount = 2 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'small-electric-pole',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'wood', amount = 1 },
                { type = 'item', name = 'copper-cable', amount = 2 },
            },
            results = { { type = 'item', name = 'small-electric-pole', amount = 2 } },
        },
        {
            type = 'recipe',
            name = 'pistol',
            enabled = false,
            hidden = true,
            energy_required = 5,
            ingredients = {
                { type = 'item', name = 'copper-plate', amount = 5 },
                { type = 'item', name = 'iron-plate', amount = 5 },
            },
            results = { { type = 'item', name = 'pistol', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'submachine-gun',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'iron-gear-wheel', amount = 10 },
                { type = 'item', name = 'copper-plate', amount = 5 },
                { type = 'item', name = 'iron-plate', amount = 10 },
            },
            results = { { type = 'item', name = 'submachine-gun', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'firearm-magazine',
            energy_required = 1,
            ingredients = { { type = 'item', name = 'iron-plate', amount = 4 } },
            results = { { type = 'item', name = 'firearm-magazine', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'light-armor',
            enabled = true,
            energy_required = 3,
            ingredients = { { type = 'item', name = 'iron-plate', amount = 40 } },
            results = { { type = 'item', name = 'light-armor', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'radar',
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 5 },
                { type = 'item', name = 'iron-gear-wheel', amount = 5 },
                { type = 'item', name = 'iron-plate', amount = 10 },
            },
            results = { { type = 'item', name = 'radar', amount = 1 } },
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'small-lamp',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 1 },
                { type = 'item', name = 'copper-cable', amount = 3 },
                { type = 'item', name = 'iron-plate', amount = 1 },
            },
            results = { { type = 'item', name = 'small-lamp', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'pipe-to-ground',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'pipe', amount = 10 },
                { type = 'item', name = 'iron-plate', amount = 5 },
            },
            results = { { type = 'item', name = 'pipe-to-ground', amount = 2 } },
        },
        {
            type = 'recipe',
            name = 'assembling-machine-1',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 3 },
                { type = 'item', name = 'iron-gear-wheel', amount = 5 },
                { type = 'item', name = 'iron-plate', amount = 9 },
            },
            results = { { type = 'item', name = 'assembling-machine-1', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'repair-pack',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 2 },
                { type = 'item', name = 'iron-gear-wheel', amount = 2 },
            },
            results = { { type = 'item', name = 'repair-pack', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'automation-science-pack',
            enabled = false,
            energy_required = 5,
            ingredients = {
                { type = 'item', name = 'copper-plate', amount = 1 },
                { type = 'item', name = 'iron-gear-wheel', amount = 1 },
            },
            results = { { type = 'item', name = 'automation-science-pack', amount = 1 } },
            crafting_machine_tint = {
                primary = { r = 1.000, g = 0.0, b = 0.0, a = 1.000 },
                secondary = { r = 1.000, g = 0.0, b = 0.0, a = 1.000 },
            },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'logistic-science-pack',
            enabled = false,
            energy_required = 6,
            ingredients = {
                { type = 'item', name = 'inserter', amount = 1 },
                { type = 'item', name = 'transport-belt', amount = 1 },
            },
            results = { { type = 'item', name = 'logistic-science-pack', amount = 1 } },
            crafting_machine_tint = {
                primary = { r = 0.0, g = 1.0, b = 0.0, a = 1.000 },
                secondary = { r = 0.0, g = 1.0, b = 0.0, a = 1.000 },
            },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'lab',
            energy_required = 2,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 10 },
                { type = 'item', name = 'iron-gear-wheel', amount = 10 },
                { type = 'item', name = 'transport-belt', amount = 4 },
            },
            results = { { type = 'item', name = 'lab', amount = 1 } },
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'stone-wall',
            enabled = false,
            ingredients = { { type = 'item', name = 'stone-brick', amount = 5 } },
            results = { { type = 'item', name = 'stone-wall', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'assembling-machine-2',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 2 },
                { type = 'item', name = 'electronic-circuit', amount = 3 },
                { type = 'item', name = 'iron-gear-wheel', amount = 5 },
                { type = 'item', name = 'assembling-machine-1', amount = 1 },
            },
            results = { { type = 'item', name = 'assembling-machine-2', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'splitter',
            category = 'metallurgy-or-assembling',
            enabled = false,
            energy_required = 1,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 5 },
                { type = 'item', name = 'iron-plate', amount = 5 },
                { type = 'item', name = 'transport-belt', amount = 4 },
            },
            results = { { type = 'item', name = 'splitter', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'underground-belt',
            category = 'metallurgy-or-assembling',
            enabled = false,
            energy_required = 1,
            ingredients = {
                { type = 'item', name = 'iron-plate', amount = 10 },
                { type = 'item', name = 'transport-belt', amount = 5 },
            },
            results = { { type = 'item', name = 'underground-belt', amount = 2 } },
        },
        {
            type = 'recipe',
            name = 'loader',
            enabled = false,
            hidden = true,
            energy_required = 1,
            ingredients = {
                { type = 'item', name = 'inserter', amount = 5 },
                { type = 'item', name = 'electronic-circuit', amount = 5 },
                { type = 'item', name = 'iron-gear-wheel', amount = 5 },
                { type = 'item', name = 'iron-plate', amount = 5 },
                { type = 'item', name = 'transport-belt', amount = 5 },
            },
            results = { { type = 'item', name = 'loader', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'car',
            enabled = false,
            energy_required = 2,
            ingredients = {
                { type = 'item', name = 'engine-unit', amount = 8 },
                { type = 'item', name = 'iron-plate', amount = 20 },
                { type = 'item', name = 'steel-plate', amount = 5 },
            },
            results = { { type = 'item', name = 'car', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'engine-unit',
            energy_required = 10,
            category = 'advanced-crafting',
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 1 },
                { type = 'item', name = 'iron-gear-wheel', amount = 1 },
                { type = 'item', name = 'pipe', amount = 2 },
            },
            results = { { type = 'item', name = 'engine-unit', amount = 1 } },
            enabled = false,
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'iron-chest',
            enabled = true,
            ingredients = { { type = 'item', name = 'iron-plate', amount = 8 } },
            results = { { type = 'item', name = 'iron-chest', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'big-electric-pole',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'iron-stick', amount = 8 },
                { type = 'item', name = 'steel-plate', amount = 5 },
                { type = 'item', name = 'copper-cable', amount = 4 },
            },
            results = { { type = 'item', name = 'big-electric-pole', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'medium-electric-pole',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'iron-stick', amount = 4 },
                { type = 'item', name = 'steel-plate', amount = 2 },
                { type = 'item', name = 'copper-cable', amount = 2 },
            },
            results = { { type = 'item', name = 'medium-electric-pole', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'shotgun',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'iron-plate', amount = 15 },
                { type = 'item', name = 'iron-gear-wheel', amount = 5 },
                { type = 'item', name = 'copper-plate', amount = 10 },
                { type = 'item', name = 'wood', amount = 5 },
            },
            results = { { type = 'item', name = 'shotgun', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'shotgun-shell',
            enabled = false,
            energy_required = 3,
            ingredients = {
                { type = 'item', name = 'copper-plate', amount = 2 },
                { type = 'item', name = 'iron-plate', amount = 2 },
            },
            results = { { type = 'item', name = 'shotgun-shell', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'piercing-rounds-magazine',
            enabled = false,
            energy_required = 6,
            ingredients = {
                { type = 'item', name = 'firearm-magazine', amount = 2 },
                { type = 'item', name = 'steel-plate', amount = 1 },
                { type = 'item', name = 'copper-plate', amount = 2 },
            },
            results = { { type = 'item', name = 'piercing-rounds-magazine', amount = 2 } },
        },
        {
            type = 'recipe',
            name = 'grenade',
            enabled = false,
            energy_required = 8,
            ingredients = {
                { type = 'item', name = 'iron-plate', amount = 5 },
                { type = 'item', name = 'coal', amount = 10 },
            },
            results = { { type = 'item', name = 'grenade', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'steel-furnace',
            ingredients = { { type = 'item', name = 'steel-plate', amount = 6 }, { type = 'item', name = 'stone-brick', amount = 10 } },
            results = { { type = 'item', name = 'steel-furnace', amount = 1 } },
            energy_required = 3,
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'gate',
            enabled = false,
            ingredients = { { type = 'item', name = 'stone-wall', amount = 1 }, { type = 'item', name = 'steel-plate', amount = 2 }, { type = 'item', name = 'electronic-circuit', amount = 2 } },
            results = { { type = 'item', name = 'gate', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'heavy-armor',
            enabled = false,
            energy_required = 8,
            ingredients = { { type = 'item', name = 'copper-plate', amount = 100 }, { type = 'item', name = 'steel-plate', amount = 50 } },
            results = { { type = 'item', name = 'heavy-armor', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'steel-chest',
            enabled = false,
            ingredients = { { type = 'item', name = 'steel-plate', amount = 8 } },
            results = { { type = 'item', name = 'steel-chest', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'fast-underground-belt',
            category = 'metallurgy-or-assembling',
            energy_required = 2,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'iron-gear-wheel', amount = 40 },
                { type = 'item', name = 'underground-belt', amount = 2 },
            },
            results = { { type = 'item', name = 'fast-underground-belt', amount = 2 } },
        },
        {
            type = 'recipe',
            name = 'fast-splitter',
            category = 'metallurgy-or-assembling',
            enabled = false,
            energy_required = 2,
            ingredients = {
                { type = 'item', name = 'splitter', amount = 1 },
                { type = 'item', name = 'iron-gear-wheel', amount = 10 },
                { type = 'item', name = 'electronic-circuit', amount = 10 },
            },
            results = { { type = 'item', name = 'fast-splitter', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'concrete',
            energy_required = 10,
            enabled = false,
            category = 'crafting-with-fluid',
            ingredients = {
                { type = 'item', name = 'stone-brick', amount = 5 },
                { type = 'item', name = 'iron-ore', amount = 1 },
                { type = 'fluid', name = 'water', amount = 100 },
            },
            results = { { type = 'item', name = 'concrete', amount = 10 } },
        },
        {
            type = 'recipe',
            name = 'hazard-concrete',
            energy_required = 0.25,
            enabled = false,
            category = 'crafting',
            ingredients = {
                { type = 'item', name = 'concrete', amount = 10 },
            },
            results = { { type = 'item', name = 'hazard-concrete', amount = 10 } },
        },
        {
            type = 'recipe',
            name = 'refined-concrete',
            energy_required = 15,
            enabled = false,
            category = 'crafting-with-fluid',
            ingredients = {
                { type = 'item', name = 'concrete', amount = 20 },
                { type = 'item', name = 'iron-stick', amount = 8 },
                { type = 'item', name = 'steel-plate', amount = 1 },
                { type = 'fluid', name = 'water', amount = 100 },
            },
            results = { { type = 'item', name = 'refined-concrete', amount = 10 } },
        },
        {
            type = 'recipe',
            name = 'refined-hazard-concrete',
            energy_required = 0.25,
            enabled = false,
            category = 'crafting',
            ingredients = {
                { type = 'item', name = 'refined-concrete', amount = 10 },
            },
            results = { { type = 'item', name = 'refined-hazard-concrete', amount = 10 } },
        },
        {
            type = 'recipe',
            name = 'landfill',
            energy_required = 0.5,
            enabled = false,
            auto_recycle = false,
            category = 'crafting',
            ingredients = {
                { type = 'item', name = 'stone', amount = 50 },
            },
            results = { { type = 'item', name = 'landfill', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'fast-transport-belt',
            category = 'metallurgy-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'iron-gear-wheel', amount = 5 },
                { type = 'item', name = 'transport-belt', amount = 1 },
            },
            results = { { type = 'item', name = 'fast-transport-belt', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'solar-panel',
            category = 'electronics-or-assembling',
            energy_required = 10,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 5 },
                { type = 'item', name = 'electronic-circuit', amount = 15 },
                { type = 'item', name = 'copper-plate', amount = 5 },
            },
            results = { { type = 'item', name = 'solar-panel', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'rail',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'stone', amount = 1 },
                { type = 'item', name = 'iron-stick', amount = 1 },
                { type = 'item', name = 'steel-plate', amount = 1 },
            },
            results = { { type = 'item', name = 'rail', amount = 2 } },
        },
        {
            type = 'recipe',
            name = 'locomotive',
            energy_required = 4,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'engine-unit', amount = 20 },
                { type = 'item', name = 'electronic-circuit', amount = 10 },
                { type = 'item', name = 'steel-plate', amount = 30 },
            },
            results = { { type = 'item', name = 'locomotive', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'cargo-wagon',
            energy_required = 1,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'iron-gear-wheel', amount = 10 },
                { type = 'item', name = 'iron-plate', amount = 20 },
                { type = 'item', name = 'steel-plate', amount = 20 },
            },
            results = { { type = 'item', name = 'cargo-wagon', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'rail-signal',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 1 },
                { type = 'item', name = 'iron-plate', amount = 5 },
            },
            results = { { type = 'item', name = 'rail-signal', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'rail-chain-signal',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 1 },
                { type = 'item', name = 'iron-plate', amount = 5 },
            },
            results = { { type = 'item', name = 'rail-chain-signal', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'train-stop',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 5 },
                { type = 'item', name = 'iron-plate', amount = 6 },
                { type = 'item', name = 'iron-stick', amount = 6 },
                { type = 'item', name = 'steel-plate', amount = 3 },
            },
            results = { { type = 'item', name = 'train-stop', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'copper-plate',
            category = 'smelting',
            auto_recycle = false,
            energy_required = 3.2,
            ingredients = { { type = 'item', name = 'copper-ore', amount = 1 } },
            results = { { type = 'item', name = 'copper-plate', amount = 1 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'iron-plate',
            category = 'smelting',
            auto_recycle = false,
            energy_required = 3.2,
            ingredients = { { type = 'item', name = 'iron-ore', amount = 1 } },
            results = { { type = 'item', name = 'iron-plate', amount = 1 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'stone-brick',
            category = 'smelting',
            energy_required = 3.2,
            enabled = true,
            ingredients = { { type = 'item', name = 'stone', amount = 2 } },
            results = { { type = 'item', name = 'stone-brick', amount = 1 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'steel-plate',
            category = 'smelting',
            enabled = false,
            energy_required = 16,
            ingredients = { { type = 'item', name = 'iron-plate', amount = 5 } },
            results = { { type = 'item', name = 'steel-plate', amount = 1 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'arithmetic-combinator',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'copper-cable', amount = 5 },
                { type = 'item', name = 'electronic-circuit', amount = 5 },
            },
            results = { { type = 'item', name = 'arithmetic-combinator', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'decider-combinator',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'copper-cable', amount = 5 },
                { type = 'item', name = 'electronic-circuit', amount = 5 },
            },
            results = { { type = 'item', name = 'decider-combinator', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'constant-combinator',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'copper-cable', amount = 5 },
                { type = 'item', name = 'electronic-circuit', amount = 2 },
            },
            results = { { type = 'item', name = 'constant-combinator', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'selector-combinator',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'advanced-circuit', amount = 2 },
                { type = 'item', name = 'decider-combinator', amount = 5 },
            },
            results = { { type = 'item', name = 'selector-combinator', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'power-switch',
            enabled = false,
            energy_required = 2,
            ingredients = {
                { type = 'item', name = 'iron-plate', amount = 5 },
                { type = 'item', name = 'copper-cable', amount = 5 },
                { type = 'item', name = 'electronic-circuit', amount = 2 },
            },
            results = { { type = 'item', name = 'power-switch', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'programmable-speaker',
            enabled = false,
            energy_required = 2,
            ingredients = {
                { type = 'item', name = 'iron-plate', amount = 3 },
                { type = 'item', name = 'iron-stick', amount = 4 },
                { type = 'item', name = 'copper-cable', amount = 5 },
                { type = 'item', name = 'electronic-circuit', amount = 4 },
            },
            results = { { type = 'item', name = 'programmable-speaker', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'poison-capsule',
            enabled = false,
            energy_required = 8,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 3 },
                { type = 'item', name = 'electronic-circuit', amount = 3 },
                { type = 'item', name = 'coal', amount = 10 },
            },
            results = { { type = 'item', name = 'poison-capsule', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'slowdown-capsule',
            enabled = false,
            energy_required = 8,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 2 },
                { type = 'item', name = 'electronic-circuit', amount = 2 },
                { type = 'item', name = 'coal', amount = 5 },
            },
            results = { { type = 'item', name = 'slowdown-capsule', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'cluster-grenade',
            enabled = false,
            energy_required = 8,
            ingredients = {
                { type = 'item', name = 'grenade', amount = 7 },
                { type = 'item', name = 'explosives', amount = 5 },
                { type = 'item', name = 'steel-plate', amount = 5 },
            },
            results = { { type = 'item', name = 'cluster-grenade', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'defender-capsule',
            enabled = false,
            energy_required = 8,
            ingredients = {
                { type = 'item', name = 'piercing-rounds-magazine', amount = 3 },
                { type = 'item', name = 'electronic-circuit', amount = 3 },
                { type = 'item', name = 'iron-gear-wheel', amount = 3 },
            },
            results = { { type = 'item', name = 'defender-capsule', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'distractor-capsule',
            enabled = false,
            energy_required = 15,
            ingredients = {
                { type = 'item', name = 'defender-capsule', amount = 4 },
                { type = 'item', name = 'advanced-circuit', amount = 3 },
            },
            results = { { type = 'item', name = 'distractor-capsule', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'destroyer-capsule',
            enabled = false,
            energy_required = 15,
            ingredients = {
                { type = 'item', name = 'distractor-capsule', amount = 4 },
                { type = 'item', name = 'speed-module', amount = 1 },
            },
            results = { { type = 'item', name = 'destroyer-capsule', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'cliff-explosives',
            enabled = false,
            energy_required = 8,
            ingredients = {
                { type = 'item', name = 'explosives', amount = 10 },
                { type = 'item', name = 'grenade', amount = 1 },
                { type = 'item', name = 'barrel', amount = 1 },
            },
            results = { { type = 'item', name = 'cliff-explosives', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'uranium-rounds-magazine',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'piercing-rounds-magazine', amount = 1 },
                { type = 'item', name = 'uranium-238', amount = 1 },
            },
            results = { { type = 'item', name = 'uranium-rounds-magazine', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'rocket',
            enabled = false,
            energy_required = 4,
            ingredients = {
                { type = 'item', name = 'explosives', amount = 1 },
                { type = 'item', name = 'iron-plate', amount = 2 },
            },
            results = { { type = 'item', name = 'rocket', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'explosive-rocket',
            enabled = false,
            energy_required = 8,
            ingredients = {
                { type = 'item', name = 'rocket', amount = 1 },
                { type = 'item', name = 'explosives', amount = 2 },
            },
            results = { { type = 'item', name = 'explosive-rocket', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'atomic-bomb',
            enabled = false,
            energy_required = 50,
            ingredients = {
                { type = 'item', name = 'processing-unit', amount = 10 },
                { type = 'item', name = 'explosives', amount = 10 },
                { type = 'item', name = 'uranium-235', amount = 30 },
            },
            results = { { type = 'item', name = 'atomic-bomb', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'piercing-shotgun-shell',
            enabled = false,
            energy_required = 8,
            ingredients = {
                { type = 'item', name = 'shotgun-shell', amount = 2 },
                { type = 'item', name = 'copper-plate', amount = 5 },
                { type = 'item', name = 'steel-plate', amount = 2 },
            },
            results = { { type = 'item', name = 'piercing-shotgun-shell', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'cannon-shell',
            enabled = false,
            energy_required = 8,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 2 },
                { type = 'item', name = 'plastic-bar', amount = 2 },
                { type = 'item', name = 'explosives', amount = 1 },
            },
            results = { { type = 'item', name = 'cannon-shell', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'explosive-cannon-shell',
            enabled = false,
            energy_required = 8,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 2 },
                { type = 'item', name = 'plastic-bar', amount = 2 },
                { type = 'item', name = 'explosives', amount = 2 },
            },
            results = { { type = 'item', name = 'explosive-cannon-shell', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'uranium-cannon-shell',
            enabled = false,
            energy_required = 12,
            ingredients = {
                { type = 'item', name = 'cannon-shell', amount = 1 },
                { type = 'item', name = 'uranium-238', amount = 1 },
            },
            results = { { type = 'item', name = 'uranium-cannon-shell', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'explosive-uranium-cannon-shell',
            enabled = false,
            energy_required = 12,
            ingredients = {
                { type = 'item', name = 'explosive-cannon-shell', amount = 1 },
                { type = 'item', name = 'uranium-238', amount = 1 },
            },
            results = { { type = 'item', name = 'explosive-uranium-cannon-shell', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'artillery-shell',
            enabled = false,
            energy_required = 15,
            ingredients = {
                { type = 'item', name = 'explosive-cannon-shell', amount = 4 },
                { type = 'item', name = 'radar', amount = 1 },
                { type = 'item', name = 'explosives', amount = 8 },
            },
            results = { { type = 'item', name = 'artillery-shell', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'flamethrower-ammo',
            category = 'chemistry',
            enabled = false,
            energy_required = 6,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 5 },
                { type = 'fluid', name = 'crude-oil', amount = 100 },
            },
            results = { { type = 'item', name = 'flamethrower-ammo', amount = 1 } },
            crafting_machine_tint = {
                primary = { r = 1.000, g = 0.735, b = 0.643, a = 1.000 }, -- #ffbba4ff
                secondary = { r = 0.749, g = 0.557, b = 0.490, a = 1.000 }, -- #bf8e7dff
                tertiary = { r = 0.637, g = 0.637, b = 0.637, a = 1.000 }, -- #a2a2a2ff
                quaternary = { r = 0.283, g = 0.283, b = 0.283, a = 1.000 }, -- #484848ff
            },
        },
        {
            type = 'recipe',
            name = 'express-transport-belt',
            category = 'crafting-with-fluid-or-metallurgy',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'iron-gear-wheel', amount = 10 },
                { type = 'item', name = 'fast-transport-belt', amount = 1 },
                { type = 'fluid', name = 'lubricant', amount = 20 },
            },
            results = { { type = 'item', name = 'express-transport-belt', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'assembling-machine-3',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'speed-module', amount = 4 },
                { type = 'item', name = 'assembling-machine-2', amount = 2 },
            },
            results = { { type = 'item', name = 'assembling-machine-3', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'tank',
            enabled = false,
            energy_required = 5,
            ingredients = {
                { type = 'item', name = 'engine-unit', amount = 32 },
                { type = 'item', name = 'steel-plate', amount = 50 },
                { type = 'item', name = 'iron-gear-wheel', amount = 15 },
                { type = 'item', name = 'advanced-circuit', amount = 10 },
            },
            results = { { type = 'item', name = 'tank', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'spidertron',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'exoskeleton-equipment', amount = 4 },
                { type = 'item', name = 'fission-reactor-equipment', amount = 2 },
                { type = 'item', name = 'rocket-launcher', amount = 4 },
                { type = 'item', name = 'processing-unit', amount = 16 },
                { type = 'item', name = 'low-density-structure', amount = 150 },
                { type = 'item', name = 'radar', amount = 2 },
                { type = 'item', name = 'efficiency-module-3', amount = 2 },
                { type = 'item', name = 'raw-fish', amount = 1 },
            },
            results = { { type = 'item', name = 'spidertron', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'fluid-wagon',
            enabled = false,
            energy_required = 1.5,
            ingredients = {
                { type = 'item', name = 'iron-gear-wheel', amount = 10 },
                { type = 'item', name = 'steel-plate', amount = 16 },
                { type = 'item', name = 'pipe', amount = 8 },
                { type = 'item', name = 'storage-tank', amount = 1 },
            },
            results = { { type = 'item', name = 'fluid-wagon', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'artillery-wagon',
            energy_required = 4,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'engine-unit', amount = 64 },
                { type = 'item', name = 'iron-gear-wheel', amount = 10 },
                { type = 'item', name = 'steel-plate', amount = 40 },
                { type = 'item', name = 'pipe', amount = 16 },
                { type = 'item', name = 'advanced-circuit', amount = 20 },
            },
            results = { { type = 'item', name = 'artillery-wagon', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'modular-armor',
            enabled = false,
            energy_required = 15,
            ingredients = {
                { type = 'item', name = 'advanced-circuit', amount = 30 },
                { type = 'item', name = 'steel-plate', amount = 50 },
            },
            results = { { type = 'item', name = 'modular-armor', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'power-armor',
            enabled = false,
            energy_required = 20,
            ingredients = {
                { type = 'item', name = 'processing-unit', amount = 40 },
                { type = 'item', name = 'electric-engine-unit', amount = 20 },
                { type = 'item', name = 'steel-plate', amount = 40 },
            },
            results = { { type = 'item', name = 'power-armor', amount = 1 } },
            requester_paste_multiplier = 1,
        },
        {
            type = 'recipe',
            name = 'power-armor-mk2',
            enabled = false,
            energy_required = 25,
            ingredients = {
                { type = 'item', name = 'efficiency-module-2', amount = 25 },
                { type = 'item', name = 'speed-module-2', amount = 25 },
                { type = 'item', name = 'processing-unit', amount = 60 },
                { type = 'item', name = 'electric-engine-unit', amount = 40 },
                { type = 'item', name = 'low-density-structure', amount = 30 },
            },
            results = { { type = 'item', name = 'power-armor-mk2', amount = 1 } },
            requester_paste_multiplier = 1,
        },
        {
            type = 'recipe',
            name = 'flamethrower',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 5 },
                { type = 'item', name = 'iron-gear-wheel', amount = 10 },
            },
            results = { { type = 'item', name = 'flamethrower', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'land-mine',
            enabled = false,
            energy_required = 5,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 1 },
                { type = 'item', name = 'explosives', amount = 2 },
            },
            results = { { type = 'item', name = 'land-mine', amount = 4 } },
        },
        {
            type = 'recipe',
            name = 'rocket-launcher',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'iron-plate', amount = 5 },
                { type = 'item', name = 'iron-gear-wheel', amount = 5 },
                { type = 'item', name = 'electronic-circuit', amount = 5 },
            },
            results = { { type = 'item', name = 'rocket-launcher', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'combat-shotgun',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 15 },
                { type = 'item', name = 'iron-gear-wheel', amount = 5 },
                { type = 'item', name = 'copper-plate', amount = 10 },
                { type = 'item', name = 'wood', amount = 10 },
            },
            results = { { type = 'item', name = 'combat-shotgun', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'chemical-science-pack',
            enabled = false,
            energy_required = 24,
            ingredients = {
                { type = 'item', name = 'engine-unit', amount = 2 },
                { type = 'item', name = 'advanced-circuit', amount = 3 },
                { type = 'item', name = 'sulfur', amount = 1 },
            },
            results = { { type = 'item', name = 'chemical-science-pack', amount = 2 } },
            crafting_machine_tint = {
                primary = { r = 0.0, g = 0.8, b = 1.0, a = 1.000 },
                secondary = { r = 0.0, g = 0.8, b = 1.0, a = 1.000 },
            },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'military-science-pack',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'piercing-rounds-magazine', amount = 1 },
                { type = 'item', name = 'grenade', amount = 1 },
                { type = 'item', name = 'stone-wall', amount = 2 },
            },
            results = { { type = 'item', name = 'military-science-pack', amount = 2 } },
            crafting_machine_tint = {
                primary = { r = 0.3, g = 0.3, b = 0.3, a = 1.000 },
                secondary = { r = 0.3, g = 0.3, b = 0.3, a = 1.000 },
            },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'production-science-pack',
            enabled = false,
            energy_required = 21,
            ingredients = {
                { type = 'item', name = 'electric-furnace', amount = 1 },
                { type = 'item', name = 'productivity-module', amount = 1 },
                { type = 'item', name = 'rail', amount = 30 },
            },
            results = { { type = 'item', name = 'production-science-pack', amount = 3 } },
            crafting_machine_tint = {
                primary = { r = 0.8, g = 0.0, b = 1.0, a = 1.000 },
                secondary = { r = 0.8, g = 0.0, b = 1.0, a = 1.000 },
            },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'utility-science-pack',
            enabled = false,
            energy_required = 21,
            ingredients = {
                { type = 'item', name = 'low-density-structure', amount = 3 },
                { type = 'item', name = 'processing-unit', amount = 2 },
                { type = 'item', name = 'flying-robot-frame', amount = 1 },
            },
            results = { { type = 'item', name = 'utility-science-pack', amount = 3 } },
            crafting_machine_tint = {
                primary = { r = 1.0, g = 0.8, b = 0.0, a = 1.000 },
                secondary = { r = 1.0, g = 0.8, b = 0.0, a = 1.000 },
            },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'express-underground-belt',
            energy_required = 2,
            category = 'crafting-with-fluid-or-metallurgy',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'iron-gear-wheel', amount = 80 },
                { type = 'item', name = 'fast-underground-belt', amount = 2 },
                { type = 'fluid', name = 'lubricant', amount = 40 },
            },
            results = { { type = 'item', name = 'express-underground-belt', amount = 2 } },
        },
        {
            type = 'recipe',
            name = 'fast-loader',
            enabled = false,
            hidden = true,
            energy_required = 3,
            ingredients = {
                { type = 'item', name = 'fast-transport-belt', amount = 5 },
                { type = 'item', name = 'loader', amount = 1 },
            },
            results = { { type = 'item', name = 'fast-loader', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'express-loader',
            enabled = false,
            hidden = true,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'express-transport-belt', amount = 5 },
                { type = 'item', name = 'fast-loader', amount = 1 },
            },
            results = { { type = 'item', name = 'express-loader', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'express-splitter',
            category = 'crafting-with-fluid-or-metallurgy',
            enabled = false,
            energy_required = 2,
            ingredients = {
                { type = 'item', name = 'fast-splitter', amount = 1 },
                { type = 'item', name = 'iron-gear-wheel', amount = 10 },
                { type = 'item', name = 'advanced-circuit', amount = 10 },
                { type = 'fluid', name = 'lubricant', amount = 80 },
            },
            results = { { type = 'item', name = 'express-splitter', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'advanced-circuit',
            category = 'electronics-or-assembling',
            enabled = false,
            energy_required = 6,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 2 },
                { type = 'item', name = 'plastic-bar', amount = 2 },
                { type = 'item', name = 'copper-cable', amount = 4 },
            },
            results = { { type = 'item', name = 'advanced-circuit', amount = 1 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'processing-unit',
            category = 'electronics-or-assembling',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 20 },
                { type = 'item', name = 'advanced-circuit', amount = 2 },
                { type = 'fluid', name = 'sulfuric-acid', amount = 5 },
            },
            results = { { type = 'item', name = 'processing-unit', amount = 1 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'logistic-robot',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'flying-robot-frame', amount = 1 },
                { type = 'item', name = 'advanced-circuit', amount = 2 },
            },
            results = { { type = 'item', name = 'logistic-robot', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'construction-robot',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'flying-robot-frame', amount = 1 },
                { type = 'item', name = 'electronic-circuit', amount = 2 },
            },
            results = { { type = 'item', name = 'construction-robot', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'passive-provider-chest',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'steel-chest', amount = 1 },
                { type = 'item', name = 'electronic-circuit', amount = 3 },
                { type = 'item', name = 'advanced-circuit', amount = 1 },
            },
            results = { { type = 'item', name = 'passive-provider-chest', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'active-provider-chest',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'steel-chest', amount = 1 },
                { type = 'item', name = 'electronic-circuit', amount = 3 },
                { type = 'item', name = 'advanced-circuit', amount = 1 },
            },
            results = { { type = 'item', name = 'active-provider-chest', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'storage-chest',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'steel-chest', amount = 1 },
                { type = 'item', name = 'electronic-circuit', amount = 3 },
                { type = 'item', name = 'advanced-circuit', amount = 1 },
            },
            results = { { type = 'item', name = 'storage-chest', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'buffer-chest',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'steel-chest', amount = 1 },
                { type = 'item', name = 'electronic-circuit', amount = 3 },
                { type = 'item', name = 'advanced-circuit', amount = 1 },
            },
            results = { { type = 'item', name = 'buffer-chest', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'requester-chest',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'steel-chest', amount = 1 },
                { type = 'item', name = 'electronic-circuit', amount = 3 },
                { type = 'item', name = 'advanced-circuit', amount = 1 },
            },
            results = { { type = 'item', name = 'requester-chest', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'rocket-silo',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 1000 },
                { type = 'item', name = 'concrete', amount = 1000 },
                { type = 'item', name = 'pipe', amount = 100 },
                { type = 'item', name = 'processing-unit', amount = 200 },
                { type = 'item', name = 'electric-engine-unit', amount = 200 },
            },
            energy_required = 30,
            results = { { type = 'item', name = 'rocket-silo', amount = 1 } },
            requester_paste_multiplier = 1,
        },
        {
            type = 'recipe',
            name = 'cargo-landing-pad',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'concrete', amount = 200 },
                { type = 'item', name = 'steel-plate', amount = 25 },
                { type = 'item', name = 'processing-unit', amount = 10 },
            },
            energy_required = 30,
            results = { { type = 'item', name = 'cargo-landing-pad', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'roboport',
            enabled = false,
            energy_required = 5,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 45 },
                { type = 'item', name = 'iron-gear-wheel', amount = 45 },
                { type = 'item', name = 'advanced-circuit', amount = 45 },
            },
            results = { { type = 'item', name = 'roboport', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'substation',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 10 },
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'copper-cable', amount = 6 },
            },
            results = { { type = 'item', name = 'substation', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'accumulator',
            category = 'electronics-or-assembling',
            energy_required = 10,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'iron-plate', amount = 2 },
                { type = 'item', name = 'battery', amount = 5 },
            },
            results = { { type = 'item', name = 'accumulator', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'electric-furnace',
            ingredients = { { type = 'item', name = 'steel-plate', amount = 10 }, { type = 'item', name = 'advanced-circuit', amount = 5 }, { type = 'item', name = 'stone-brick', amount = 10 } },
            results = { { type = 'item', name = 'electric-furnace', amount = 1 } },
            energy_required = 5,
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'beacon',
            category = 'electronics-or-assembling',
            enabled = false,
            energy_required = 15,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 20 },
                { type = 'item', name = 'advanced-circuit', amount = 20 },
                { type = 'item', name = 'steel-plate', amount = 10 },
                { type = 'item', name = 'copper-cable', amount = 10 },
            },
            results = { { type = 'item', name = 'beacon', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'pumpjack',
            energy_required = 5,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 5 },
                { type = 'item', name = 'iron-gear-wheel', amount = 10 },
                { type = 'item', name = 'electronic-circuit', amount = 5 },
                { type = 'item', name = 'pipe', amount = 10 },
            },
            results = { { type = 'item', name = 'pumpjack', amount = 1 } },
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'oil-refinery',
            energy_required = 8,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 15 },
                { type = 'item', name = 'iron-gear-wheel', amount = 10 },
                { type = 'item', name = 'stone-brick', amount = 10 },
                { type = 'item', name = 'electronic-circuit', amount = 10 },
                { type = 'item', name = 'pipe', amount = 10 },
            },
            results = { { type = 'item', name = 'oil-refinery', amount = 1 } },
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'electric-engine-unit',
            category = 'crafting-with-fluid',
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'engine-unit', amount = 1 },
                { type = 'fluid', name = 'lubricant', amount = 15 },
                { type = 'item', name = 'electronic-circuit', amount = 2 },
            },
            results = { { type = 'item', name = 'electric-engine-unit', amount = 1 } },
            enabled = false,
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'flying-robot-frame',
            energy_required = 20,
            ingredients = {
                { type = 'item', name = 'electric-engine-unit', amount = 1 },
                { type = 'item', name = 'battery', amount = 2 },
                { type = 'item', name = 'steel-plate', amount = 1 },
                { type = 'item', name = 'electronic-circuit', amount = 3 },
            },
            results = { { type = 'item', name = 'flying-robot-frame', amount = 1 } },
            enabled = false,
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'explosives',
            category = 'cryogenics-or-assembling',
            crafting_machine_tint = {
                primary = { r = 0.968, g = 0.381, b = 0.259, a = 1.000 }, -- #f66142ff
                secondary = { r = 0.892, g = 0.664, b = 0.534, a = 1.000 }, -- #e3a988ff
                tertiary = { r = 1.000, g = 0.978, b = 0.513, a = 1.000 }, -- #fff982ff
                quaternary = { r = 0.210, g = 0.170, b = 0.013, a = 1.000 }, -- #352b03ff
            },
            energy_required = 4,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'sulfur', amount = 1 },
                { type = 'item', name = 'coal', amount = 1 },
                { type = 'fluid', name = 'water', amount = 10 },
            },
            results = { { type = 'item', name = 'explosives', amount = 2 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'battery',
            category = 'cryogenics-or-assembling',
            energy_required = 4,
            enabled = false,
            ingredients = {
                { type = 'fluid', name = 'sulfuric-acid', amount = 20 },
                { type = 'item', name = 'iron-plate', amount = 1 },
                { type = 'item', name = 'copper-plate', amount = 1 },
            },
            results = { { type = 'item', name = 'battery', amount = 1 } },
            crafting_machine_tint = {
                primary = { r = 0.965, g = 0.482, b = 0.338, a = 1.000 }, -- #f67a56ff
                secondary = { r = 0.831, g = 0.560, b = 0.222, a = 1.000 }, -- #d38e38ff
                tertiary = { r = 0.728, g = 0.818, b = 0.443, a = 1.000 }, -- #b9d070ff
                quaternary = { r = 0.939, g = 0.763, b = 0.191, a = 1.000 }, -- #efc230ff
            },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'storage-tank',
            energy_required = 3,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'iron-plate', amount = 20 },
                { type = 'item', name = 'steel-plate', amount = 5 },
            },
            results = { { type = 'item', name = 'storage-tank', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'pump',
            energy_required = 2,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'engine-unit', amount = 1 },
                { type = 'item', name = 'steel-plate', amount = 1 },
                { type = 'item', name = 'pipe', amount = 1 },
            },
            results = { { type = 'item', name = 'pump', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'chemical-plant',
            energy_required = 5,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 5 },
                { type = 'item', name = 'iron-gear-wheel', amount = 5 },
                { type = 'item', name = 'electronic-circuit', amount = 5 },
                { type = 'item', name = 'pipe', amount = 5 },
            },
            results = { { type = 'item', name = 'chemical-plant', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'low-density-structure',
            category = 'crafting',
            energy_required = 15,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 2 },
                { type = 'item', name = 'copper-plate', amount = 20 },
                { type = 'item', name = 'plastic-bar', amount = 5 },
            },
            results = { { type = 'item', name = 'low-density-structure', amount = 1 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'rocket-fuel',
            energy_required = 15,
            enabled = false,
            category = 'crafting-with-fluid',
            ingredients = {
                { type = 'item', name = 'solid-fuel', amount = 10 },
                { type = 'fluid', name = 'light-oil', amount = 10 },
            },
            results = { { type = 'item', name = 'rocket-fuel', amount = 1 } },
            crafting_machine_tint = {
                primary = { r = 1.0, g = 0.7, b = 0.0, a = 1.000 },
                secondary = { r = 1.0, g = 0.7, b = 0.0, a = 1.000 },
            },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'rocket-part',
            energy_required = 3,
            enabled = false,
            hide_from_player_crafting = true,
            auto_recycle = false,
            category = 'rocket-building',
            ingredients = {
                { type = 'item', name = 'processing-unit', amount = 10 },
                { type = 'item', name = 'low-density-structure', amount = 10 },
                { type = 'item', name = 'rocket-fuel', amount = 10 },
            },
            results = { { type = 'item', name = 'rocket-part', amount = 1 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'satellite',
            energy_required = 5,
            enabled = false,
            category = 'crafting',
            ingredients = {
                { type = 'item', name = 'low-density-structure', amount = 100 },
                { type = 'item', name = 'solar-panel', amount = 100 },
                { type = 'item', name = 'accumulator', amount = 100 },
                { type = 'item', name = 'radar', amount = 5 },
                { type = 'item', name = 'processing-unit', amount = 100 },
                { type = 'item', name = 'rocket-fuel', amount = 50 },
            },
            results = { { type = 'item', name = 'satellite', amount = 1 } },
            requester_paste_multiplier = 1,
        },
        {
            type = 'recipe',
            name = 'nuclear-reactor',
            energy_required = 8,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'concrete', amount = 500 },
                { type = 'item', name = 'steel-plate', amount = 500 },
                { type = 'item', name = 'advanced-circuit', amount = 500 },
                { type = 'item', name = 'copper-plate', amount = 500 },
            },
            results = { { type = 'item', name = 'nuclear-reactor', amount = 1 } },
            requester_paste_multiplier = 1,
        },
        {
            type = 'recipe',
            name = 'centrifuge',
            energy_required = 4,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'concrete', amount = 100 },
                { type = 'item', name = 'steel-plate', amount = 50 },
                { type = 'item', name = 'advanced-circuit', amount = 100 },
                { type = 'item', name = 'iron-gear-wheel', amount = 100 },
            },
            results = { { type = 'item', name = 'centrifuge', amount = 1 } },
            requester_paste_multiplier = 10,
        },
        {
            type = 'recipe',
            name = 'uranium-processing',
            energy_required = 12,
            enabled = false,
            auto_recycle = false,
            category = 'centrifuging',
            ingredients = { { type = 'item', name = 'uranium-ore', amount = 10 } },
            icon = '__base__/graphics/icons/uranium-processing.png',
            subgroup = 'uranium-processing',
            order = 'a[uranium-processing]-a[uranium-processing]',
            results = {
                {
                    type = 'item',
                    name = 'uranium-235',
                    probability = 0.007,
                    amount = 1,
                },
                {
                    type = 'item',
                    name = 'uranium-238',
                    probability = 0.993,
                    amount = 1,
                },
            },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'kovarex-enrichment-process',
            energy_required = 60,
            enabled = false,
            auto_recycle = false,
            category = 'centrifuging',
            icon = '__base__/graphics/icons/kovarex-enrichment-process.png',
            subgroup = 'uranium-processing',
            order = 'b[uranium-products]-c[kovarex-enrichment-process]',
            ingredients = {
                { type = 'item', name = 'uranium-235', amount = 40, ignored_by_stats = 40 },
                { type = 'item', name = 'uranium-238', amount = 5, ignored_by_stats = 2 },
            },
            results = {
                { type = 'item', name = 'uranium-235', amount = 41, ignored_by_stats = 40, ignored_by_productivity = 40 },
                { type = 'item', name = 'uranium-238', amount = 2, ignored_by_stats = 2, ignored_by_productivity = 2 },
            },
            main_product = '',
            allow_decomposition = false,
            allow_productivity = true,
            allow_quality = false, -- catalyst would be also bumped on quality
        },
        {
            type = 'recipe',
            name = 'nuclear-fuel',
            energy_required = 90,
            enabled = false,
            category = 'centrifuging',
            subgroup = 'uranium-processing',
            order = 'b[uranium-products]-d[nuclear-fuel]',
            ingredients = { { type = 'item', name = 'uranium-235', amount = 1 }, { type = 'item', name = 'rocket-fuel', amount = 1 } },
            results = { { type = 'item', name = 'nuclear-fuel', amount = 1 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'nuclear-fuel-reprocessing',
            energy_required = 60,
            enabled = false,
            auto_recycle = false,
            category = 'centrifuging',
            ingredients = { { type = 'item', name = 'depleted-uranium-fuel-cell', amount = 5 } },
            icon = '__base__/graphics/icons/nuclear-fuel-reprocessing.png',
            subgroup = 'uranium-processing',
            order = 'b[uranium-products]-b[nuclear-fuel-reprocessing]',
            main_product = '',
            results = { { type = 'item', name = 'uranium-238', amount = 3 } },
            allow_decomposition = false,
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'uranium-fuel-cell',
            energy_required = 10,
            enabled = false,
            auto_recycle = false,
            ingredients = {
                { type = 'item', name = 'iron-plate', amount = 10 },
                { type = 'item', name = 'uranium-235', amount = 1 },
                { type = 'item', name = 'uranium-238', amount = 19 },
            },
            results = { { type = 'item', name = 'uranium-fuel-cell', amount = 10 } },
            subgroup = 'uranium-processing',
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'heat-exchanger',
            energy_required = 3,
            enabled = false,
            ingredients = { { type = 'item', name = 'steel-plate', amount = 10 }, { type = 'item', name = 'copper-plate', amount = 100 }, { type = 'item', name = 'pipe', amount = 10 } },
            results = { { type = 'item', name = 'heat-exchanger', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'heat-pipe',
            energy_required = 1,
            enabled = false,
            ingredients = { { type = 'item', name = 'steel-plate', amount = 10 }, { type = 'item', name = 'copper-plate', amount = 20 } },
            results = { { type = 'item', name = 'heat-pipe', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'steam-turbine',
            enabled = false,
            energy_required = 3,
            ingredients = { { type = 'item', name = 'iron-gear-wheel', amount = 50 }, { type = 'item', name = 'copper-plate', amount = 50 }, { type = 'item', name = 'pipe', amount = 20 } },
            results = { { type = 'item', name = 'steam-turbine', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'rail-support',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'refined-concrete', amount = 20 },
                { type = 'item', name = 'steel-plate', amount = 10 },
            },
            results = { { type = 'item', name = 'rail-support', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'rail-ramp',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'refined-concrete', amount = 100 },
                { type = 'item', name = 'rail', amount = 8 },
                { type = 'item', name = 'steel-plate', amount = 10 },
            },
            results = { { type = 'item', name = 'rail-ramp', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'quality-module',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'electronic-circuit', amount = 5 },
                { type = 'item', name = 'advanced-circuit', amount = 5 },
            },
            energy_required = 15,
            results = { { type = 'item', name = 'quality-module', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'quality-module-2',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'quality-module', amount = 4 },
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'processing-unit', amount = 5 },
            },
            energy_required = 30,
            results = { { type = 'item', name = 'quality-module-2', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'quality-module-3',
            category = 'electronics-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'quality-module-2', amount = 4 },
                { type = 'item', name = 'advanced-circuit', amount = 5 },
                { type = 'item', name = 'processing-unit', amount = 5 },
            },
            energy_required = 60,
            results = { { type = 'item', name = 'quality-module-3', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'recycler',
            ingredients = {
                { type = 'item', name = 'processing-unit', amount = 6 },
                { type = 'item', name = 'steel-plate', amount = 20 },
                { type = 'item', name = 'iron-gear-wheel', amount = 40 },
                { type = 'item', name = 'concrete', amount = 20 },
            },
            results = { { type = 'item', name = 'recycler', amount = 1 } },
            energy_required = 3,
            enabled = false,
        },
    })
    -- ==================================================================== Space Age
    data:extend({
        {
            type = 'recipe',
            name = 'big-mining-drill',
            category = 'metallurgy-or-assembling',
            enabled = false,
            energy_required = 30,
            ingredients = {
                { type = 'item', name = 'electric-mining-drill', amount = 1 },
                { type = 'fluid', name = 'molten-iron', amount = 200 },
                { type = 'item', name = 'tungsten-carbide', amount = 20 },
                { type = 'item', name = 'electric-engine-unit', amount = 10 },
                { type = 'item', name = 'advanced-circuit', amount = 10 },
            },
            results = { { type = 'item', name = 'big-mining-drill', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'fusion-reactor',
            category = 'cryogenics',
            energy_required = 60,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'tungsten-plate', amount = 200 },
                { type = 'item', name = 'superconductor', amount = 200 },
                { type = 'item', name = 'quantum-processor', amount = 250 },
            },
            results = { { type = 'item', name = 'fusion-reactor', amount = 1 } },
            requester_paste_multiplier = 1,
            crafting_machine_tint = {
                primary = { r = 0.298, g = 0.442, b = 0.518, a = 1.000 }, -- #4c7084ff
                secondary = { r = 0.864, g = 0.706, b = 0.902, a = 1.000 }, -- #dcb4e6ff
                tertiary = { r = 0.159, g = 0.136, b = 0.207, a = 1.000 }, -- #282234ff
                quaternary = { r = 0.945, g = 0.370, b = 1.000, a = 1.000 }, -- #f15effff
            },
        },
        {
            type = 'recipe',
            name = 'fusion-generator',
            category = 'cryogenics',
            energy_required = 30,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'tungsten-plate', amount = 100 },
                { type = 'item', name = 'superconductor', amount = 100 },
                { type = 'item', name = 'quantum-processor', amount = 50 },
            },
            results = { { type = 'item', name = 'fusion-generator', amount = 1 } },
            requester_paste_multiplier = 1,
            crafting_machine_tint = {
                primary = { r = 0.298, g = 0.442, b = 0.518, a = 1.000 }, -- #4c7084ff
                secondary = { r = 0.864, g = 0.706, b = 0.902, a = 1.000 }, -- #dcb4e6ff
                tertiary = { r = 0.159, g = 0.136, b = 0.207, a = 1.000 }, -- #282234ff
                quaternary = { r = 0.945, g = 0.370, b = 1.000, a = 1.000 }, -- #f15effff
            },
        },
        {
            type = 'recipe',
            name = 'fusion-power-cell',
            category = 'cryogenics',
            auto_recycle = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'lithium-plate', amount = 5 },
                { type = 'item', name = 'holmium-plate', amount = 1 },
                { type = 'fluid', name = 'ammonia', amount = 100 },
            },
            results = { { type = 'item', name = 'fusion-power-cell', amount = 1 } },
            allow_productivity = true,
            enabled = false,
            crafting_machine_tint = {
                primary = { r = 0.054, g = 0.897, b = 1.000, a = 1.000 }, -- #0de4ffff
                secondary = { r = 1.000, g = 0.779, b = 0.974, a = 1.000 }, -- #ffc6f8ff
                tertiary = { r = 0.497, g = 0.655, b = 0.757, a = 1.000 }, -- #7ea7c1ff
                quaternary = { r = 0.761, g = 0.312, b = 1.000, a = 1.000 }, -- #c14fffff
            },
        },
        {
            type = 'recipe',
            name = 'carbon-fiber',
            category = 'smelting',
            auto_recycle = false,
            energy_required = 5,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'wood', amount = 10 },
                { type = 'item', name = 'carbon', amount = 1 },
            },
            results = { { type = 'item', name = 'carbon-fiber', amount = 1 } },
            allow_productivity = true,
            crafting_machine_tint = {
                primary = { r = 9, g = 0, b = 220, a = 1.000 },
                secondary = { r = 0, g = 0, b = 0, a = 1.000 },
            },
        },
        {
            type = 'recipe',
            name = 'stack-inserter',
            enabled = false,
            energy_required = 0.5,
            ingredients = {
                { type = 'item', name = 'bulk-inserter', amount = 1 },
                { type = 'item', name = 'processing-unit', amount = 1 },
                { type = 'item', name = 'carbon-fiber', amount = 2 },
            },
            results = { { type = 'item', name = 'stack-inserter', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'biochamber',
            energy_required = 20,
            ingredients = {
                { type = 'item', name = 'advanced-circuit', amount = 10 },
                { type = 'item', name = 'iron-plate', amount = 20 },
                { type = 'item', name = 'electronic-circuit', amount = 5 },
                { type = 'item', name = 'landfill', amount = 1 },
            },
            results = { { type = 'item', name = 'biochamber', amount = 1 } },
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'biolab',
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'lab', amount = 1 },
                { type = 'item', name = 'quantum-processor', amount = 10 },
                { type = 'item', name = 'refined-concrete', amount = 25 },
                { type = 'item', name = 'uranium-235', amount = 3 },
            },
            results = { { type = 'item', name = 'biolab', amount = 1 } },
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'holmium-solution',
            category = 'chemistry',
            subgroup = 'fluid-recipes',
            order = 'f[holmium]-a[holmium-solution]',
            auto_recycle = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'holmium-ore', amount = 2 },
                { type = 'item', name = 'stone', amount = 1 },
                { type = 'fluid', name = 'water', amount = 10 },
            },
            results = {
                { type = 'fluid', name = 'holmium-solution', amount = 100 },
            },
            allow_productivity = true,
            main_product = 'holmium-solution',
            enabled = false,
            crafting_machine_tint = {
                primary = { r = 0.598, g = 0.274, b = 0.501, a = 0.502 }, -- #98457f80
                secondary = { r = 0.524, g = 0.499, b = 0.521, a = 0.502 }, -- #857f8480
                tertiary = { r = 0.716, g = 0.716, b = 0.716, a = 0.502 }, -- #b6b6b680
                quaternary = { r = 0.768, g = 0.487, b = 0.684, a = 0.502 }, -- #c37cae80
            },
        },
        {
            type = 'recipe',
            name = 'holmium-plate',
            category = 'chemistry',
            auto_recycle = false,
            enabled = false,
            ingredients = {
                { type = 'fluid', name = 'holmium-solution', amount = 20, fluidbox_multiplier = 10 },
            },
            energy_required = 1,
            results = { { type = 'item', name = 'holmium-plate', amount = 1 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'superconductor',
            category = 'electronics',
            energy_required = 5,
            ingredients = {
                { type = 'item', name = 'holmium-plate', amount = 1 },
                { type = 'item', name = 'copper-plate', amount = 1 },
                { type = 'item', name = 'plastic-bar', amount = 1 },
                { type = 'fluid', name = 'light-oil', amount = 5 },
            },
            results = { { type = 'item', name = 'superconductor', amount = 2 } },
            allow_productivity = true,
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'supercapacitor',
            category = 'electronics',
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'holmium-plate', amount = 2 },
                { type = 'item', name = 'superconductor', amount = 2 },
                { type = 'item', name = 'electronic-circuit', amount = 4 },
                { type = 'item', name = 'battery', amount = 1 },
                { type = 'fluid', name = 'electrolyte', amount = 10 },
            },
            results = { { type = 'item', name = 'supercapacitor', amount = 1 } },
            allow_productivity = true,
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'lithium',
            category = 'cryogenics-or-assembling',
            auto_recycle = false,
            energy_required = 20,
            ingredients = {
                { type = 'item', name = 'holmium-plate', amount = 1 },
                { type = 'fluid', name = 'lithium-brine', amount = 50 },
                { type = 'fluid', name = 'ammonia', amount = 50 },
            },
            results = { { type = 'item', name = 'lithium', amount = 5 } },
            allow_productivity = true,
            enabled = false,
            crafting_machine_tint = {
                primary = { r = 0.455, g = 0.837, b = 0.563, a = 1.000 }, -- #73d58fff
                secondary = { r = 0.643, g = 0.668, b = 0.739, a = 1.000 }, -- #a3aabcff
                tertiary = { r = 0.591, g = 0.556, b = 0.556, a = 1.000 }, -- #968d8dff
                quaternary = { r = 1.000, g = 1.000, b = 1.000, a = 1.000 }, -- #fffefeff
            },
        },
        {
            type = 'recipe',
            name = 'lithium-plate',
            category = 'smelting',
            auto_recycle = false,
            energy_required = 6.4,
            ingredients = { { type = 'item', name = 'lithium', amount = 1 } },
            results = { { type = 'item', name = 'lithium-plate', amount = 1 } },
            allow_productivity = true,
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'fluoroketone',
            category = 'cryogenics',
            subgroup = 'fluid-recipes',
            order = 'e[cryogenics]-b[fluoroketone]',
            auto_recycle = false,
            energy_required = 10,
            ingredients = {
                { type = 'fluid', name = 'fluorine', amount = 50 },
                { type = 'fluid', name = 'ammonia', amount = 50 },
                { type = 'item', name = 'solid-fuel', amount = 1 },
                { type = 'item', name = 'lithium', amount = 1 },
            },
            results = { { type = 'fluid', name = 'fluoroketone-hot', amount = 50, temperature = 180 } },
            allow_productivity = true,
            enabled = false,
            crafting_machine_tint = {
                primary = { r = 0.365, g = 0.815, b = 0.334, a = 1.000 }, -- #5dcf55ff
                secondary = { r = 0.772, g = 0.394, b = 0.394, a = 1.000 }, -- #c46464ff
                tertiary = { r = 0.116, g = 0.116, b = 0.111, a = 1.000 }, -- #1d1d1cff
                quaternary = { r = 0.395, g = 0.717, b = 0.563, a = 1.000 }, -- #64b68fff
            },
        },
        {
            type = 'recipe',
            name = 'fluoroketone-cooling',
            category = 'cryogenics',
            icon = '__space-age__/graphics/icons/fluid/fluoroketone-cooling.png',
            subgroup = 'fluid-recipes',
            order = 'e[cryogenics]-c[fluoroketone-cooling]',
            auto_recycle = false,
            energy_required = 5,
            ingredients = {
                { type = 'fluid', name = 'fluoroketone-hot', amount = 10, ignored_by_stats = 10 },
            },
            results = {
                { type = 'fluid', name = 'fluoroketone-cold', amount = 10, temperature = -150, ignored_by_stats = 10 },
            },
            show_amount_in_title = false,
            always_show_products = true,
            allow_productivity = false,
            enabled = false,
            crafting_machine_tint = {
                primary = { r = 0.455, g = 0.837, b = 0.563, a = 1.000 }, -- #73d58fff
                secondary = { r = 0.398, g = 0.732, b = 0.681, a = 1.000 }, -- #65baadff
                tertiary = { r = 0.337, g = 0.306, b = 0.306, a = 1.000 }, -- #554e4eff
                quaternary = { r = 0.436, g = 0.743, b = 0.711, a = 1.000 }, -- #6fbdb5ff
            },
        },
        {
            type = 'recipe',
            name = 'cryogenic-plant',
            category = 'cryogenics-or-assembling',
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'refined-concrete', amount = 40 },
                { type = 'item', name = 'superconductor', amount = 20 },
                { type = 'item', name = 'processing-unit', amount = 20 },
                { type = 'item', name = 'lithium-plate', amount = 20 },
            },
            results = { { type = 'item', name = 'cryogenic-plant', amount = 1 } },
            enabled = false,
            crafting_machine_tint = {
                primary = { r = 0.294, g = 0.368, b = 0.862, a = 1.000 }, -- #4a5ddbff
                secondary = { r = 0.420, g = 0.851, b = 0.767, a = 1.000 }, -- #6ad9c3ff
                tertiary = { r = 0.260, g = 0.245, b = 0.301, a = 1.000 }, -- #423e4cff
                quaternary = { r = 0.566, g = 0.841, b = 0.769, a = 1.000 }, -- #90d6c4ff
            },
        },
        {
            type = 'recipe',
            name = 'quantum-processor',
            category = 'electronics',
            energy_required = 30,
            ingredients = {
                { type = 'item', name = 'tungsten-carbide', amount = 1 },
                { type = 'item', name = 'processing-unit', amount = 1 },
                { type = 'item', name = 'superconductor', amount = 1 },
                { type = 'item', name = 'carbon-fiber', amount = 1 },
                { type = 'item', name = 'lithium-plate', amount = 2 },
                { type = 'fluid', name = 'fluoroketone-cold', amount = 10, ignored_by_stats = 5 },
            },
            results = {
                { type = 'item', name = 'quantum-processor', amount = 1 },
                { type = 'fluid', name = 'fluoroketone-hot', amount = 5, temperature = 180, ignored_by_stats = 5, ignored_by_productivity = 5 },
            },
            allow_productivity = true,
            main_product = 'quantum-processor',
            enabled = false,
            crafting_machine_tint = {
                primary = { r = 0.460, g = 0.188, b = 0.649, a = 1.000 }, -- #752fa5ff
                secondary = { r = 0.489, g = 0.484, b = 0.381, a = 1.000 }, -- #7c7b61ff
                tertiary = { r = 0.196, g = 0.101, b = 0.101, a = 1.000 }, -- #311919ff
                quaternary = { r = 0.518, g = 0.539, b = 0.993, a = 1.000 }, -- #8489fdff
            },
        },
        {
            type = 'recipe',
            name = 'ammoniacal-solution-separation',
            category = 'cryogenics-or-assembling',
            icon = '__space-age__/graphics/icons/fluid/ammoniacal-solution-separation.png',
            subgroup = 'fluid-recipes',
            order = 'e[cryogenics]-a[ammoniacal-solution-separation]',
            auto_recycle = false,
            energy_required = 1,
            ingredients = {
                { type = 'fluid', name = 'ammoniacal-solution', amount = 50 },
            },
            results = {
                { type = 'item', name = 'ice', amount = 5 },
                { type = 'fluid', name = 'ammonia', amount = 50 },
            },
            allow_productivity = true,
            enabled = false,
            always_show_made_in = true,
            always_show_products = true,
            allow_decomposition = false,
            crafting_machine_tint = {
                primary = { r = 0.596, g = 0.764, b = 0.780, a = 1.000 },
                secondary = { r = 0.551, g = 0.762, b = 0.844, a = 1.000 },
                tertiary = { r = 0.596, g = 0.773, b = 0.895, a = 1.000 },
                quaternary = { r = 0.290, g = 0.734, b = 1, a = 1.000 },
            },
        },
        {
            type = 'recipe',
            name = 'solid-fuel-from-ammonia',
            category = 'cryogenics-or-assembling',
            icon = '__space-age__/graphics/icons/solid-fuel-from-ammonia.png',
            energy_required = 0.5,
            enabled = false,
            order = 'b[fluid-chemistry]-f[solid-fuel-from-ammonia]',
            subgroup = 'fluid-recipes',
            ingredients = {
                { type = 'fluid', name = 'ammonia', amount = 15 },
                { type = 'fluid', name = 'crude-oil', amount = 6 },
            },
            results = { { type = 'item', name = 'solid-fuel', amount = 1 } },
            allow_productivity = true,
            crafting_machine_tint = {
                primary = { r = 0.222, g = 0.188, b = 0.344, a = 1.000 }, -- #383057ff
                secondary = { r = 0.394, g = 0.481, b = 0.594, a = 1.000 }, -- #647a97ff
                tertiary = { r = 0.370, g = 0.362, b = 0.362, a = 1.000 }, -- #5e5c5cff
                quaternary = { r = 0.192, g = 0.210, b = 0.308, a = 1.000 }, -- #30354eff
            },
        },
        {
            type = 'recipe',
            name = 'ammonia-rocket-fuel',
            category = 'cryogenics-or-assembling',
            localised_name = { 'recipe-name.ammonia-rocket-fuel' },
            icon = '__space-age__/graphics/icons/ammonia-rocket-fuel.png',
            energy_required = 10,
            enabled = false,
            order = 'd[rocket-parts]-c[ammonia-rocket-fuel]',
            subgroup = 'intermediate-product',
            ingredients = {
                { type = 'item', name = 'solid-fuel', amount = 10 },
                { type = 'fluid', name = 'water', amount = 50 },
                { type = 'fluid', name = 'ammonia', amount = 500 },
            },
            results = { { type = 'item', name = 'rocket-fuel', amount = 1 } },
            allow_productivity = true,
            crafting_machine_tint = {
                primary = { r = 0.996, g = 0.742, b = 0.408, a = 1.000 }, -- #febd68ff
                secondary = { r = 0.446, g = 0.392, b = 0.168, a = 1.000 }, -- #71632aff
                tertiary = { r = 0.347, g = 0.388, b = 0.387, a = 1.000 }, -- #586262ff
                quaternary = { r = 0.656, g = 0.562, b = 0.264, a = 1.000 }, -- #a78f43ff
            },
        },
        {
            type = 'recipe',
            name = 'acid-neutralisation',
            subgroup = 'fluid-recipes',
            order = 'd[other-chemistry]-a[acid-neutralisation]',
            category = 'cryogenics-or-assembling',
            icon = '__space-age__/graphics/icons/fluid/acid-neutralisation.png',
            auto_recycle = false,
            enabled = false,
            surface_conditions = {
                {
                    property = 'pressure',
                    min = 4000,
                    max = 4000,
                },
            },
            ingredients = {
                { type = 'item', name = 'calcite', amount = 1 },
                { type = 'fluid', name = 'sulfuric-acid', amount = 1000 },
            },
            energy_required = 5,
            results = {
                { type = 'fluid', name = 'steam', amount = 10000, temperature = 500 },
            },
            allow_productivity = false,
            always_show_products = true,
            show_amount_in_title = false,
            allow_decomposition = false,
            crafting_machine_tint = {
                primary = { r = 1.000, g = 0.912, b = 0.036, a = 1.000 }, -- #ffe809ff
                secondary = { r = 0.707, g = 0.797, b = 0.335, a = 1.000 }, -- #b4cb55ff
                tertiary = { r = 0.681, g = 0.635, b = 0.486, a = 1.000 }, -- #ada17bff
                quaternary = { r = 1.000, g = 0.804, b = 0.000, a = 1.000 }, -- #ffcd00ff
            },
        },
        {
            type = 'recipe',
            name = 'steam-condensation',
            subgroup = 'fluid-recipes',
            order = 'd[other-chemistry]-b[steam-condensation]',
            icon = '__space-age__/graphics/icons/fluid/steam-condensation.png',
            localised_name = { 'recipe-name.steam-condensation' },
            category = 'chemistry',
            auto_recycle = false,
            enabled = false,
            ingredients = {
                { type = 'fluid', name = 'steam', amount = 1000 },
            },
            energy_required = 1,
            results = {
                { type = 'fluid', name = 'water', amount = 90 },
            },
            always_show_products = true,
            show_amount_in_title = false,
            allow_decomposition = false,
            allow_quality = false,
            crafting_machine_tint = {
                primary = { r = 0.409, g = 0.694, b = 0.895, a = 1.000 }, -- #68b0e4ff
                secondary = { r = 1.000, g = 1.000, b = 1.000, a = 1.000 }, -- #fffefeff
                tertiary = { r = 0.540, g = 0.520, b = 0.520, a = 1.000 }, -- #898484ff
                quaternary = { r = 0.750, g = 0.750, b = 0.750, a = 1.000 }, -- #bfbfbfff
            },
        },
        {
            type = 'recipe',
            name = 'carbon',
            category = 'cryogenics-or-assembling',
            icon = '__space-age__/graphics/icons/carbon.png',
            auto_recycle = false,
            enabled = false,
            ingredients = {
                { type = 'item', name = 'coal', amount = 2 },
                { type = 'fluid', name = 'sulfuric-acid', amount = 20 },
            },
            energy_required = 1,
            results = { { type = 'item', name = 'carbon', amount = 1 } },
            allow_productivity = true,
            allow_decomposition = false,
            crafting_machine_tint = {
                primary = { r = 0.000, g = 0.000, b = 0.000, a = 1.000 }, -- #000000ff
                secondary = { r = 0.293, g = 0.293, b = 0.293, a = 1.000 }, -- #4a4a4aff
                tertiary = { r = 0.199, g = 0.179, b = 0.070, a = 1.000 }, -- #322d11ff
                quaternary = { r = 0.293, g = 0.293, b = 0.293, a = 1.000 }, -- #4a4a4aff
            },
        },
        {
            type = 'recipe',
            name = 'teslagun',
            category = 'electronics',
            energy_required = 30,
            ingredients = {
                { type = 'item', name = 'holmium-plate', amount = 10 },
                { type = 'item', name = 'superconductor', amount = 10 },
                { type = 'item', name = 'plastic-bar', amount = 30 },
                { type = 'fluid', name = 'electrolyte', amount = 100 },
            },
            results = { { type = 'item', name = 'teslagun', amount = 1 } },
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'tesla-turret',
            category = 'electronics',
            energy_required = 30,
            ingredients = {
                { type = 'item', name = 'teslagun', amount = 1 },
                { type = 'item', name = 'supercapacitor', amount = 10 },
                { type = 'item', name = 'processing-unit', amount = 10 },
                { type = 'item', name = 'superconductor', amount = 50 },
                { type = 'fluid', name = 'electrolyte', amount = 500 },
            },
            results = { { type = 'item', name = 'tesla-turret', amount = 1 } },
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'tesla-ammo',
            category = 'electronics',
            energy_required = 30,
            ingredients = {
                { type = 'item', name = 'supercapacitor', amount = 1 },
                { type = 'item', name = 'plastic-bar', amount = 1 },
                { type = 'fluid', name = 'electrolyte', amount = 10 },
            },
            results = { { type = 'item', name = 'tesla-ammo', amount = 1 } },
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'railgun',
            category = 'cryogenics',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'tungsten-plate', amount = 10 },
                { type = 'item', name = 'superconductor', amount = 10 },
                { type = 'item', name = 'quantum-processor', amount = 20 },
                { type = 'fluid', name = 'fluoroketone-cold', amount = 10 },
            },
            results = { { type = 'item', name = 'railgun', amount = 1 } },
            crafting_machine_tint = {
                primary = { r = 0.504, g = 0.448, b = 0.321, a = 1.000 }, -- #807251ff
                secondary = { r = 0.312, g = 0.519, b = 0.601, a = 1.000 }, -- #4f8499ff
                tertiary = { r = 0.402, g = 0.558, b = 0.880, a = 1.000 }, -- #668ee0ff
                quaternary = { r = 0.246, g = 0.246, b = 0.246, a = 1.000 }, -- #3e3e3eff
            },
        },
        {
            type = 'recipe',
            name = 'railgun-turret',
            category = 'cryogenics',
            enabled = false,
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'quantum-processor', amount = 100 },
                { type = 'item', name = 'tungsten-plate', amount = 30 },
                { type = 'item', name = 'superconductor', amount = 50 },
                { type = 'item', name = 'carbon-fiber', amount = 20 },
                { type = 'fluid', name = 'fluoroketone-cold', amount = 100 },
            },
            results = { { type = 'item', name = 'railgun-turret', amount = 1 } },
            crafting_machine_tint = {
                primary = { r = 0.504, g = 0.448, b = 0.321, a = 1.000 }, -- #807251ff
                secondary = { r = 0.312, g = 0.519, b = 0.601, a = 1.000 }, -- #4f8499ff
                tertiary = { r = 0.402, g = 0.558, b = 0.880, a = 1.000 }, -- #668ee0ff
                quaternary = { r = 0.246, g = 0.246, b = 0.246, a = 1.000 }, -- #3e3e3eff
            },
        },
        {
            type = 'recipe',
            name = 'foundry',
            category = 'metallurgy-or-assembling',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'tungsten-carbide', amount = 50 },
                { type = 'item', name = 'steel-plate', amount = 50 },
                { type = 'item', name = 'electronic-circuit', amount = 30 },
                { type = 'item', name = 'refined-concrete', amount = 20 },
                { type = 'fluid', name = 'lubricant', amount = 20 },
            },
            energy_required = 10,
            results = { { type = 'item', name = 'foundry', amount = 1 } },
        },
        {
            type = 'recipe',
            name = 'electrolyte',
            category = 'electronics',
            subgroup = 'fluid-recipes',
            order = 'f[holmium]-b[electrolyte]',
            energy_required = 5,
            ingredients = {
                { type = 'item', name = 'stone', amount = 1 },
                { type = 'fluid', name = 'heavy-oil', amount = 10 },
                { type = 'fluid', name = 'holmium-solution', amount = 10 },
            },
            results = { { type = 'fluid', name = 'electrolyte', amount = 10 } },
            allow_productivity = true,
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'tungsten-carbide',
            category = 'crafting-with-fluid',
            enabled = false,
            ingredients = {
                { type = 'item', name = 'tungsten-ore', amount = 2 },
                { type = 'fluid', name = 'sulfuric-acid', amount = 10 },
                { type = 'item', name = 'carbon', amount = 1 },
            },
            energy_required = 1,
            results = { { type = 'item', name = 'tungsten-carbide', amount = 1 } },
            allow_productivity = true,
        },
        {
            type = 'recipe',
            name = 'wood-processing',
            icon = '__base__/graphics/icons/wood-processing.png',
            category = 'organic',
            subgroup = 'raw-material',
            order = 'b[chemistry]-f[wood-processing]',
            enabled = false,
            allow_productivity = true,
            energy_required = 2,
            ingredients = { { type = 'item', name = 'wood', amount = 2 } },
            results = {
                { type = 'item', name = 'tree-seed', amount = 1 },
            },
            auto_recycle = false,
            crafting_machine_tint = {
                primary = { r = 0.442, g = 0.205, b = 0.090, a = 1.000 }, -- #703416ff
                secondary = { r = 1.000, g = 0.500, b = 0.000, a = 1.000 }, -- #ff7f00ff
            },
        },
        {
            type = 'recipe',
            name = 'agricultural-tower',
            energy_required = 10,
            ingredients = {
                { type = 'item', name = 'steel-plate', amount = 10 },
                { type = 'item', name = 'electronic-circuit', amount = 3 },
                { type = 'item', name = 'wood', amount = 20 },
                { type = 'item', name = 'landfill', amount = 1 },
            },
            results = { { type = 'item', name = 'agricultural-tower', amount = 1 } },
            enabled = false,
        },
        {
            type = 'recipe',
            name = 'coal-synthesis',
            category = 'chemistry',
            auto_recycle = false,
            energy_required = 2,
            ingredients = {
                { type = 'item', name = 'carbon', amount = 5 },
                { type = 'item', name = 'sulfur', amount = 1 },
                { type = 'fluid', name = 'water', amount = 10 },
            },
            results = { { type = 'item', name = 'coal', amount = 1 } },
            allow_productivity = true,
            enabled = false,
            icon = '__space-age__/graphics/icons/coal-synthesis.png',
            subgroup = 'raw-material',
            order = 'm',
            allow_decomposition = false,
            crafting_machine_tint = {
                primary = { r = 0.207, g = 0.177, b = 0.177, a = 1.000 },
                secondary = { r = 0.301, g = 0.276, b = 0.196, a = 1.000 },
                tertiary = { r = 0.790, g = 0.722, b = 0.478, a = 1.000 },
                quaternary = { r = 0.554, g = 0.540, b = 0.540, a = 1.000 },
            },
        },
    })
end
