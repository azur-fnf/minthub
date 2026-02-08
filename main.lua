local placeId = game.PlaceId

local places = {
    [7205641391] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/azur-fnf/minthub/refs/heads/main/mondaymorningmisery/script.lua"))()
    end,

    [1234567890] = function()
        print("oi estou em outro mapa")
    end
}

if places[placeId] then
    places[placeId]()
else
    StarterGui:SetCore("SendNotification", {
        Title = "Jogo não suportado",
        Text = "O jogo '" .. placeName .. "' não é suportado por este script.",
        Duration = 6
    })
end
