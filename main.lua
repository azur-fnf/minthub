local placeId = game.PlaceId
local placeName = game:GetService("MarketplaceService"):GetProductInfo(placeId).Name
local StarterGui = game:GetService("StarterGui")

local places = {
    [7205641391] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/azur-fnf/minthub/refs/heads/main/mondaymorningmisery/script.lua"))()
    end,

    [1234567890] = function()
        print("Hi, I am in another map")
    end
}

if places[placeId] then
    places[placeId]()

    StarterGui:SetCore("SendNotification", {
        Title = "Game Detected",
        Text = "Script successfully executed for '" .. placeName .. "'.",
        Duration = 6
    })
else
    StarterGui:SetCore("SendNotification", {
        Title = "Unsupported Game",
        Text = "The game '" .. placeName .. "' is not supported by this script.",
        Duration = 6
    })
end
