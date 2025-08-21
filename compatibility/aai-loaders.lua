if not mods['aai-loaders'] then
    return
end

data.raw.recipe['aai-loader'].category = 'metallurgy-or-assembling'
data.raw.recipe['aai-fast-loader'].category = 'metallurgy-or-assembling'
data.raw.recipe['aai-turbo-loader'].category = 'metallurgy'
data.raw.technology['aai-turbo-loader'].unit.ingredients = {
    { 'automation-science-pack', 1 },
    { 'logistic-science-pack', 1 },
    { 'chemical-science-pack', 1 },
    { 'production-science-pack', 1 },
    { 'space-science-pack', 1 },
}

data.raw.item['aai-loader'].subgroup = 'belt'
data.raw.item['aai-fast-loader'].subgroup = 'belt'
data.raw.item['aai-express-loader'].subgroup = 'belt'
data.raw.item['aai-turbo-loader'].subgroup = 'belt'

data.raw.recipe['aai-loader'].subgroup = 'belt'
data.raw.recipe['aai-fast-loader'].subgroup = 'belt'
data.raw.recipe['aai-express-loader'].subgroup = 'belt'
data.raw.recipe['aai-turbo-loader'].subgroup = 'belt'
