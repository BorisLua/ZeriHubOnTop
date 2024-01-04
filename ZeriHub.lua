local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/CasparLmao/Ui-Libs/Main/Playstation/Playstation.Source"))()

        local UI = GUI:CreateWindow("Zeri Hub V1.2","W QP maded by CtrlDev and name by ATOMIC.DEV")

        local Home = UI:addPage("FPS Games",1,true,6)

        Home:addLabel("ZERI HUB ON TOP!!","we bac")

        Home:addButton("Hitbox",function()
            _G.HeadSize = 15
            _G.Disabled = true
            game:GetService("RunService").RenderStepped:Connect(
                function()
                    if _G.Disabled then
                        for i, v in next, game:GetService("Players"):GetPlayers() do
                            if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                                pcall(
                                    function()
                                        v.Character.HumanoidRootPart.Size =
                                            Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                                        v.Character.HumanoidRootPart.Transparency = 0.7
                                        v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Bright Red")
                                        v.Character.HumanoidRootPart.Material = "Neon"
                                        v.Character.HumanoidRootPart.CanCollide = false
                                    end
                                )
                            end
                        end
                    end
                end
            )
        end)

        Home:addButton("Aimbot (Laggy)",function()
            getgenv().Prediction = 1
            getgenv().AimPart = "LowerTorso"
            getgenv().Key = "q"
            getgenv().AutoPrediction = true
            loadstring(
                game:HttpGet("https://raw.githubusercontent.com/elxocasXD/Trip-Hub/main/Scripts/Cam%20Lock.lua")
            )()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end)

        local Trl = UI:addPage("Trolling",1,true,6)
        Trl:addButton("Fling Gui",function()
            loadstring(game:HttpGet("https://paste.ee/r/NTtmf", true))()
        end)

        Trl:addButton("Antares Hub By Me",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BorisLua/AntaresHubSuaMaeNaMinhaCama/main/EnglishAntaresHub.lua"))()
        end)

        local BldB = UI:addPage("Blade Ball 🔥",1,true,6)

        BldB:addButton("REDz Hub",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BladeBall/main/redz9999"))()
        end)

        BldB:addButton("Berserk Hub",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/samirayt/SCRIPT-FREE/main/Gratis"))()
        end)

        BldB:addButton("Auto Parry",function()
            local Debug = false

            local Players = game:GetService("Players")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")

            local Player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
            local Remotes = ReplicatedStorage:WaitForChild("Remotes", 9e9)
            local Balls = workspace:WaitForChild("Balls", 9e9)

            local function print(...)
                if Debug then
                    warn(...)
                end
            end

            local function VerifyBall(Ball)
                if typeof(Ball) == "Instance" and Ball:IsA("BasePart") and Ball:IsDescendantOf(Balls) then
                    return (Ball:GetAttribute("realBall") == true)
                end
            end

            local function IsTarget()
                return Player.Character and Player.Character:FindFirstChild("Highlight")
            end

            local function Parry()
                Remotes:WaitForChild("ParryButtonPress"):Fire()
            end

            Balls.ChildAdded:Connect(
                function(Ball)
                    if not VerifyBall(Ball) then
                        return
                    end

                    local OldPosition = Ball.Position
                    local OldTick = tick()

                    Ball:GetPropertyChangedSignal("Position"):Connect(
                        function()
                            if IsTarget() then
                                local Distance = (Ball.Position - workspace.CurrentCamera.Focus.Position).Magnitude
                                local Velocity = (OldPosition - Ball.Position).Magnitude

                                if (Distance / Velocity) then
                                end
                            end
                        end
                    )
                end
            )
        end)

        BldB:addButton("ZzzHub (Key: ZzzHubV1)",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ZzzScript/Key-System/main/ZzzHubBETA"))()
        end)

        BldB:addButton("Joe BidenZ Hub V2",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/JoeBidenhub/JoeBidenZ-Hub-V2/main/Full%20Version%202",true))()
        end)

        BldB:addButton("Xzei Hub",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/XZEI_HUB-_BLADEBALL/main/XZEI_HUBX.txt"))()
        end)

        local BldB2 = UI:addPage("Blade Ball Page 2🔥",1,true,6)

        BldB2:addButton("Noxin Hub [NEW]",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/fbisghosts/NOX/main/Noxine.lua"))()
        end)

        BldB2:addButton("Detroit.cc hub [It might not work]",function()
            loadstring(game:HttpGet("https://paste.gg/p/anonymous/afc356c7146a40a6873aed6b03486c99/files/0a54ec4dfc864371a5c90e1b36fec708/raw"))()
        end)

        BldB2:addButton("WaterMelon Hub",function()
            loadstring(game:HttpGet("https://paste.gg/p/Lina/e15aec4a51e54bfe96a8b7e4b6094b3c/files/d29a355abfbc471bbbc8e4fa0be6e253/raw"))()
        end)

        BldB2:addButton("NoHax V2 [might not work]",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/ForYourHead/NoHaxV2/main/NohaxBladeBall",true))()
        end)

        BldB2:addButton("Ganja Hub [Might not work]",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Krnow1/Ganjahub/main/Ganjahubontop"))()
        end)

        local BW = UI:addPage("Bedwars",1,true,6)

        BW:addButton("Alsploit",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/Bedwars"))()
        end)

        BW:addButton("Unpatch Vxpe",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/cdezxswzq/NewVapeUnpatched4Roblox/main/Loader.lua", true))()
        end)

        BW:addButton("AllBedwars Script",function()
            loadstring(game:HttpGet("https://pastebin.com/raw/AwgwbDG7"))()
        end)

        local UN = UI:addPage("Universal",1,true,6)

        UN:addButton("Infinite Yield FE",function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        end)

        UN:addButton("Nameless Admin FE",function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
        end)

        UN:addButton("Fling gui but another(works only for collision games)",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Fling%20GUI%22"))()
        end)

        UN:addButton("Chat Bypasser 💀 (Ban risk)",function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRBC/RBC.Byp/main/RBC.Byp%20V.1.3"))()
        end)

        UN:addButton("RTX Script (never tested it so it might not work)",function()
            loadstring(game:HttpGet(('https://pastefy.app/xXkUxA0P/raw'),true))()
        end)

        UN:addLabel("Tell me a suggestion!","Just enter the qp server and ping @ctrl.dev on Discord ;)")
    end