anim = {}

function anim:play_animation(obj, url, animation, with_lock, complete_func, before_anim)
    if not obj.locked_anim and obj.current_animation ~= animation then
        if with_lock then
            obj.locked_anim = true
        end
        obj.current_animation = animation
        if before_anim ~= nil then
            before_anim(obj)
        end
        sprite.play_flipbook(url, animation, complete_func)
    end
end

return anim
