local handler = require '__core__/lualib/event_handler'
handler.add_lib(require '__core__/lualib/silo-script')
handler.add_lib(require '__base__/script/freeplay/freeplay')

local X_VOID  = -18 * 32
local X_WATER = - 8 * 32
local X_WALL  =  11 * 32

handler.add_lib({
    on_init = function()
        local surface = game.surfaces.nauvis
        local mgs = surface.map_gen_settings
        mgs.height = 36 * 32
        mgs.peaceful_mode = true
        surface.map_gen_settings = mgs

        script.on_event(defines.events.on_player_changed_position, function(event)
            local player = event.player_index and game.get_player(event.player_index)
            if not (player and player.valid) then
                return
            end

            if player.physical_surface ~= game.surfaces.nauvis then
                return
            end 

            if player.physical_position.x > X_WALL then
                game.print('[img=entity.character] The peaceful seal has been broken! We are doomed!')
                game.surfaces.nauvis.peaceful_mode = false
                script.on_event(defines.events.on_player_changed_position, nil)
            end
        end)
    end,
    events = {
        [defines.events.on_chunk_generated] = function(event)
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
        end,
    }
})
