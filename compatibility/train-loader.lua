if not mods['train-loader'] then
    return
end

data.raw.container['train-loader'].selection_box = { { -2, -2 }, { 2, 2 } }
