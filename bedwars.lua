local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Saturn X Bedwars V2.01.00", "BloodTheme")
-- Tab
local Tab1 = Window:NewTab("Bedwars")
local Tab1Section = Tab1:NewSection("Bedwars")
local Tab2 = Window:NewTab("Bedwars2")
local Tab2Section = Tab2 :NewSection("Bedwars2")
Tab1Section:NewButton("FlameXV2", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FlamingDrey/Flame-X-v2/main/Flame%20X%20Bedwars%20V2"))()
end)
Tab1Section:NewButton("Future ", "ButtonInfo", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/joeengo/Future/main/loadstring.lua', true))()
wait(1.0)
end)
Tab1Section:NewButton("Keyboard For Future", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
wait(6.5)
end)
Tab1Section:NewButton("Jnhh 10", "ButtonInfo", function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/YourLocalNzi/Ye/main/Jng10"),true))()
end)
Tab1Section:NewButton("IceCatV2", "ButtonInfo", function()
    loadstring(game:HttpGet(('https://github.com/Baconontop/bedwarsV2/raw/main/IcecatBedwars'),true))()
    wait(1.0)
end)
Tab1Section:NewButton("IcecatV4", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Baconontop/V4/main/Bedwars"))()
    wait(1.0)
end)
Tab1Section:NewButton("AshuraHub", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/CFBa7rQJ"))()
    wait(1.0)
end)
Tab1Section:NewButton(" Bedwars(BonsaiV1) ", "ButtonInfo", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/wv4KvxZa"))();
end) 
Tab2Section:NewButton("AndrixMobile", "ButtonInfo", function() 
loadstring(game:HttpGet("https://pastebin.com/raw/EGJdJJqL"))() 
wait(1.0)
end)
Tab2Section:NewButton("Bedwars Unknown Script", "?", function(state)
loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/Roblox-HAX/main/Updated_Totally_Original_Script_Hub.Lua"))()
wait(1.0)
end)
Tab2Section:NewButton("Vapev4", "ButtonInfo", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
wait(1.0)
end)
Tab2Section:NewButton("GigaChad", "ButtonInfo", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/OWJBWKQLAISH/GigaChad-Hub/main/Gigachad%20Hub%20V3'))()
wait(1.0)
end)
Tab2Section:NewButton("Fluxus", "ButtonInfo", function()
local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("Fluxus V1. 0.0", "GrapeTheme")
-- Tab
local Tab1 = Window:NewTab("Main")
local Tab1Section = Tab1:NewSection("Main")
end) 
Tab2Section:NewLabel("chase bedwars Player") 
Tab2Section:NewToggle("KillAura", "?", function(state)
    if state then
        local player = game:GetService("Players")
        local lplr = player.LocalPlayer
        local cam = workspace.CurrentCamera
        local KnitClient = debug.getupvalue(require(lplr.PlayerScripts.TS.knit).setup, 6)
        local SwordCont = KnitClient.Controllers.SwordController
        
        local aura = false
        local DistVal = {["Value"] = 85}
        
        local connection
        
        function Aura()
            for i,v in pairs(game.Players:GetChildren()) do
                if v.Character and v.Name ~= game.Players.LocalPlayer.Name and v.Character:FindFirstChild("HumanoidRootPart") then
                    local mag = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if mag <= DistVal["Value"] and v.Team ~= game.Players.LocalPlayer.Team and v.Character:FindFirstChild("Humanoid") then
                        if v.Character.Humanoid.Health > 0 then
                            aura = true
                            SwordCont:swingSwordAtMouse()
                        end
                    end
                end
            end
        end
        
        connection = game:GetService("RunService").Stepped:connect(function()
            Aura()
        end)
    else
        if connection then
            connection:Disconnect()
        end
    end
end)
Tab2Section:NewToggle("No Swing ", "?", function(state) 
         if state then 
                 if killauraswing["Enabled"] == true then 
                         killauraswing["Enabled"] = false 
                 end 
         else 
                 if killauraswing["Enabled"] == false then 
                         killauraswing["Enabled"] = true 
                 end 
         end 
 end) 
Tab2Section:NewButton("Infinite Jump", "ButtonInfo", function()
local InfiniteJumpEnabled = true game:GetService("UserInputService").JumpRequest:connect(function()  if InfiniteJumpEnabled then   game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")  end end)
end)
Tab2Section:NewToggle("NoFall Damage", "NoFall", function()
    local NoFallEnabled = false -- this is a boolean variable indicating if NoFall is enabled
    -- Function to toggle NoFall
    local function toggleNoFall(state)
        NoFallEnabled = state
        if NoFallEnabled then
            task.spawn(function()
                repeat
                    if not NoFallEnabled then break end
                    task.wait(0.4)
                    game:GetService("ReplicatedStorage").rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged.GroundHit:FireServer()
                until not NoFallEnabled
            end)
        end
    end
    toggleNoFall(not NoFallEnabled)
end)
Tab2Section:NewToggle("KillAuraV2", "DamgesPlayer", function(state)
    if state then
            local kauraval = v
            spawn(function()
                if kauraval and entity.isAlive then
                    conectionkillaura = RunService.RenderStepped:Connect(function(step)
                        if not kauraval then 
                            return
                        end
                        if entity.isAlive then
                            KillauraRemote()
                        end
                    end)
                else
                    conectionkillaura:Disconnect()
                    return
                end
            end)
            spawn(function()
                repeat
                    wait()
                    if entity.isAlive then
                        if killauraanimval["Value"] == "Cool" then
                            task.wait(0.30)
                            if (not kauraval) then return end
                            funianimthing()
                        elseif killauraanimval["Value"] == "Thing" then
                            task.wait(0.16)
                            if (not kauraval) then return end
                            funianimthing()
                        end
                    end
                until (not kauraval)
            end)
        end
    
    killauraissoundenabled = katog:CreateOptionTog({
        ["Name"] = "Swing Sound",
        ["Func"] = function() end
    })
    killaurasoundvalue = katog:CreateSlider({
        ["Name"] = "Sound",
        ["Function"] = function() end,
        ["Min"] = 0,
        ["Max"] = 1,
        ["Default"] = 1,
        ["Round"] = 1
    })
    killauraisswingenabled = katog:CreateOptionTog({
        ["Name"] = "Swing Animation",
        ["Func"] = function() end
    })
    DistVal = katog:CreateSlider({
        ["Name"] = "Distance",
        ["Function"] = function() end,
        ["Min"] = 1,
        ["Max"] = 20,
        ["Default"] = 20,
        ["Round"] = 1
    })
    killaurafirstpersonanim = katog:CreateOptionTog({
        ["Name"] = "Anims (1rs person)",
        ["Func"] = function() end
    })
    killauraanimval = katog:CreateDropDown({
        ["Name"] = "AnimMode",
        ["Function"] = function() end,
        ["List"] = {"Cool", "Thing"},
        ["Default"] = "Cool"
    })
end)
Tab2Section:NewLabel("More Abot Auto Toxic") 
Tab2Section:NewButton("AutoToxic", "AutoToxic", function()
local choosePlayer = false --set true if you want to insult one person only
local chosenPlayer = "" --if chosePlayer = true, type playername in quotes
local Taunts = { --add as many as you wish
"BRO IM USING chasefan1 bedwars Script.",
"Imagine P2W.",
"L.",
"L .",
"chasefan1 Is The Best.",
"How a person can be that bad like you.",
"BRO Imagine Being A Tryhard.",
"Bozo Crying?.",
"chase ON Top.",
"BRO So Many Skidder Bro.",
"Your mother made a mistake the day you were born.",
"You are the waste of earth.",
"No one likes you.",
"I'm Sorry Bozo." ,
"Sorry :(.",
"Not really.",
"I feel bad for your mom and dad.",
"I dont care about the fact you think Im hacking, I care about how you lost to a person.",
}
local Remote = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest
local function Insult()
   local players = game.Players:GetChildren()
   local howManyPlayers = #players
   
   local ran = math.random(1,howManyPlayers)
   local chosenOne = players[ran]
   local chance = math.random(1,17)
   
   if choosePlayer == true then
       Remote:FireServer(chosenPlayer.." " ..Taunts[math.random(1,#Taunts)],"All")
   elseif chance <= 5 then
       Remote:FireServer(chosenOne.Name.." " ..Taunts[math.random(1,#Taunts)],"All")
   else
       Remote:FireServer(Taunts[math.random(1,#Taunts)],"All")
   end
end
   
local randTime = math.random(5,10)
while true and wait(randTime) do
   Insult()
end
    print("...")
end)
Tab2Section:NewLabel("By Arceus") 
Tab2Section:NewButton("Inf Yeild", "ButtonInfo", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
wait(1.0)
end)
Tab2Section:NewSlider("SpeedHack", "SliderInfo", 700, 0, function(s) -- 700 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Tab2Section:NewSlider("JumpPower", "SliderInfo", 560, 0, function(s) -- 560 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
local Tab3 = Window:NewTab("Another")
local Tab3Section = Tab3:NewSection("Another")
Tab3Section:NewButton("DarkraiX Animation", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
wait(1.0)
end) 
Tab3Section:NewToggle("Ninja","?",function(state)
 if state then
 local Animate = game.Players.LocalPlayer.Character.Animate
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=656117400"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=656118341"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
 end
 end) 
Tab3Section:NewToggle("Toy","?",function(state) 
 if state then
 local Animate =
 game.Players.LocalPlayer.Character.Animate 
 Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498" 
 Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736" 
 Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=782843345" 
 Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=782842708" 
 Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=782847020" 
 Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=782843869" 
 Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=782846423" 
 end 
 end) 
Tab3Section:NewToggle("Levitation","",function(state) 
 if state then
 local Animate = 
 game.Players.LocalPlayer.Character.Animate 
 Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616010382"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616003713"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
 end
 end) 
 
Tab3Section:NewToggle("Cartoony","?",function(state) 
if state then
 local Animate = 
 game.Players.LocalPlayer.Character.Animate 
 Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=742637544"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=742638445"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=742640026"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=742638842"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=742637942"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=742636889"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=742637151"
 end
 end) 
Tab3Section:NewToggle("Pirate","?",function(state)
if state then
    local Animate =
 game.Players.LocalPlayer.Character.Animate
 Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=750781874"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=750782770"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=750785693"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=750783738"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=750782230"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=750779899"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=750780242"
end
end) 
Tab3Section:NewToggle("Vampire","?",function(state)
if state then
    local Animate = 
 game.Players.LocalPlayer.Character.Animate
 Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1083445855"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1083450166"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1083473930"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1083462077"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1083455352"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1083439238"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1083443587"
end
end) 
Tab3Section:NewToggle("Stylish","?",function(state)
if state then
    local Animate = 
 game.Players.LocalPlayer.Character.Animate
 Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616136790"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616138447"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616146177"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616140816"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616139451"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=616133594"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616134815"
end
end) 
Tab3Section:NewToggle("Bubbly","?",function(state)
if state then
    local Animate = 
 game.Players.LocalPlayer.Character.Animate
 Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=910004836"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=910009958"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=910034870"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=910025107"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=910016857"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=910001910"
Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=910030921"
Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=910028158"
end
end)
Tab3Section:NewToggle("TanqR Animation", "By Aurora", function(state)
--TanqR Animation Pack By XStormDeveloper
while true do
local Animate = game.Players.LocalPlayer.Character.Animate
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=782841498"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=782845736"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=656121766"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=656118852"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=656117878"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=656114359"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=656115606"
game.Players.LocalPlayer.Character.Humanoid.Jump = false
wait(1)
end
end)
Tab3Section:NewToggle("15R Animation", "ToggleInfo", function(state)
local Animate = game.Players.LocalPlayer.Character.Animate
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=4211223236"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=4211220381"
Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=4211217646"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=4211218409"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=4211219390"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=4211216152"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=421121499"
 
game.Players.LocalPlayer.Character.Humanoid.Jump = false
end)
local Tab4 = Window:NewTab("Tpwalks")
local Tab4Section = Tab4:NewSection("Tpwalks")
Tab4Section:NewButton("Tpwalk 0.0", "ButtonInfo", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 19
end)
Tab4Section:NewButton("Tpwalk 0.1", "ButtonInfo", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 21
end)
Tab4Section:NewButton("Tpwalk 0.3", "ButtonInfo", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 24
wait(1.0)
end)
Tab4Section:NewButton("Tpwalk 0.4", "ButtonInfo", function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 27
end)
Tab4Section:NewLabel("End")
local Tab5 = Window:NewTab("Credits")
local Tab5Section = Tab5:NewSection("Credits")
local Tab5Section = Tab5:NewSection("Made By Andrix")
local Tab5Section = Tab5:NewSection("Arceus X Executor But It's A Script")

game.StarterGui:SetCore("SendNotification", {
    Title = "chase";
    Text = chaseV2"; -- what the text says (ofc)
    Duration = 70;
})
wait(1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Executed! ";
    Text = "Dont Forget to subscribe to chasefan1 on yt"; -- what the text says (ofc)
    Duration = 69;
})
