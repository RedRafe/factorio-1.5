if not settings.startup['f15-quality-wagons'].value then
    return
end

for _, p in pairs(data.raw['cargo-wagon']) do
    p.quality_affects_inventory_size = true
end

for _, p in pairs(data.raw['fluid-wagon']) do
    p.quality_affects_capacity = true
end
