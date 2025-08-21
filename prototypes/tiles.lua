local noise = require 'prototypes/noise'

return function()
    data.raw.tile['lava-hot'].autoplace = { probability_expression = noise.entity_autoplace{
        name = 'lava',
        seed1 = 137,
        base_spots_per_km2 = 1/32,
        frequency_multiplier = 1/16,
        size_multiplier = 1.25
    }}
    data.raw.planet.nauvis.map_gen_settings.autoplace_settings.tile.settings['lava-hot'] = {}

    data.raw.tile['ammoniacal-ocean'].autoplace = { probability_expression = noise.entity_autoplace{
        name = 'ammoniacal_ocean',
        seed1 = 991,
        base_spots_per_km2 = 1/48,
        frequency_multiplier = 1/32,
        size_multiplier = 1.5
    }}
    data.raw.planet.nauvis.map_gen_settings.autoplace_settings.tile.settings['ammoniacal-ocean'] = {}
end
