if not settings.startup['f15-mixed-ores'].value then
    return
end

data:extend({
    {
        type = 'autoplace-control',
        name = 'mixed-ore',
        richness = true,
        order = 'm-a',
        category = 'resource',
        localised_name = { '', '[img=utility/resource_editor_icon] ', { 'entity-name.mixed-ore' } },
    },
})
data.raw.planet.nauvis.map_gen_settings.autoplace_controls['mixed-ore'] = {}

local f = string.format
local mgs = data.raw.planet.nauvis.map_gen_settings
local expr = [[(-0.75 - nauvis_bridges + multioctave_noise{ x = x,
                                                            y = y,
                                                            seed0 = map_seed,
                                                            seed1 = 137,
                                                            octaves = 4,
                                                            persistence = 1,
                                                            input_scale = 1/(8^2),
                                                            output_scale = 1
})]]
local tot_weight = 0.4
local precision = 14

for i, ore in pairs({
    { name = 'iron-ore',   weight = 2 / precision },
    { name = 'copper-ore', weight = 2 / precision },
    { name = 'iron-ore',   weight = 2 / precision },
    { name = 'stone',      weight = 1 / precision },
    { name = 'copper-ore', weight = 1 / precision },
    { name = 'iron-ore',   weight = 2 / precision },
    { name = 'copper-ore', weight = 1 / precision },
    { name = 'iron-ore',   weight = 2 / precision },
    { name = 'coal',       weight = 4 / precision },
    { name = 'iron-ore',   weight = 2 / precision },
    { name = 'copper-ore', weight = 2 / precision },
    { name = 'iron-ore',   weight = 2 / precision },
    { name = 'stone',      weight = 2 / precision },
    { name = 'copper-ore', weight = 1 / precision },
    { name = 'coal',       weight = 4 / precision },
}) do
    local base = table.deepcopy(data.raw.resource[ore.name])
    base.name = f('mixed-%d-%s', i, ore.name)
    base.localised_name = { 'entity-name.' .. ore.name }
    base.hidden_in_factoriopedia = true
    base.autoplace = {
        probability_expression = 'mixed_probability * ((lower < ore) & (ore < upper))',
        richness_expression = 'random_penalty{ x = x, y = y, source = mixed_richness, seed = map_seed, amplitude = 3000}',
        local_expressions = {
            mixed_probability = '(100 * var(\'control:mixed-ore:richness\'))',
            mixed_richness = '1600 + ((10 * distance) * var(\'control:mixed-ore:richness\'))',
            lower = f('(%f * var(\'control:mixed-ore:size\'))', tot_weight),
            upper = f('(%f * var(\'control:mixed-ore:size\'))', tot_weight + ore.weight),
            ore = f('clamp(%s, -1, 2)', expr),
        },
    }

    data:extend({ base })
    mgs.autoplace_settings.entity.settings[base.name] = {}
    tot_weight = tot_weight + ore.weight
end
