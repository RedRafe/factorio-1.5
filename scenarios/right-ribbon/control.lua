require '__base__/script/freeplay/control'

local X_VOID  = -18 * 32
local X_WATER = - 8 * 32
local X_WALL  =  11 * 32

script.on_init(function()
    local surface = game.surfaces.nauvis
    local mgs = surface.map_gen_settings
    mgs.height = 36 * 32
    surface.map_gen_settings = mgs
end)

script.on_event(defines.events.on_chunk_generated, function(event)
    local surface = event.surface
    if surface.name ~= 'nauvis' then
        return
    end

    local x = event.area.right_bottom.x
    if x > X_WALL then
        return
    end

    if x < X_WATER then
        local tile = (x < X_VOID) and 'out-of-map' or 'water'
        if math.max(math.abs(event.area.left_top.y), math.abs(event.area.right_bottom.y)) > surface.map_gen_settings.height / 2 then
            tile = 'out-of-map'
        end
        local tiles, t = {}, 1
        for x = x - 0.5, event.area.right_bottom.x - 31.5, -1 do
            for y = event.area.right_bottom.y - 0.5, event.area.right_bottom.y - 31.5, -1 do
                tiles[t] = { position = { x = x, y = y }, name = tile }
                t = t + 1
            end
        end
        surface.set_tiles(tiles, true, true, true)
    else
        for _, e in pairs(surface.find_entities_filtered{ area = event.area, force = 'enemy' }) do
            e.destroy()
        end
    end
end)
