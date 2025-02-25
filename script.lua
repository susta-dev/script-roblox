if not game:IsLoaded() then
    game.Loaded:Wait()
end

local DeltaGui = Instance.new("ScreenGui")
local Logo = Instance.new("ImageLabel")
local Status = Instance.new("TextLabel")

DeltaGui.Name = "CuboScript"
DeltaGui.Parent = game.CoreGui

Logo.Parent = DeltaGui
Logo.Size = UDim2.new(0, 200, 0, 100)
Logo.Position = UDim2.new(0.5, -100, 0.1, 0)
Logo.Image = "rbxassetid://123456789"

Status.Parent = DeltaGui
Status.Size = UDim2.new(0, 300, 0, 50)
Status.Position = UDim2.new(0.5, -150, 0.2, 0)
Status.Text = "Status: Iniciando..."
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.BackgroundTransparency = 1
Status.TextScaled = true

getgenv().simple_settings = {
    ["MASTERY"] = {
        ["ACTIVE"] = true,
        ["METHOD"] = "Half",
    },
    ["OBJECTIVE"] = {
        ["GODHUMAN"] = true,
        ["RACE-V3"] = true,
        ["FRAGMENT"] = 100000,
        ["CANVANDER"] = true,
        ["BUDDY-SWORD"] = true,
        ["CURSED-DUAL-KATANA"] = true,
        ["SHARK-ANCHOR"] = true,
        ["ACIDUM-RIFLE"] = true,
        ["VENOM-BOW"] = true,
        ["SOUL-GUITAR"] = true,
    },
    ["FRUITPURCHASE"] = true,
    ["PRIORITYFRUIT"] = {
        [1] = "Dragon-Dragon",
        [2] = "Flame-Flame",
        [3] = "Rumble-Rumble",
        [4] = "Human-Human: Buddha",
        [5] = "Dark-Dark",
    },
    ["FPSCAP"] = 30,
    ["LOWTEXTURE"] = true
}

Status.Text = "Status: Farmando do Nível 1 ao Máximo..."

function AutoFarm()
    while true do
        wait(1)
        if game.Players.LocalPlayer.Data.Level.Value < 2450 then
            Status.Text = "Status: Subindo de Nível..."
            -- Código para farmar experiência e subir de nível
        else
            Status.Text = "Status: Obtendo Objetivos..."
            -- Código para obter objetivos como GODHUMAN, RACE-V3 e fragmentos

            Status.Text = "Status: Comprando Frutas..."
            -- Código para comprar frutas prioritárias

            Status.Text = "Status: Farm Concluído"
            break
        end
    end
end

spawn(AutoFarm)
