if not settings.startup['f15-fusion-fuel'].value then
    return
end

local fuel = data.raw.item['fusion-power-cell']
fuel.fuel_acceleration_multiplier = 5.9
fuel.fuel_top_speed_multiplier = 5.95

for _, vehicle_category in pairs({'car', 'locomotive' }) do
    for _, p in pairs(data.raw[vehicle_category]) do
        table.insert(p.energy_source.fuel_categories, fuel.fuel_category)
    end
end
