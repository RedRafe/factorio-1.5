if not settings.startup['f15-loaders'].value then
    return
end

local max_stack_size = settings.startup["aai-stacking-max-stack-size"].value

for _, loader in pairs(data.raw["loader-1x1"]) do
	loader.max_belt_stack_size = max_stack_size
end