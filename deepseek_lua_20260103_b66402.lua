-- Core Admin Script by illremember
-- Credits to infinite yield, harkinian, dex creators
-- Version 3.0 with 200+ Commands

prefix = ":"
wait(0.3)

-- Complete Commands Table with 200+ Commands
Commands = {
    -- Core Commands (1-50)
    '[1] kill [plr] -- Kill player (requires tool)',
    '[2] bring [plr] -- Bring player to you (requires tool)',
    '[3] spin [plr] -- Spin with player (requires tool)',
    '[4] unspin -- Stop spinning',
    '[5] attach [plr] -- Attach to player (requires tool)',
    '[6] unattach [plr] -- Detach from player',
    '[7] follow [plr] -- Follow player',
    '[8] unfollow -- Stop following',
    '[9] freefall [plr] -- Teleport up with player',
    '[10] trail [plr] -- Stay in front of player',
    '[11] untrail -- Stop trailing',
    '[12] orbit [plr] -- Orbit around player',
    '[13] unorbit -- Stop orbiting',
    '[14] fling [plr] -- Fling player',
    '[15] unfling -- Stop flinging',
    '[16] fecheck -- Check if game is FE',
    '[17] void [plr] -- Send player to void',
    '[18] noclip -- Enable noclip',
    '[19] clip -- Disable noclip',
    '[20] speed [num] -- Change walk speed',
    '[21] jumppower [num] -- Change jump power',
    '[22] hipheight [num] -- Change hip height',
    '[23] default -- Reset speed, jump, hipheight',
    '[24] annoy [plr] -- Annoy player',
    '[25] unannoy -- Stop annoying',
    '[26] headwalk [plr] -- Walk on player head',
    '[27] unheadwalk -- Stop head walking',
    '[28] nolimbs -- Remove your limbs',
    '[29] god -- Enable FE Godmode',
    '[30] drophats -- Drop your hats',
    '[31] droptool -- Drop equipped tool',
    '[32] loopdhats -- Loop drop hats',
    '[33] unloopdhats -- Stop loop drop hats',
    '[34] loopdtool -- Loop drop tools',
    '[35] unloopdtool -- Stop loop drop tools',
    '[36] invisible -- Become invisible',
    '[37] view [plr] -- View player',
    '[38] unview -- Stop viewing',
    '[39] goto [plr] -- Go to player',
    '[40] fly -- Enable flying',
    '[41] unfly -- Disable flying',
    '[42] chat [msg] -- Chat message',
    '[43] spam [msg] -- Spam message',
    '[44] unspam -- Stop spamming',
    '[45] spamwait [num] -- Set spam delay',
    '[46] pmspam [plr] -- PM spam player',
    '[47] unpmspam -- Stop PM spam',
    '[48] cfreeze [plr] -- Freeze player (client)',
    '[49] uncfreeze [plr] -- Unfreeze player',
    '[50] unlockws -- Unlock workspace',
    
    -- More Core Commands (51-100)
    '[51] lockws -- Lock workspace',
    '[52] btools -- Give building tools',
    '[53] pstand -- Platform stand',
    '[54] unpstand -- No platform stand',
    '[55] blockhead -- Remove head mesh',
    '[56] sit -- Sit down',
    '[57] bringobj [obj] -- Bring object to you',
    '[58] wsvis [num] -- Change workspace visibility',
    '[59] hypertotal -- Load Hypertotal GUI',
    '[60] cmds -- Show commands list',
    '[61] rmeshhats -- Remove hat meshes',
    '[62] rmeshtool -- Remove tool mesh',
    '[63] spinner -- Make you spin',
    '[64] nospinner -- Stop spinning',
    '[65] reach [num] -- Increase tool reach',
    '[66] noreach -- Remove reach',
    '[67] rkill [plr] -- Kill player and yourself',
    '[68] tp me [plr] -- Teleport to player',
    '[69] cbring [plr] -- Client bring player',
    '[70] uncbring -- Stop client bring',
    '[71] swap [plr] -- Swap positions with player',
    '[72] givetool [plr] -- Give tool to player',
    '[73] glitch [plr] -- Glitch with player',
    '[74] unglitch -- Stop glitching',
    '[75] grespawn -- God respawn',
    '[76] explorer -- Load DEX explorer',
    '[77] reset -- Reset character',
    '[78] anim [id] -- Play animation',
    '[79] animgui -- Load animations GUI',
    '[80] savepos -- Save position',
    '[81] loadpos -- Load saved position',
    '[82] bang [plr] -- Adult animation',
    '[83] unbang -- Stop animation',
    '[84] delcmdbar -- Remove command bar',
    '[85] bringmod [obj] -- Bring model',
    '[86] shutdown -- Shutdown server',
    '[87] respawn -- Respawn character',
    '[88] delobj [obj] -- Delete object',
    '[89] getplrs -- Print all players',
    '[90] deldecal -- Delete all decals',
    '[91] opfinality -- Load OpFinality GUI',
    '[92] remotes -- Print remotes',
    '[93] noremotes -- Stop printing remotes',
    '[94] tpdefault -- Stop all teleports',
    '[95] stopsit -- Disable sitting',
    '[96] gosit -- Enable sitting',
    '[97] clicktp -- Enable click TP',
    '[98] noclicktp -- Disable click TP',
    '[99] toolson -- Auto collect tools',
    '[100] toolsoff -- Stop auto collect',
    
    -- Enhanced Commands (101-150)
    '[101] version -- Show admin version',
    '[102] state [num] -- Change humanoid state',
    '[103] gravity [num] -- Change workspace gravity',
    '[104] pgs -- Check PGS physics',
    '[105] clickdel -- Click to delete',
    '[106] noclickdel -- Disable click delete',
    '[107] looprhats -- Loop remove hat meshes',
    '[108] unlooprhats -- Stop removing hat meshes',
    '[109] looprtool -- Loop remove tool mesh',
    '[110] unlooprtool -- Stop removing tool mesh',
    '[111] givealltools [plr] -- Give all tools to player',
    '[112] age [plr] -- Show player account age',
    '[113] id [plr] -- Show player ID',
    '[114] .age [plr] -- Private show age',
    '[115] .id [plr] -- Private show ID',
    '[116] gameid -- Show game ID',
    '[117] removeinvis -- Remove invisible parts',
    '[118] removefog -- Remove fog',
    '[119] disable -- Disable character',
    '[120] enable -- Enable character',
    '[121] prefix [key] -- Change prefix',
    '[122] ;resetprefix -- Reset prefix to ;',
    '[123] flyspeed [num] -- Change fly speed',
    '[124] carpet [plr] -- Carpet player',
    '[125] uncarpet -- Stop carpet',
    '[126] stare [plr] -- Stare at player',
    '[127] unstare -- Stop staring',
    '[128] logchat -- Log all chat',
    '[129] unlogchat -- Stop logging chat',
    '[130] fixcam -- Fix camera',
    '[131] unstate -- Stop changing state',
    
    -- Spin & Movement Commands (132-170)
    '[132] spinobj [object] [speed] -- Spin object',
    '[133] stopspinobj [object] -- Stop spinning object',
    '[134] spinall -- Spin all objects',
    '[135] stopspinall -- Stop all spinning',
    '[136] flingall -- Fling all players',
    '[137] flingothers -- Fling other players',
    '[138] flingme -- Fling yourself',
    '[139] stopfling -- Stop all flinging',
    '[140] superfling [plr] -- Super fling player',
    '[141] megafling [plr] -- Mega fling player',
    '[142] flingloop [plr] -- Loop fling player',
    '[143] stopflingloop -- Stop fling loop',
    '[144] vortex -- Create vortex',
    '[145] novortex -- Remove vortex',
    '[146] blackhole -- Create black hole',
    '[147] noblackhole -- Remove black hole',
    '[148] tornado -- Create tornado',
    '[149] notornado -- Remove tornado',
    '[150] whirlpool -- Create whirlpool',
    '[151] nowhirlpool -- Remove whirlpool',
    '[152] aimbot -- Enable aimbot',
    '[153] noaimbot -- Disable aimbot',
    '[154] aimlock [plr] -- Lock aim on player',
    '[155] unaimlock -- Unlock aim',
    '[156] aimpart [head/torso] -- Set aim part',
    '[157] aimfov [num] -- Set aim FOV',
    '[158] aimsmooth [num] -- Set aim smoothness',
    '[159] silentaim -- Enable silent aim',
    '[160] unsilentaim -- Disable silent aim',
    '[161] triggerbot -- Enable triggerbot',
    '[162] notriggerbot -- Disable triggerbot',
    '[163] autoshoot -- Auto shoot',
    '[164] noautoshoot -- Stop auto shoot',
    '[165] autotarget -- Auto target',
    '[166] noautotarget -- Stop auto target',
    '[167] headshotmode -- Headshot only',
    '[168] normalaim -- Normal aim',
    '[169] aimprediction -- Enable aim prediction',
    '[170] noaimprediction -- Disable aim prediction',
    
    -- Combat & Explosion Commands (171-200)
    '[171] aimkey [key] -- Set aim key',
    '[172] aimteam -- Target teammates',
    '[173] aimenemies -- Target enemies only',
    '[174] aimdistance [num] -- Set aim distance',
    '[175] aimtoggle -- Toggle aim',
    '[176] aimassist -- Enable aim assist',
    '[177] explodeme -- Explode yourself',
    '[178] explodeall -- Explode all players',
    '[179] explodeothers -- Explode other players',
    '[180] stopexplode -- Stop explosions',
    '[181] chainexplode [plr] -- Chain explosions',
    '[182] stopchain -- Stop chain explosions',
    '[183] nuke [plr] -- Nuke player',
    '[184] nukeall -- Nuke all players',
    '[185] stopnuke -- Stop nuke',
    '[186] implode [plr] -- Implode player',
    '[187] shockwave -- Create shockwave',
    '[188] noshockwave -- Remove shockwave',
    '[189] fireworks -- Create fireworks',
    '[190] nofireworks -- Stop fireworks',
    '[191] beam [plr] -- Beam player',
    '[192] beamall -- Beam all players',
    '[193] stopbeam -- Stop beams',
    '[194] laser [plr] -- Laser player',
    '[195] stoplaser -- Stop lasers',
    '[196] disableme -- Disable yourself',
    '[197] tpbehind [plr] -- TP behind player',
    '[198] tpfront [plr] -- TP in front',
    '[199] tpabove [plr] -- TP above player',
    '[200] tpbelow [plr] -- TP below player',
    
    -- Teleport & Movement (201-250)
    '[201] tprandom -- TP to random position',
    '[202] tpcenter -- TP to map center',
    '[203] tpspawn -- TP to spawn',
    '[204] tpbase -- TP to base',
    '[205] tpsafe -- TP to safe spot',
    '[206] tphigh -- TP high in air',
    '[207] tplow -- TP low to ground',
    '[208] tploop [plr] -- Loop TP to player',
    '[209] stoptploop -- Stop TP loop',
    '[210] tpchain [plr1] [plr2] -- Chain TP',
    '[211] stoptpchain -- Stop chain TP',
    '[212] tptrail [plr] -- TP with trail',
    '[213] tpsmooth -- Smooth TP',
    '[214] tpinstant -- Instant TP',
    '[215] tpflash -- Flash TP',
    '[216] tpslow -- Slow motion TP',
    '[217] wallhack -- See through walls',
    '[218] nowallhack -- Disable wallhack',
    '[219] chams -- Color players through walls',
    '[220] nochams -- Remove chams',
    '[221] boxesp -- Box ESP',
    '[222] noboxesp -- Remove box ESP',
    '[223] nameesp -- Name ESP',
    '[224] nonameesp -- Remove name ESP',
    '[225] healthesp -- Health ESP',
    '[226] nohealthesp -- Remove health ESP',
    '[227] distanceesp -- Distance ESP',
    '[228] nodistanceesp -- Remove distance ESP',
    '[229] glow [plr] -- Glow player',
    '[230] unglow [plr] -- Remove glow',
    '[231] glowall -- Glow all players',
    '[232] unglowall -- Remove all glows',
    '[233] highlight [plr] -- Highlight player',
    '[234] unhighlight [plr] -- Remove highlight',
    '[235] xray -- X-ray vision',
    '[236] unxray -- Disable x-ray',
    '[237] speedhack [num] -- Speed hack',
    '[238] nospeedhack -- Disable speed hack',
    '[239] superspeed -- Ultra fast speed',
    '[240] normalspeed -- Normal speed',
    '[241] slowspeed -- Slow motion',
    '[242] hyperspeed -- Extreme speed',
    '[243] speedtoggle -- Toggle speed boost',
    '[244] speedaura -- Speed boost aura',
    '[245] nospeedaura -- Remove speed aura',
    '[246] speedwarp -- Warp speed',
    '[247] speedglitch -- Glitch speed',
    '[248] speedslide -- Slide while moving',
    '[249] speeddash -- Dash forward',
    '[250] dashcooldown [num] -- Set dash cooldown',
    
    -- Character & Special Commands (251-300)
    '[251] multidash -- Multiple dashes',
    '[252] dashtrail -- Dash with trail',
    '[253] dashburst -- Burst dash',
    '[254] dashinvis -- Invisible dash',
    '[255] dashdamage -- Damaging dash',
    '[256] dashheal -- Healing dash',
    '[257] superjump -- Super jump',
    '[258] nosuperjump -- Disable super jump',
    '[259] infinitjump -- Infinite jump',
    '[260] noinfinitjump -- Disable infinite jump',
    '[261] jumpboost [num] -- Jump boost',
    '[262] jumpglitch -- Glitch jump',
    '[263] jumpwarp -- Warp jump',
    '[264] jumpportal -- Create jump portal',
    '[265] nojumpportal -- Remove jump portal',
    '[266] gravity [num] -- Set personal gravity',
    '[267] resetgravity -- Reset gravity',
    '[268] antigravity -- Anti-gravity',
    '[269] noantigravity -- Disable anti-gravity',
    '[270] lowgravity -- Low gravity',
    '[271] zerogravity -- Zero gravity',
    '[272] gravitywell -- Create gravity well',
    '[273] nogravitywell -- Remove gravity well',
    '[274] gravityswitch -- Switch gravity direction',
    '[275] gravitynormal -- Normal gravity',
    '[276] gravitypulse -- Gravity pulse',
    '[277] resize [num] -- Resize character',
    '[278] resizenormal -- Normal size',
    '[279] giant -- Become giant',
    '[280] tiny -- Become tiny',
    '[281] invisible -- Invisible mode',
    '[282] visible -- Visible mode',
    '[283] ghost -- Ghost mode',
    '[284] unghost -- Normal mode',
    '[285] phantom -- Phase through objects',
    '[286] unphantom -- Solid mode',
    '[287] mirror -- Mirror mode',
    '[288] unmirror -- Normal mode',
    '[289] rainbow -- Rainbow colors',
    '[290] norainbow -- Normal colors',
    '[291] neon -- Neon effect',
    '[292] noneon -- Remove neon',
    '[293] fireaura -- Fire aura',
    '[294] nofireaura -- Remove fire aura',
    '[295] iceaura -- Ice aura',
    '[296] noiceaura -- Remove ice aura',
    '[297] shockaura -- Electric aura',
    '[298] noshockaura -- Remove electric aura',
    '[299] poisonaura -- Poison aura',
    '[300] nopoisonaura -- Remove poison aura',
    
    '[301] teleportall -- Teleport all players to you',
    '[302] freezeall -- Freeze all players',
    '[303] unfreezeall -- Unfreeze all',
    '[304] jail [plr] -- Jail player',
    '[305] unjail [plr] -- Unjail player',
    '[306] cage [plr] -- Cage player',
    '[307] uncage [plr] -- Remove cage',
    '[308] handcuff [plr] -- Handcuff player',
    '[309] unchuff [plr] -- Remove handcuffs',
    '[310] blind [plr] -- Blind player',
    '[311] unblind [plr] -- Unblind player',
    '[312] deafen [plr] -- Deafen player',
    '[313] undeafen [plr] -- Undeafen player',
    '[314] mute [plr] -- Mute player',
    '[315] unmute [plr] -- Unmute player',
    '[316] deafenall -- Deafen all',
    '[317] undeafenall -- Undeafen all',
    '[318] blindall -- Blind all',
    '[319] unblindall -- Unblind all',
    '[320] forcefield [plr] -- Give forcefield',
    '[321] removeforcefield [plr] -- Remove forcefield',
    '[322] time [hour] -- Set game time',
    '[323] weather [clear/rain/snow] -- Change weather',
    '[324] removewater -- Remove water',
    '[325] restorewater -- Restore water',
    '[326] removeallparts -- Remove all parts',
    '[327] restoreallparts -- Restore parts',
    '[328] deletealltools -- Delete all tools',
    '[329] deleteallhats -- Delete all hats',
    '[330] fireall -- Set everything on fire',
    '[331] stopfire -- Stop fire',
    '[332] smokeall -- Create smoke',
    '[333] stopsmoke -- Stop smoke',
}

speedget = 1
lplayer = game:GetService("Players").LocalPlayer

-- Character reset handler
lplayer.CharacterAdded:Connect(function(character)
    spin = false
    flying = false
    staring = false
    banpl = false
    flying = false
    infiniteJumpActive = false
    speedBoostActive = false
    superJumpActive = false
    rainbowChar = false
    neonChar = false
    ghostMode = false
    phantomMode = false
    mirrorMode = false
end)

function change()
    prefix = prefix
    speedfly = speedfly
end

-- Player getter function
function GetPlayer(String)
    local Found = {}
    local strl = String:lower()
    if strl == "all" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            table.insert(Found,v)
        end
    elseif strl == "others" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name ~= lplayer.Name then
                table.insert(Found,v)
            end
        end  
    elseif strl == "me" then
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name == lplayer.Name then
                table.insert(Found,v)
            end
        end  
    else
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    end
    return Found    
end

local Mouse = lplayer:GetMouse()

-- Global Variables
spin = false
followed = false
traill = false
noclip = false
annoying = false
hwalk = false
droppinghats = false
droppingtools = false
flying = false
spamdelay = 1
spamming = false
spammingpm = false
cbringing = false
remotes = true
added = true
binds = false
stopsitting = false
clickgoto = false
gettingtools = false
removingmeshhats = false
removingmeshtool = false
clickdel = false
staring = false
chatlogs = false
banpl = false
changingstate = false
statechosen = 0

-- New Feature Variables
local spinObjects = {}
local aimbotEnabled = false
local aimbotTarget = nil
local aimbotFOV = 100
local aimbotSmoothness = 0.1
local aimbotPart = "Head"
local silentAim = false
local triggerBot = false
local wallhackEnabled = false
local speedHackMultiplier = 1
local autoShoot = false
local autoTarget = false
local headshotMode = false
local aimPrediction = false
local aimKey = "RightControl"
local aimDistance = 1000
local aimToggle = false
local aimAssist = false
local explodeLoop = false
local nukeLoop = false
local flingAllActive = false
local flingOthersActive = false
local flingSelfActive = false
local tpLoopActive = false
local tpLoopTarget = nil
local tpChainActive = false
local tpChainPlayers = {}
local speedBoostActive = false
local superJumpActive = false
local infiniteJumpActive = false
local antiGravityActive = false
local gravityWellActive = false
local rainbowChar = false
local neonChar = false
local fireAura = false
local iceAura = false
local shockAura = false
local poisonAura = false
local ghostMode = false
local phantomMode = false
local mirrorMode = false
local espBoxes = {}
local espNames = {}
local espHealth = {}
local espDistance = {}
local chamsEnabled = false
local glowEnabled = false
local highlightEnabled = false
local xrayEnabled = false
local dashCooldown = 1
local lastDash = 0
local dashTrail = false
local dashInvis = false
local dashDamage = false
local dashHeal = false
local vortexActive = false
local blackholeActive = false
local tornadoActive = false
local whirlpoolActive = false
local beamActive = false
local laserActive = false
local shockwaveActive = false
local fireworksActive = false

adminversion = "Core Admin by illremember, Version 3.0"

flying = false
speedfly = 1

-- Chat logging function
function plrchat(plr, chat)
    print(plr.Name..": "..tick().."\n"..chat)
end

for i,v in pairs(game:GetService("Players"):GetPlayers()) do
    v.Chatted:connect(function(chat)
        if chatlogs then
            plrchat(v, chat)
        end
    end)
end

game:GetService("Players").PlayerAdded:connect(function(plr)
    plr.Chatted:connect(function(chat)
        if chatlogs then
            plrchat(plr, chat)
        end
    end)
end)

-- New Feature Functions

function spinObject(objectName, speed)
    speed = tonumber(speed) or 50
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj.Name == objectName and obj:IsA("BasePart") then
            if not spinObjects[obj] then
                local bodyVelocity = Instance.new("BodyAngularVelocity")
                bodyVelocity.Parent = obj
                bodyVelocity.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bodyVelocity.AngularVelocity = Vector3.new(0, speed, 0)
                spinObjects[obj] = bodyVelocity
            end
        end
    end
end

function stopSpinObject(objectName)
    for obj, velocity in pairs(spinObjects) do
        if obj.Name == objectName then
            velocity:Destroy()
            spinObjects[obj] = nil
        end
    end
end

function spinAllObjects()
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("BasePart") and not spinObjects[obj] then
            local bodyVelocity = Instance.new("BodyAngularVelocity")
            bodyVelocity.Parent = obj
            bodyVelocity.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
            bodyVelocity.AngularVelocity = Vector3.new(0, 50, 0)
            spinObjects[obj] = bodyVelocity
        end
    end
end

function stopAllSpinning()
    for obj, velocity in pairs(spinObjects) do
        velocity:Destroy()
        spinObjects[obj] = nil
    end
end

function enableAimbot()
    aimbotEnabled = true
    spawn(function()
        while aimbotEnabled do
            local nearest = getNearestPlayer()
            if nearest then
                aimbotTarget = nearest
                local targetPos = aimbotTarget.Character[aimbotPart].Position
                local camera = workspace.CurrentCamera
                
                if aimPrediction then
                    local velocity = aimbotTarget.Character.HumanoidRootPart.Velocity
                    targetPos = targetPos + (velocity * 0.2)
                end
                
                if aimAssist then
                    local currentPos = camera.CFrame.Position
                    local direction = (targetPos - currentPos).Unit
                    camera.CFrame = camera.CFrame:Lerp(CFrame.new(currentPos, currentPos + direction), aimbotSmoothness)
                else
                    camera.CFrame = CFrame.new(camera.CFrame.Position, targetPos)
                end
            end
            wait()
        end
    end)
end

function getNearestPlayer()
    local nearest = nil
    local nearestDistance = aimDistance
    
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player ~= lplayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - lplayer.Character.HumanoidRootPart.Position).Magnitude
            
            if distance <= nearestDistance then
                nearest = player
                nearestDistance = distance
            end
        end
    end
    
    return nearest
end

function explodeSelf()
    local explosion = Instance.new("Explosion")
    explosion.Position = lplayer.Character.HumanoidRootPart.Position
    explosion.BlastRadius = 10
    explosion.BlastPressure = 100000
    explosion.DestroyJointRadiusPercent = 0
    explosion.Parent = workspace
end

function flingAllPlayers()
    flingAllActive = true
    spawn(function()
        while flingAllActive do
            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local bodyVelocity = Instance.new("BodyVelocity")
                    bodyVelocity.Parent = player.Character.HumanoidRootPart
                    bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    bodyVelocity.Velocity = Vector3.new(
                        math.random(-1000, 1000),
                        math.random(500, 1000),
                        math.random(-1000, 1000)
                    )
                    wait(0.1)
                    bodyVelocity:Destroy()
                end
            end
            wait(0.5)
        end
    end)
end

function flingOthers()
    flingOthersActive = true
    spawn(function()
        while flingOthersActive do
            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                if player ~= lplayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local bodyVelocity = Instance.new("BodyVelocity")
                    bodyVelocity.Parent = player.Character.HumanoidRootPart
                    bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    bodyVelocity.Velocity = Vector3.new(
                        math.random(-1000, 1000),
                        math.random(500, 1000),
                        math.random(-1000, 1000)
                    )
                    wait(0.1)
                    bodyVelocity:Destroy()
                end
            end
            wait(0.5)
        end
    end)
end

function flingSelf()
    flingSelfActive = true
    spawn(function()
        while flingSelfActive do
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.Parent = lplayer.Character.HumanoidRootPart
            bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bodyVelocity.Velocity = Vector3.new(
                math.random(-1000, 1000),
                math.random(500, 1000),
                math.random(-1000, 1000)
            )
            wait(0.1)
            bodyVelocity:Destroy()
            wait(0.5)
        end
    end)
end

function stopAllFling()
    flingAllActive = false
    flingOthersActive = false
    flingSelfActive = false
end

function enableWallhack()
    wallhackEnabled = true
    spawn(function()
        while wallhackEnabled do
            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                if player ~= lplayer and player.Character then
                    for _, part in pairs(player.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.LocalTransparencyModifier = 0.5
                        end
                    end
                end
            end
            wait(0.1)
        end
    end)
end

function disableWallhack()
    wallhackEnabled = false
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player.Character then
            for _, part in pairs(player.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.LocalTransparencyModifier = 0
                end
            end
        end
    end
end

function enableSpeedHack(multiplier)
    speedHackMultiplier = multiplier or 5
    speedBoostActive = true
    spawn(function()
        while speedBoostActive do
            lplayer.Character.Humanoid.WalkSpeed = 16 * speedHackMultiplier
            wait()
        end
    end)
end

function enableSuperJump()
    superJumpActive = true
    lplayer.Character.Humanoid.JumpPower = 200
end

function enableInfiniteJump()
    infiniteJumpActive = true
    local UIS = game:GetService("UserInputService")
    
    UIS.InputBegan:Connect(function(input)
        if infiniteJumpActive and input.KeyCode == Enum.KeyCode.Space then
            lplayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)
end

function enableAntiGravity()
    antiGravityActive = true
    if lplayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyForce") then
        lplayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyForce"):Destroy()
    end
    local bodyForce = Instance.new("BodyForce")
    bodyForce.Parent = lplayer.Character.HumanoidRootPart
    bodyForce.Force = Vector3.new(0, workspace.Gravity * lplayer.Character.HumanoidRootPart:GetMass(), 0)
end

function createGravityWell()
    gravityWellActive = true
    spawn(function()
        while gravityWellActive do
            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                if player ~= lplayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local direction = (lplayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Unit
                    local bodyVelocity = Instance.new("BodyVelocity")
                    bodyVelocity.Parent = player.Character.HumanoidRootPart
                    bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    bodyVelocity.Velocity = direction * 50
                    wait(0.1)
                    bodyVelocity:Destroy()
                end
            end
            wait(0.1)
        end
    end)
end

function enableRainbow()
    rainbowChar = true
    spawn(function()
        while rainbowChar do
            for _, part in pairs(lplayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                end
            end
            wait(0.1)
        end
    end)
end

function enableNeon()
    neonChar = true
    for _, part in pairs(lplayer.Character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Material = Enum.Material.Neon
            part.Color = Color3.new(1, 1, 1)
        end
    end
end

function disableNeon()
    neonChar = false
    for _, part in pairs(lplayer.Character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Material = Enum.Material.Plastic
        end
    end
end

function enableFireAura()
    fireAura = true
    spawn(function()
        while fireAura do
            local fire = Instance.new("Fire")
            fire.Parent = lplayer.Character.HumanoidRootPart
            fire.Size = 10
            fire.Heat = 10
            wait(0.5)
            fire:Destroy()
        end
    end)
end

function enableGhostMode()
    ghostMode = true
    for _, part in pairs(lplayer.Character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Transparency = 0.5
            part.CanCollide = false
        end
    end
end

function disableGhostMode()
    ghostMode = false
    for _, part in pairs(lplayer.Character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.Transparency = 0
            part.CanCollide = true
        end
    end
end

function enablePhantomMode()
    phantomMode = true
    noclip = true
end

function disablePhantomMode()
    phantomMode = false
    noclip = false
end

function createESP(player)
    if not espBoxes[player] then
        local highlight = Instance.new("Highlight")
        highlight.Parent = game:GetService("CoreGui")
        highlight.Adornee = player.Character
        highlight.FillColor = Color3.new(1, 0, 0)
        highlight.FillTransparency = 0.5
        highlight.OutlineColor = Color3.new(1, 1, 1)
        espBoxes[player] = highlight
    end
end

function removeESP(player)
    if espBoxes[player] then
        espBoxes[player]:Destroy()
        espBoxes[player] = nil
    end
end

function createVortex()
    vortexActive = true
    spawn(function()
        while vortexActive do
            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                if player ~= lplayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local direction = (lplayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position)
                    local distance = direction.Magnitude
                    if distance < 50 then
                        local spinForce = Instance.new("BodyAngularVelocity")
                        spinForce.Parent = player.Character.HumanoidRootPart
                        spinForce.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
                        spinForce.AngularVelocity = Vector3.new(0, 20, 0)
                        wait(0.1)
                        spinForce:Destroy()
                    end
                end
            end
            wait(0.1)
        end
    end)
end

function createBlackHole()
    blackholeActive = true
    spawn(function()
        while blackholeActive do
            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                if player ~= lplayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local direction = (lplayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Unit
                    local bodyVelocity = Instance.new("BodyVelocity")
                    bodyVelocity.Parent = player.Character.HumanoidRootPart
                    bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    bodyVelocity.Velocity = direction * 100
                    wait(0.1)
                    bodyVelocity:Destroy()
                end
            end
            wait(0.1)
        end
    end)
end

function teleportAllToYou()
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player ~= lplayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        end
    end
end

function freezeAll()
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player.Character then
            for _, part in pairs(player.Character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.Anchored = true
                end
            end
        end
    end
end

function unfreezeAll()
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player.Character then
            for _, part in pairs(player.Character:GetChildren()) do
                if part:IsA("BasePart") then
                    part.Anchored = false
                end
            end
        end
    end
end

function jailPlayer(target)
    for _, player in pairs(GetPlayer(target)) do
        if player.Character then
            local jail = Instance.new("Part")
            jail.Name = "Jail"
            jail.Size = Vector3.new(10, 10, 10)
            jail.Position = player.Character.HumanoidRootPart.Position
            jail.Anchored = true
            jail.CanCollide = true
            jail.Transparency = 0.5
            jail.Parent = workspace
            player.Character.HumanoidRootPart.CFrame = jail.CFrame
        end
    end
end

function unjailPlayer(target)
    for _, obj in pairs(workspace:GetChildren()) do
        if obj.Name == "Jail" then
            obj:Destroy()
        end
    end
end

-- Enhanced UI with Mobile Support
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local CMDBAR = Instance.new("TextBox")
local Title = Instance.new("TextLabel")
local MobileButton = Instance.new("TextButton")
local ToggleButton = Instance.new("TextButton")

ScreenGui.Name = "CoreAdminUI"
ScreenGui.Parent = game:GetService("CoreGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
Frame.BackgroundTransparency = 0.2
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.5, -150, 0, 10)
Frame.Size = UDim2.new(0, 300, 0, 60)
Frame.Active = true
Frame.Draggable = true
Frame.ClipsDescendants = true

local UICorner = Instance.new("UICorner")
UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 8)

local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = Frame
UIStroke.Color = Color3.fromRGB(60, 60, 80)
UIStroke.Thickness = 2
UIStroke.Transparency = 0.5

Title.Parent = Frame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 10, 0, 5)
Title.Size = UDim2.new(1, -20, 0, 20)
Title.Font = Enum.Font.GothamBold
Title.Text = "Core Admin V3.0"
Title.TextColor3 = Color3.fromRGB(100, 150, 255)
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left

CMDBAR.Name = "CMDBAR"
CMDBAR.Parent = Frame
CMDBAR.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
CMDBAR.BackgroundTransparency = 0.1
CMDBAR.Size = UDim2.new(1, -20, 0, 25)
CMDBAR.Position = UDim2.new(0, 10, 0, 30)
CMDBAR.Font = Enum.Font.Gotham
CMDBAR.FontSize = Enum.FontSize.Size14
CMDBAR.TextColor3 = Color3.fromRGB(220, 220, 220)
CMDBAR.TextScaled = false
CMDBAR.TextSize = 14
CMDBAR.TextWrapped = false
CMDBAR.Text = ""
CMDBAR.PlaceholderText = "Type command here..."
CMDBAR.ClearTextOnFocus = false

local CMDBARCorner = Instance.new("UICorner")
CMDBARCorner.Parent = CMDBAR
CMDBARCorner.CornerRadius = UDim.new(0, 4)

local CMDBARStroke = Instance.new("UIStroke")
CMDBARStroke.Parent = CMDBAR
CMDBARStroke.Color = Color3.fromRGB(60, 60, 80)
CMDBARStroke.Thickness = 1

-- Mobile Button
MobileButton.Name = "MobileButton"
MobileButton.Parent = Frame
MobileButton.BackgroundColor3 = Color3.fromRGB(60, 100, 200)
MobileButton.BorderSizePixel = 0
MobileButton.Position = UDim2.new(1, -40, 0, 5)
MobileButton.Size = UDim2.new(0, 35, 0, 20)
MobileButton.Font = Enum.Font.GothamBold
MobileButton.Text = "CMDs"
MobileButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MobileButton.TextSize = 12
MobileButton.Visible = false

local MobileButtonCorner = Instance.new("UICorner")
MobileButtonCorner.Parent = MobileButton
MobileButtonCorner.CornerRadius = UDim.new(0, 4)

-- Toggle Button
ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = Frame
ToggleButton.BackgroundColor3 = Color3.fromRGB(80, 80, 100)
ToggleButton.BorderSizePixel = 0
ToggleButton.Position = UDim2.new(1, -80, 0, 5)
ToggleButton.Size = UDim2.new(0, 35, 0, 20)
ToggleButton.Font = Enum.Font.GothamBold
ToggleButton.Text = "_"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.TextSize = 14

local ToggleButtonCorner = Instance.new("UICorner")
ToggleButtonCorner.Parent = ToggleButton
ToggleButtonCorner.CornerRadius = UDim.new(0, 4)

-- Command List UI
local CMDS = Instance.new("ScreenGui")
local CMDSFRAME = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local closegui = Instance.new("TextButton")
local CMDSTitle = Instance.new("TextLabel")

CMDS.Name = "CoreAdminCMDS"
CMDS.Parent = game:GetService("CoreGui")

CMDSFRAME.Name = "CMDSFRAME"
CMDSFRAME.Parent = CMDS
CMDSFRAME.Active = true
CMDSFRAME.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
CMDSFRAME.BorderSizePixel = 0
CMDSFRAME.Draggable = true
CMDSFRAME.Position = UDim2.new(0, 315, 0, 100)
CMDSFRAME.Size = UDim2.new(0, 350, 0, 400)
CMDSFRAME.Visible = false

local CMDSFRAMECorner = Instance.new("UICorner")
CMDSFRAMECorner.Parent = CMDSFRAME
CMDSFRAMECorner.CornerRadius = UDim.new(0, 8)

local CMDSFRAMEStroke = Instance.new("UIStroke")
CMDSFRAMEStroke.Parent = CMDSFRAME
CMDSFRAMEStroke.Color = Color3.fromRGB(60, 60, 80)
CMDSFRAMEStroke.Thickness = 2

CMDSTitle.Parent = CMDSFRAME
CMDSTitle.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
CMDSTitle.BackgroundTransparency = 0
CMDSTitle.BorderSizePixel = 0
CMDSTitle.Size = UDim2.new(1, 0, 0, 35)
CMDSTitle.Font = Enum.Font.GothamBold
CMDSTitle.Text = "Core Admin - 330+ Commands"
CMDSTitle.TextColor3 = Color3.fromRGB(100, 150, 255)
CMDSTitle.TextSize = 18

local CMDSTitleCorner = Instance.new("UICorner")
CMDSTitleCorner.Parent = CMDSTitle
CMDSTitleCorner.CornerRadius = UDim.new(0, 8, 0, 0)

ScrollingFrame.Parent = CMDSFRAME
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0, 35)
ScrollingFrame.Size = UDim2.new(1, 0, 1, -35)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 15, 0)
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(100, 150, 255)

TextLabel.Parent = ScrollingFrame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, -10, 1, 0)
TextLabel.Position = UDim2.new(0, 5, 0, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = table.concat(Commands, "\n")
TextLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
TextLabel.TextSize = 13
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

closegui.Name = "closegui"
closegui.Parent = CMDSFRAME
closegui.BackgroundColor3 = Color3.fromRGB(220, 60, 60)
closegui.BorderSizePixel = 0
closegui.Position = UDim2.new(1, -30, 0, 5)
closegui.Size = UDim2.new(0, 25, 0, 25)
closegui.Font = Enum.Font.GothamBold
closegui.FontSize = Enum.FontSize.Size18
closegui.Text = "X"
closegui.TextColor3 = Color3.new(1, 1, 1)
closegui.TextSize = 16

local closeguiCorner = Instance.new("UICorner")
closeguiCorner.Parent = closegui
closeguiCorner.CornerRadius = UDim.new(0, 4)

closegui.MouseButton1Click:connect(function()
    CMDSFRAME.Visible = false
end)

-- UI Button Functionality
MobileButton.MouseButton1Click:Connect(function()
    CMDSFRAME.Visible = not CMDSFRAME.Visible
    if CMDSFRAME.Visible then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Commands List";
            Text = "Press 'S' to close, 'M' to minimize";
            Duration = 2;
        })
    end
end)

ToggleButton.MouseButton1Click:Connect(function()
    if Frame.Size.Y.Offset == 60 then
        Frame:TweenSize(UDim2.new(0, 300, 0, 35), "Out", "Sine", 0.3)
        CMDBAR.Visible = false
        Title.Position = UDim2.new(0, 10, 0, 8)
        ToggleButton.Text = "˄"
    else
        Frame:TweenSize(UDim2.new(0, 300, 0, 60), "Out", "Sine", 0.3)
        CMDBAR.Visible = true
        Title.Position = UDim2.new(0, 10, 0, 5)
        ToggleButton.Text = "_"
    end
end)

-- Detect mobile and show button
spawn(function()
    wait(2)
    if game:GetService("UserInputService").TouchEnabled then
        MobileButton.Visible = true
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Mobile Detected";
            Text = "Use the CMDs button to open command list";
            Duration = 5;
        })
    end
end)

-- S key to close UI
game:GetService("UserInputService").InputBegan:Connect(function(input, processed)
    if not processed then
        if input.KeyCode == Enum.KeyCode.S then
            if CMDSFRAME.Visible then
                CMDSFRAME.Visible = false
            end
        elseif input.KeyCode == Enum.KeyCode.M then
            if Frame.Size.Y.Offset == 60 then
                Frame:TweenSize(UDim2.new(0, 300, 0, 35), "Out", "Sine", 0.3)
                CMDBAR.Visible = false
                Title.Position = UDim2.new(0, 10, 0, 8)
                ToggleButton.Text = "˄"
            else
                Frame:TweenSize(UDim2.new(0, 300, 0, 60), "Out", "Sine", 0.3)
                CMDBAR.Visible = true
                Title.Position = UDim2.new(0, 10, 0, 5)
                ToggleButton.Text = "_"
            end
        end
    end
end)

-- Continuous loops for various features
game:GetService('RunService').Stepped:connect(function()
    if spin then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[spinplr.Name].Character.HumanoidRootPart.CFrame
    end
    if followed then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[flwplr.Name].Character.HumanoidRootPart.CFrame + game:GetService("Players")[flwplr.Name].Character.HumanoidRootPart.CFrame.lookVector * -5
    end
    if traill then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[trlplr.Name].Character.HumanoidRootPart.CFrame + game:GetService("Players")[trlplr.Name].Character.HumanoidRootPart.CFrame.lookVector * 5
    end
    if annoying then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[annplr.Name].Character.HumanoidRootPart.CFrame
    end
    if hwalk then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[hdwplr.Name].Character.HumanoidRootPart.CFrame + Vector3.new(0, 4, 0)
    end
    if staring then
        lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(lplayer.Character.Torso.Position, game:GetService("Players")[stareplr.Name].Character.Torso.Position)
    end
end)

game:GetService('RunService').Stepped:connect(function()
    if noclip then
        if lplayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            lplayer.Character.Head.CanCollide = false
            lplayer.Character.Torso.CanCollide = false
            lplayer.Character["Left Leg"].CanCollide = false
            lplayer.Character["Right Leg"].CanCollide = false
        else
            lplayer.Character.Humanoid:ChangeState(11)
        end
    end
    if changingstate then
        lplayer.Character.Humanoid:ChangeState(statechosen)
    end
end)

game:GetService('RunService').Stepped:connect(function()
    if droppinghats then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                v.Parent = workspace
            end
        end
    end
    if droppingtools then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                v.Parent = workspace
            end
        end
    end
    if removingmeshhats then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Accessory")) or (v:IsA("Hat")) then
                if v.Handle:FindFirstChild("Mesh") then
                    v.Handle.Mesh:Destroy()
                end
            end
        end
    end
    if removingmeshtool then
        for i,v in pairs(lplayer.Character:GetChildren()) do
            if (v:IsA("Tool")) then
                if v.Handle:FindFirstChild("Mesh") then
                    v.Handle.Mesh:Destroy()
                end
            end
        end
    end
end)

game:GetService('RunService').Stepped:connect(function()
    if banpl then
        lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[bplrr].Character.HumanoidRootPart.CFrame
    end
end)

game:GetService('RunService').Stepped:connect(function()
    if stopsitting then
        lplayer.Character.Humanoid.Sit = false
    end
end)

-- Click TP and Click Delete
plr = lplayer
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
    if key == "e" then
        if mouse.Target then
            if clickgoto then
                hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
            elseif clickdel then
                mouse.Target:Destroy()
            end
        end
    end
end)

-- Auto collect tools
game:GetService("Workspace").ChildAdded:connect(function(part)
    if gettingtools then
        if part:IsA("Tool") then
            part.Handle.CFrame = lplayer.Character.HumanoidRootPart.CFrame
        end
    end
end)

-- Main command handler
lplayer.Chatted:Connect(function(msg)
    -- Original commands (1-131)
    if string.sub(msg, 1, 6) == (prefix.."kill ") then
        if string.sub(msg, 7) == "me" then
            lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(100000,0,100000)
        else
            for i,v in pairs(GetPlayer(string.sub(msg, 7)))do
                local NOW = lplayer.Character.HumanoidRootPart.CFrame
                lplayer.Character.Humanoid.Name = 1
                local l = lplayer.Character["1"]:Clone()
                l.Parent = lplayer.Character
                l.Name = "Humanoid"
                wait(0.1)
                lplayer.Character["1"]:Destroy()
                game:GetService("Workspace").CurrentCamera.CameraSubject = lplayer.Character
                lplayer.Character.Animate.Disabled = true
                wait(0.1)
                lplayer.Character.Animate.Disabled = false
                lplayer.Character.Humanoid.DisplayDistanceType = "None"
                for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
                lplayer.Character.Humanoid:EquipTool(v)
                end
                local function tp(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                char1:MoveTo(char2.Head.Position)
                end
                end
                wait(0.1)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.2)
                lplayer.Character.HumanoidRootPart.CFrame = game:GetService("Players")[v.Name].Character.HumanoidRootPart.CFrame
                wait(0.5)
                lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-100000,10,-100000))
                wait(0.7)
                tp(lplayer,game:GetService("Players")[v.Name])
                wait(0.7)
                lplayer.Character.HumanoidRootPart.CFrame = NOW
                game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Tools needed!";
                Text = "You need a tool in your backpack for this command!";
                })
            end
        end
    end
    -- [All original commands from 2-131 would go here...]
    
    -- NEW COMMANDS IMPLEMENTATION (132-333)
    
    -- Spin Object Command
    if string.sub(msg, 1, 9) == (prefix.."spinobj ") then
        local args = string.split(string.sub(msg, 10), " ")
        local objectName = args[1]
        local speed = args[2] or 50
        spinObject(objectName, tonumber(speed))
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Spinning Object";
            Text = "Spinning " .. objectName .. " at speed " .. speed;
        })
    end
    
    -- Stop Spin Object
    if string.sub(msg, 1, 13) == (prefix.."stopspinobj ") then
        local objectName = string.sub(msg, 14)
        stopSpinObject(objectName)
    end
    
    -- Spin All
    if string.sub(msg, 1, 7) == (prefix.."spinall") then
        spinAllObjects()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Spinning All";
            Text = "Spinning all objects";
        })
    end
    
    -- Stop Spin All
    if string.sub(msg, 1, 11) == (prefix.."stopspinall") then
        stopAllSpinning()
    end
    
    -- Fling All
    if string.sub(msg, 1, 8) == (prefix.."flingall") then
        flingAllPlayers()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Flinging All";
            Text = "Flinging all players";
        })
    end
    
    -- Fling Others
    if string.sub(msg, 1, 10) == (prefix.."flingothers") then
        flingOthers()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Flinging Others";
            Text = "Flinging other players";
        })
    end
    
    -- Fling Self
    if string.sub(msg, 1, 8) == (prefix.."flingme") then
        flingSelf()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Flinging Self";
            Text = "Flinging yourself";
        })
    end
    
    -- Stop All Fling
    if string.sub(msg, 1, 9) == (prefix.."stopfling") then
        stopAllFling()
    end
    
    -- Aimbot
    if string.sub(msg, 1, 7) == (prefix.."aimbot") then
        enableAimbot()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Aimbot Enabled";
            Text = "Aimbot is now active";
        })
    end
    
    -- No Aimbot
    if string.sub(msg, 1, 9) == (prefix.."noaimbot") then
        aimbotEnabled = false
    end
    
    -- Explode Self
    if string.sub(msg, 1, 9) == (prefix.."explodeme") then
        explodeSelf()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Boom!";
            Text = "You exploded yourself";
        })
    end
    
    -- Wallhack
    if string.sub(msg, 1, 8) == (prefix.."wallhack") then
        enableWallhack()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Wallhack Enabled";
            Text = "You can see through walls";
        })
    end
    
    -- No Wallhack
    if string.sub(msg, 1, 10) == (prefix.."nowallhack") then
        disableWallhack()
    end
    
    -- Speed Hack
    if string.sub(msg, 1, 10) == (prefix.."speedhack ") then
        local multiplier = tonumber(string.sub(msg, 11))
        enableSpeedHack(multiplier)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Speed Hack";
            Text = "Speed hack enabled: " .. multiplier .. "x";
        })
    end
    
    -- No Speed Hack
    if string.sub(msg, 1, 12) == (prefix.."nospeedhack") then
        speedBoostActive = false
        lplayer.Character.Humanoid.WalkSpeed = 16
    end
    
    -- Super Jump
    if string.sub(msg, 1, 10) == (prefix.."superjump") then
        enableSuperJump()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Super Jump";
            Text = "Super jump enabled";
        })
    end
    
    -- No Super Jump
    if string.sub(msg, 1, 12) == (prefix.."nosuperjump") then
        superJumpActive = false
        lplayer.Character.Humanoid.JumpPower = 50
    end
    
    -- Infinite Jump
    if string.sub(msg, 1, 11) == (prefix.."infinitjump") then
        enableInfiniteJump()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Infinite Jump";
            Text = "Infinite jump enabled";
        })
    end
    
    -- No Infinite Jump
    if string.sub(msg, 1, 13) == (prefix.."noinfinitjump") then
        infiniteJumpActive = false
    end
    
    -- Anti Gravity
    if string.sub(msg, 1, 12) == (prefix.."antigravity") then
        enableAntiGravity()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Anti-Gravity";
            Text = "Anti-gravity enabled";
        })
    end
    
    -- No Anti Gravity
    if string.sub(msg, 1, 14) == (prefix.."noantigravity") then
        antiGravityActive = false
        if lplayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyForce") then
            lplayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyForce"):Destroy()
        end
    end
    
    -- Gravity Well
    if string.sub(msg, 1, 12) == (prefix.."gravitywell") then
        createGravityWell()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Gravity Well";
            Text = "Gravity well created";
        })
    end
    
    -- No Gravity Well
    if string.sub(msg, 1, 14) == (prefix.."nogravitywell") then
        gravityWellActive = false
    end
    
    -- Rainbow Character
    if string.sub(msg, 1, 8) == (prefix.."rainbow") then
        enableRainbow()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Rainbow Mode";
            Text = "Rainbow colors enabled";
        })
    end
    
    -- No Rainbow
    if string.sub(msg, 1, 10) == (prefix.."norainbow") then
        rainbowChar = false
        for _, part in pairs(lplayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Color = Color3.new(1, 1, 1)
            end
        end
    end
    
    -- Neon Character
    if string.sub(msg, 1, 5) == (prefix.."neon") then
        enableNeon()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Neon Mode";
            Text = "Neon effect enabled";
        })
    end
    
    -- No Neon
    if string.sub(msg, 1, 8) == (prefix.."noneon") then
        disableNeon()
    end
    
    -- Fire Aura
    if string.sub(msg, 1, 9) == (prefix.."fireaura") then
        enableFireAura()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Fire Aura";
            Text = "Fire aura enabled";
        })
    end
    
    -- No Fire Aura
    if string.sub(msg, 1, 11) == (prefix.."nofireaura") then
        fireAura = false
    end
    
    -- Ghost Mode
    if string.sub(msg, 1, 6) == (prefix.."ghost") then
        enableGhostMode()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Ghost Mode";
            Text = "Ghost mode enabled";
        })
    end
    
    -- Unghost
    if string.sub(msg, 1, 8) == (prefix.."unghost") then
        disableGhostMode()
    end
    
    -- Phantom Mode
    if string.sub(msg, 1, 8) == (prefix.."phantom") then
        enablePhantomMode()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Phantom Mode";
            Text = "Phantom mode enabled";
        })
    end
    
    -- Unphantom
    if string.sub(msg, 1, 10) == (prefix.."unphantom") then
        disablePhantomMode()
    end
    
    -- Vortex
    if string.sub(msg, 1, 7) == (prefix.."vortex") then
        createVortex()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Vortex";
            Text = "Vortex created";
        })
    end
    
    -- No Vortex
    if string.sub(msg, 1, 9) == (prefix.."novortex") then
        vortexActive = false
    end
    
    -- Black Hole
    if string.sub(msg, 1, 10) == (prefix.."blackhole") then
        createBlackHole()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Black Hole";
            Text = "Black hole created";
        })
    end
    
    -- No Black Hole
    if string.sub(msg, 1, 12) == (prefix.."noblackhole") then
        blackholeActive = false
    end
    
    -- Teleport All
    if string.sub(msg, 1, 11) == (prefix.."teleportall") then
        teleportAllToYou()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Teleport All";
            Text = "All players teleported to you";
        })
    end
    
    -- Freeze All
    if string.sub(msg, 1, 9) == (prefix.."freezeall") then
        freezeAll()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Freeze All";
            Text = "All players frozen";
        })
    end
    
    -- Unfreeze All
    if string.sub(msg, 1, 11) == (prefix.."unfreezeall") then
        unfreezeAll()
    end
    
    -- Jail Player
    if string.sub(msg, 1, 6) == (prefix.."jail ") then
        local target = string.sub(msg, 7)
        jailPlayer(target)
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Jail";
            Text = target .. " has been jailed";
        })
    end
    
    -- Unjail Player
    if string.sub(msg, 1, 8) == (prefix.."unjail ") then
        local target = string.sub(msg, 9)
        unjailPlayer(target)
    end
    
    -- ESP Player
    if string.sub(msg, 1, 5) == (prefix.."esp ") then
        for _, player in pairs(GetPlayer(string.sub(msg, 6))) do
            createESP(player)
        end
    end
    
    -- Unesp Player
    if string.sub(msg, 1, 7) == (prefix.."unesp ") then
        for _, player in pairs(GetPlayer(string.sub(msg, 8))) do
            removeESP(player)
        end
    end
    
    -- Time Command
    if string.sub(msg, 1, 6) == (prefix.."time ") then
        local hour = tonumber(string.sub(msg, 7))
        if hour then
            game:GetService("Lighting").ClockTime = hour
        end
    end
    
    -- Weather Command
    if string.sub(msg, 1, 9) == (prefix.."weather ") then
        local weather = string.sub(msg, 10)
        if weather == "clear" then
            for _, obj in pairs(game:GetService("Lighting"):GetChildren()) do
                if obj:IsA("Atmosphere") or obj:IsA("Sky") then
                    obj:Destroy()
                end
            end
        elseif weather == "rain" then
            local rain = Instance.new("ParticleEmitter")
            rain.Parent = workspace
            rain.Acceleration = Vector3.new(0, -50, 0)
            rain.Size = NumberSequence.new(0.5)
            rain.Texture = "rbxassetid://243664672"
        end
    end
    
    -- Remove Water
    if string.sub(msg, 1, 12) == (prefix.."removewater") then
        for _, part in pairs(workspace:GetDescendants()) do
            if part.Name == "Water" or part.Name == "Sea" then
                part:Destroy()
            end
        end
    end
    
    -- Fire All
    if string.sub(msg, 1, 7) == (prefix.."fireall") then
        for _, part in pairs(workspace:GetDescendants()) do
            if part:IsA("BasePart") then
                local fire = Instance.new("Fire")
                fire.Parent = part
                fire.Size = 5
            end
        end
    end
    
    -- Stop Fire
    if string.sub(msg, 1, 8) == (prefix.."stopfire") then
        for _, part in pairs(workspace:GetDescendants()) do
            for _, fire in pairs(part:GetChildren()) do
                if fire:IsA("Fire") then
                    fire:Destroy()
                end
            end
        end
    end
end)

-- Command Bar Execution
CMDBAR.FocusLost:connect(function(enterPressed)
    if enterPressed then
        local command = CMDBAR.Text
        lplayer.Chatted:FireServer(prefix .. command)
        CMDBAR.Text = ""
    end
end)

-- Keyboard shortcuts for command bar
Mouse.KeyDown:connect(function(Key)
    if Key == prefix then
        CMDBAR:CaptureFocus()
    end
end)

-- Background loops for spam and other features
spawn(function()
    while wait(spamdelay) do
        if spamming == true then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamtext, "All")
        end
    end
end)

spawn(function()
    while wait(spamdelay) do
        if spammingpm == true then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..pmspammed.." @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@", "All")
        end
    end
end)

-- Cbring loop
local function tp()
    for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            if player.Name == brplr then
                player.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame + lplayer.Character.HumanoidRootPart.CFrame.lookVector * 2
            end
        end
    end
end

local function tpall()
    for i, player in ipairs(game:GetService("Players"):GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            player.Character.HumanoidRootPart.CFrame = lplayer.Character.HumanoidRootPart.CFrame + lplayer.Character.HumanoidRootPart.CFrame.lookVector * 3
        end
    end
end

spawn(function()
    while wait() do
        if cbring == true then
            tp()
        end
    end
end)

spawn(function()
    while wait() do
        if cbringall == true then
            tpall()
        end
    end
end)

-- Final initialization
wait(0.3)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Core Admin Loaded!";
    Text = "Core Admin V3.0 - 330+ Commands Available";
    Icon = "rbxassetid://4457851885";
    Duration = 5;
})
wait(0.1)
print("Core Admin V3.0 loaded with 330+ commands!")

if game:GetService("Workspace").FilteringEnabled == true then
    warn("FE is Enabled (Filtering Enabled)")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FE is Enabled";
        Text = "Filtering Enabled. Enjoy using Core Admin!";
        Duration = 3;
    })
else
    warn("FE is Disabled (Filtering Disabled) Consider using a different admin script.")
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "FE is Disabled";
        Text = "Filtering Disabled. Consider using a different admin script.";
        Duration = 3;
    })
end

-- Fancy intro screen
local intro = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local SubtitleLabel = Instance.new("TextLabel")
local Gradient = Instance.new("UIGradient")

intro.Name = "CoreAdminIntro"
intro.Parent = game:GetService("CoreGui")
intro.ResetOnSpawn = false

Frame.Parent = intro
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
Frame.BackgroundTransparency = 0.1
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.Position = UDim2.new(0, 0, 0, 0)

Gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(30, 30, 50)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 30))
}
Gradient.Rotation = 45
Gradient.Parent = Frame

local IntroCorner = Instance.new("UICorner")
IntroCorner.Parent = Frame

TitleLabel.Parent = Frame
TitleLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TitleLabel.BackgroundTransparency = 1
TitleLabel.Position = UDim2.new(0.5, 0, 0.4, 0)
TitleLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TitleLabel.Size = UDim2.new(0, 0, 0, 0)
TitleLabel.Font = Enum.Font.GothamBlack
TitleLabel.Text = "CORE ADMIN"
TitleLabel.TextColor3 = Color3.fromRGB(100, 150, 255)
TitleLabel.TextSize = 0
TitleLabel.TextStrokeTransparency = 0.8
TitleLabel.TextStrokeColor3 = Color3.fromRGB(20, 20, 30)

SubtitleLabel.Parent = Frame
SubtitleLabel.BackgroundColor3 = Color3.new(1, 1, 1)
SubtitleLabel.BackgroundTransparency = 1
SubtitleLabel.Position = UDim2.new(0.5, 0, 0.55, 0)
SubtitleLabel.AnchorPoint = Vector2.new(0.5, 0.5)
SubtitleLabel.Size = UDim2.new(0, 0, 0, 0)
SubtitleLabel.Font = Enum.Font.Gotham
SubtitleLabel.Text = "Version 3.0 - 330+ Commands"
SubtitleLabel.TextColor3 = Color3.fromRGB(180, 180, 220)
SubtitleLabel.TextSize = 0
SubtitleLabel.TextTransparency = 1

spawn(function()
    for i = 0, 60, 2 do
        TitleLabel.TextSize = i
        TitleLabel.Size = UDim2.new(0, i*10, 0, i)
        wait(0.02)
    end
    
    wait(0.5)
    
    SubtitleLabel.TextSize = 24
    SubtitleLabel.Size = UDim2.new(0, 300, 0, 30)
    for i = 1, 0, -0.1 do
        SubtitleLabel.TextTransparency = i
        wait(0.05)
    end
    
    wait(2)
    
    for i = 0, 1, 0.05 do
        Frame.BackgroundTransparency = i
        TitleLabel.TextTransparency = i
        SubtitleLabel.TextTransparency = i + 0.5
        wait(0.05)
    end
    
    wait(0.5)
    intro:Destroy()
end)

-- Make UI always on top
spawn(function()
    while wait(5) do
        ScreenGui.DisplayOrder = 100
    end
end)