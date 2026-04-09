local success, LucideIcons = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/latte-soft/lucide-roblox/refs/heads/master/lib/Icons.luau"))() -- Latte Softworks
end)

if not success then
    error("Could not obtain Lucide Icons table.")
end

local function getLucideIcon(name: string): (string, Vector2, Vector2)
    local icon: {}? = LucideIcons[name] -- {image_id, {irs.x, irs.y}, {iro.x, iro.y}} or nil
    if not icon then
        error(string.format("Icon %s not found.", name))
    end

    local imgId, rectSizeData, rectOffsetData = icon[1], icon[2], icon[3] 
    local imageRectSize = Vector2.new(rectSizeData[1], rectSizeData[2])
    local imageRectOffset = Vector2.new(rectOffsetData[1], rectOffsetData[2])

    local imageId = "rbxassetid://"..imgId
    return imageId, imageRectSize, imageRectOffset
end

return {
    getLucideIcon = getLucideIcon
}
