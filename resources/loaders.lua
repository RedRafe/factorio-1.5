if not settings.startup['f15-loaders'].value then
    return
end

-- Adjust loaders
for _, l_type in pairs({'loader', 'loader-1x1'}) do
    for _, loader in pairs(data.raw[l_type]) do
        loader.max_belt_stack_size = 4
    end
end