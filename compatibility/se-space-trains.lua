if not mods['se-space-trains'] then
    return
end

--- Fuel is 1100x richer
--> recipe 4x more time
--> assembler takes 275x more power

data.raw.item['space-train-battery-pack'].fuel_value = '55GJ' --'50MJ'
data.raw.item['space-train-battery-pack'].fuel_acceleration_multiplier = 5.9
data.raw.item['space-train-battery-pack'].fuel_top_speed_multiplier = 5.95

data.raw.recipe['space-train-battery-pack-recharge'].energy_required = 30 * 4
data.raw['assembling-machine']['space-train-battery-charging-station'].energy_source = {
    type = 'electric',
    usage_priority = 'primary-input',
    buffer_capacity = '5500MJ',  -- 20MJ
    input_flow_limit = '2750MW', -- 10MW
    output_flow_limit = '0kW',   -- 0kW
    drain = '500W'               -- 500W
}

data.raw.recipe['space-locomotive'].category = 'electronics'
data.raw.recipe['space-cargo-wagon'].category = 'electronics'
data.raw.recipe['space-fluid-wagon'].category = 'electronics'
data.raw.recipe['space-train-battery-charging-station'].category = 'electronics'
data.raw.recipe['space-train-battery-charging-station'].subgroup = nil
data.raw.recipe['space-train-battery-pack'].category = 'electronics'
data.raw.recipe['space-train-battery-pack'].subgroup = nil --'fulgora-processes'
data.raw.recipe['space-train-battery-pack-refurbish'].subgroup = nil --'fulgora-processes'
data.raw.recipe['space-train-discharged-battery-pack-recycling'].subgroup = nil --'fulgora-processes'

data.raw.technology['tech-space-trains'].unit.ingredients = {
    { 'automation-science-pack', 1 },
    { 'logistic-science-pack', 1 },
    { 'chemical-science-pack', 1 },
    { 'production-science-pack', 1 },
    { 'utility-science-pack', 1 },
    { 'space-science-pack', 1 },
}

data.raw['item-with-entity-data']['space-locomotive'].order = 'd[rolling-stock]-a[space-locomotive]'
data.raw['item-with-entity-data']['space-cargo-wagon'].order = 'd[rolling-stock]-b[space-cargo-wagon]'
data.raw['item-with-entity-data']['space-fluid-wagon'].order = 'd[rolling-stock]-c[space-fluid-wagon]'

local locomotive = data.raw['locomotive']['space-locomotive']
locomotive.max_health = 4500
locomotive.weight = 3500
locomotive.max_speed = 40
locomotive.max_power = '31MW'
locomotive.reversing_power_modifier = 0.8
locomotive.braking_force = 750
locomotive.friction_force = 0.00000001
locomotive.air_resistance = 0.00000001

local cargo = data.raw['cargo-wagon']['space-cargo-wagon']
cargo.max_health = 600
cargo.weight = 4000
cargo.max_speed = 80
cargo.braking_force = 3
cargo.friction_force = 0.55
cargo.air_resistance = 0.01

local fluid = data.raw['fluid-wagon']['space-fluid-wagon']
fluid.max_health = 600
fluid.weight = 4000
fluid.max_speed = 80
fluid.braking_force = 3
fluid.friction_force = 0.50
fluid.air_resistance = 0.01
