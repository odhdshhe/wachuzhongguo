local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『冷脚本』"; Text ="核对用户ID中♧"; Duration = 2; })
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "『冷脚本』"; Text ="用户ID核对完毕"; Duration = 4; })

local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/djnd/refs/heads/main/%E5%86%B7444.txt"))();        
local win = ui:new("冷脚本")
--
local UITab1 = win:Tab("『挖到中国』（远程购买炸弹）",'7734068321')

local about = UITab1:section("『Main』",true)

about:Button("管状炸药", function()
local args = {
    [1] = "Pipebomb"
}

game:GetService("ReplicatedStorage").Events.BuyTool:FireServer(unpack(args))
end)

about:Button("炸弹", function()
local args = {
    [1] = "Bomb"
}

game:GetService("ReplicatedStorage").Events.BuyTool:FireServer(unpack(args))
end)

about:Button("炸药", function()
local args = {
    [1] = "Dynamite"
}

game:GetService("ReplicatedStorage").Events.BuyTool:FireServer(unpack(args))
end)

about:Button("导蛋", function()
local args = {
    [1] = "Missile"
}

game:GetService("ReplicatedStorage").Events.BuyTool:FireServer(unpack(args))

end)

about:Button("核武器T1", function()
local args = {
    [1] = "Nuke1"
}

game:GetService("ReplicatedStorage").Events.BuyTool:FireServer(unpack(args))

end)

about:Button("核武器T2", function()
local args = {
    [1] = "Nuke2"
}

game:GetService("ReplicatedStorage").Events.BuyTool:FireServer(unpack(args))

end)

about:Button("小男孩", function()
local args = {
    [1] = "LittleBoy"
}

game:GetService("ReplicatedStorage").Events.BuyTool:FireServer(unpack(args))

end)

about:Button("胖子", function()
local args = {
    [1] = "Fatman"
}

game:GetService("ReplicatedStorage").Events.BuyTool:FireServer(unpack(args))

end)

about:Button("TX-21", function()
local args = {
    [1] = "TX21"
}

game:GetService("ReplicatedStorage").Events.BuyTool:FireServer(unpack(args))

end)

about:Button("B-41", function()
local args = {
    [1] = "B41"
}

game:GetService("ReplicatedStorage").Events.BuyTool:FireServer(unpack(args))

end)

about:Button("B-83", function()
local args = {
    [1] = "B83"
}

game:GetService("ReplicatedStorage").Events.BuyTool:FireServer(unpack(args))

end)

about:Button("沙皇炸弹", function()
local args = {
    [1] = "Tsar"
}

game:GetService("ReplicatedStorage").Events.BuyTool:FireServer(unpack(args))

end)

local UITab4 = win:Tab("『信息』",'7734068321')

local about = UITab4:section("『作者信息』",true)

about:Label("冷脚本")
about:Label("作者QQ：2368002332")
about:Label("QQ群：815883059")
about:Label("作者：冷")
about:Label("进群发最新冷脚本")
about:Label("脚本持续更新中")
about:Label("脚本懒得优化")
about:Label("欢迎使用🤓")
about:Label("冷脚本帮助者：霖溺,月星,丁丁")
about:Label("你的账号年龄:"..player.AccountAge.."天")
about:Label("你现在的服务器id:"..game.GameId)
about:Label("你的用户ID:"..game.Players.LocalPlayer.UserId)
about:Label("获取客户端ID:"..game:GetService("RbxAnalyticsService"):GetClientId())
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
about:Label("你现在的服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)