# lucide2rblx
A simple function to retrieve Lucide Icons in ROBLOX without uploading them manually

## Usage
```lua
Lucide.getLucideIcon(name: string) -- Returns ImageId, ImageRectSize, ImageRectOffset
```
where ImageId is `rbxassetid://somenumber`

### Example
```lua
-- Load Module
local Lucide = loadstring(game:HttpGet("https://raw.githubusercontent.com/shellprompt/lucide2rblx/refs/heads/main/main.luau"))()

-- Setup UI
local ScreenGui: ScreenGui = Instance.new("ScreenGui", gethui())
local ImageLabel: ImageLabel = Instance.new("ImageLabel", ScreenGui)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.AnchorPoint = Vector2.new(0.5,0.5)
ImageLabel.Size = UDim2.new(0,100,0,100)

local icon = "app-window" -- can change

-- Retrieve Image
local imageId, ImageRectSize, ImageRectOffset = Lucide.getLucideIcon(icon)
ImageLabel.Image = imageId
ImageLabel.ImageRectSize = ImageRectSize
ImageLabel.ImageRectOffset = ImageRectOffset
```
