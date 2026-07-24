--[[
    ================================================================
    [ SCRIPT INFORMATION ]
    Project: Custom Script
    Author: OYB
    YouTube: https://www.youtube.com/channel/UCAlXXV1Hbvf7WbfXARuVtiQ
    
    [ TERMS AND CONDITIONS ]
    - You ARE allowed to use and modify this script for your own games.
    - You ARE NOT allowed to re-upload, redistribute, or claim 
      ownership of this script.
    - Removing or altering these credits is strictly prohibited.
    
    Copyright (c) 2026 OYB. All rights reserved.
    ================================================================
]]
local Config = {
    -- [1] PlatoBoost Settings
    ServiceId       = 28417, -- Your PlatoBoost Service ID
    PlatoSecret     = "9ec4319a-e608-4d13-b98b-0130ca8d79f0", -- Your PlatoBoost Secret Key

    -- [2] Anti-Bypass / Global Secret Variable
    Secret          = "dcOxEetoARFYOTEYyCZtmKKzeGKqfcmP", -- This makes the script ONLY run from the key script. Even if they copy the original obfuscated script to bypass the key, they won't be able to!
    
    -- [3] Scripts & Links
    MainScriptURL   = "https://raw.githubusercontent.com/Hugodasil/Keysystem/refs/heads/main/script.lua", -- The raw URL of your main script
    
    -- [4] Social Media Settings (Set to true to show, false to hide)
    ShowDiscord     = false,
    DiscordURL      = "https://discord.gg/kT55J724BK",
    
    ShowInstagram   = false,
    InstagramURL    = "https://www.instagram.com/oyb0i/",
    
    ShowYoutube     = false,
    YoutubeURL      = "https://www.youtube.com/channel/UCAlXXV1Hbvf7WbfXARuVtiQ",

    -- [5] File System
    KeyFileName     = "Mykey.txt", -- The name of the file where the valid key will be saved for auto-login

    -- [6] GUI Management
    OldGuiName      = "Tiger Menu", -- Name of the old GUI to destroy if it's already open
    MainGuiName     = "Tiger Menu", -- Name of the main script's GUI to check if it's already executing

    -- [7] Hub Information & UI Text
    HubName         = "Tiger Menu", -- The main title shown at the top of the GUI
    HubDescription  = "Isto é necessário" -- The text shown below the title
}

-------------------------------------------------------------------------------
--! LIBRARIES (JSON & CRYPTOGRAPHY) - DO NOT MODIFY
-------------------------------------------------------------------------------
local a=2^32;local b=a-1;local function c(d,e)local f,g=0,1;while d~=0 or e~=0 do local h,i=d%2,e%2;local j=(h+i)%2;f=f+j*g;d=math.floor(d/2)e=math.floor(e/2)g=g*2 end;return f%a end;local function k(d,e,l,...)local m;if e then d=d%a;e=e%a;m=c(d,e)if l then m=k(m,l,...)end;return m elseif d then return d%a else return 0 end end;local function n(d,e,l,...)local m;if e then d=d%a;e=e%a;m=(d+e-c(d,e))/2;if l then m=n(m,l,...)end;return m elseif d then return d%a else return b end end;local function o(p)return b-p end;local function q(d,r)if r<0 then return lshift(d,-r)end;return math.floor(d%2^32/2^r)end;local function s(p,r)if r>31 or r<-31 then return 0 end;return q(p%a,r)end;local function lshift(d,r)if r<0 then return s(d,-r)end;return d*2^r%2^32 end;local function t(p,r)p=p%a;r=r%32;local u=n(p,2^r-1)return s(p,r)+lshift(u,32-r)end;local v={0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2}local function w(x)return string.gsub(x,".",function(l)return string.format("%02x",string.byte(l))end)end;local function y(z,A)local x=""for B=1,A do local C=z%256;x=string.char(C)..x;z=(z-C)/256 end;return x end;local function D(x,B)local A=0;for B=B,B+3 do A=A*256+string.byte(x,B)end;return A end;local function E(F,G)local H=64-(G+9)%64;G=y(8*G,8)F=F.."\128"..string.rep("\0",H)..G;assert(#F%64==0)return F end;local function I(J)J[1]=0x6a09e667;J[2]=0xbb67ae85;J[3]=0x3c6ef372;J[4]=0xa54ff53a;J[5]=0x510e527f;J[6]=0x9b05688c;J[7]=0x1f83d9ab;J[8]=0x5be0cd19;return J end;local function K(F,B,J)local L={}for M=1,16 do L[M]=D(F,B+(M-1)*4)end;for M=17,64 do local N=L[M-15]local O=k(t(N,7),t(N,18),s(N,3))N=L[M-2]L[M]=(L[M-16]+O+L[M-7]+k(t(N,17),t(N,19),s(N,10)))%a end;local d,e,l,P,Q,R,S,T=J[1],J[2],J[3],J[4],J[5],J[6],J[7],J[8]for B=1,64 do local O=k(t(d,2),t(d,13),t(d,22))local U=k(n(d,e),n(d,l),n(e,l))local V=(O+U)%a;local W=k(t(Q,6),t(Q,11),t(Q,25))local X=k(n(Q,R),n(o(Q),S))local Y=(T+W+X+v[B]+L[B])%a;T=S;S=R;R=Q;Q=(P+Y)%a;P=l;l=e;e=d;d=(Y+V)%a end;J[1]=(J[1]+d)%a;J[2]=(J[2]+e)%a;J[3]=(J[3]+l)%a;J[4]=(J[4]+P)%a;J[5]=(J[5]+Q)%a;J[6]=(J[6]+R)%a;J[7]=(J[7]+S)%a;J[8]=(J[8]+T)%a end;local function Z(F)F=E(F,#F)local J=I({})for B=1,#F,64 do K(F,B,J)end;return w(y(J[1],4)..y(J[2],4)..y(J[3],4)..y(J[4],4)..y(J[5],4)..y(J[6],4)..y(J[7],4)..y(J[8],4))end;local e;local l={["\\"]="\\",["\""]="\"",["\b"]="b",["\f"]="f",["\n"]="n",["\r"]="r",["\t"]="t"}local P={["/"]="/"}for Q,R in pairs(l)do P[R]=Q end;local S=function(T)return"\\"..(l[T]or string.format("u%04x",T:byte()))end;local B=function(M)return"null"end;local v=function(M,z)local _={}z=z or{}if z[M]then error("circular reference")end;z[M]=true;if rawget(M,1)~=nil or next(M)==nil then local A=0;for Q in pairs(M)do if type(Q)~="number"then error("invalid table: mixed or invalid key types")end;A=A+1 end;if A~=#M then error("invalid table: sparse array")end;for a0,R in ipairs(M)do table.insert(_,e(R,z))end;z[M]=nil;return"["..table.concat(_,",").."]"else for Q,R in pairs(M)do if type(Q)~="string"then error("invalid table: mixed or invalid key types")end;table.insert(_,e(Q,z)..":"..e(R,z))end;z[M]=nil;return"{"..table.concat(_,",").."}"end end;local g=function(M)return'"'..M:gsub('[%z\1-\31\\\"]',S)..'"'end;local a1=function(M)if M~=M or M<=-math.huge or M>=math.huge then error("unexpected number value '"..tostring(M).."'")end;return string.format("%.14g",M)end;local j={["nil"]=B,["table"]=v,["string"]=g,["number"]=a1,["boolean"]=tostring}e=function(M,z)local x=type(M)local a2=j[x]if a2 then return a2(M,z)end;error("unexpected type '"..x.."'")end;local a3=function(M)return e(M)end;local a4;local N=function(...)local _={}for a0=1,select("#",...)do _[select(a0,...)]=true end;return _ end;local L=N(" ","\t","\r","\n")local p=N(" ","\t","\r","\n","]","}",",")local a5=N("\\","/",'"',"b","f","n","r","t","u")local m=N("true","false","null")local a6={["true"]=true,["false"]=false,["null"]=nil}local a7=function(a8,a9,aa,ab)for a0=a9,#a8 do if aa[a8:sub(a0,a0)]~=ab then return a0 end end;return#a8+1 end;local ac=function(a8,a9,J)local ad=1;local ae=1;for a0=1,a9-1 do ae=ae+1;if a8:sub(a0,a0)=="\n"then ad=ad+1;ae=1 end end;error(string.format("%s at line %d col %d",J,ad,ae))end;local af=function(A)local a2=math.floor;if A<=0x7f then return string.char(A)elseif A<=0x7ff then return string.char(a2(A/64)+192,A%64+128)elseif A<=0xffff then return string.char(a2(A/4096)+224,a2(A%4096/64)+128,A%64+128)elseif A<=0x10ffff then return string.char(a2(A/262144)+240,a2(A%262144/4096)+128,a2(A%4096/64)+128,A%64+128)end;error(string.format("invalid unicode codepoint '%x'",A))end;local ag=function(ah)local ai=tonumber(ah:sub(1,4),16)local aj=tonumber(ah:sub(7,10),16)if aj then return af((ai-0xd800)*0x400+aj-0xdc00+0x10000)else return af(ai)end end;local ak=function(a8,a0)local _=""local al=a0+1;local Q=al;while al<=#a8 do local am=a8:byte(al)if am<32 then ac(a8,al,"control character in string")elseif am==92 then _=_..a8:sub(Q,al-1)al=al+1;local T=a8:sub(al,al)if T=="u"then local an=a8:match("^[dD][89aAbB]%x%x\\u%x%x%x%x",al+1)or a8:match("^%x%x%x%x",al+1)or ac(a8,al-1,"invalid unicode escape in string")_=_..ag(an)al=al+#an else if not a5[T]then ac(a8,al-1,"invalid escape char '"..T.."' in string")end;_=_..P[T]end;Q=al+1 elseif am==34 then _=_..a8:sub(Q,al-1)return _,al+1 end;al=al+1 end;ac(a8,a0,"expected closing quote for string")end;local ao=function(a8,a0)local am=a7(a8,a0,p)local ah=a8:sub(a0,am-1)local A=tonumber(ah)if not A then ac(a8,a0,"invalid number '"..ah.."'")end;return A,am end;local ap=function(a8,a0)local am=a7(a8,a0,p)local aq=a8:sub(a0,am-1)if not m[aq]then ac(a8,a0,"invalid literal '"..aq.."'")end;return a6[aq],am end;local ar=function(a8,a0)local _={}local A=1;a0=a0+1;while 1 do local am;a0=a7(a8,a0,L,true)if a8:sub(a0,a0)=="]"then a0=a0+1;break end;am,a0=a4(a8,a0)_[A]=am;A=A+1;a0=a7(a8,a0,L,true)local as=a8:sub(a0,a0)a0=a0+1;if as=="]"then break end;if as~=","then ac(a8,a0,"expected ']' or ','")end end;return _,a0 end;local at=function(a8,a0)local _={}a0=a0+1;while 1 do local au,M;a0=a7(a8,a0,L,true)if a8:sub(a0,a0)=="}"then a0=a0+1;break end;if a8:sub(a0,a0)~='"'then ac(a8,a0,"expected string for key")end;au,a0=a4(a8,a0)a0=a7(a8,a0,L,true)if a8:sub(a0,a0)~=":"then ac(a8,a0,"expected ':' after key")end;a0=a7(a8,a0+1,L,true)M,a0=a4(a8,a0)_[au]=M;a0=a7(a8,a0,L,true)local as=a8:sub(a0,a0)a0=a0+1;if as=="}"then break end;if as~=","then ac(a8,a0,"expected '}' or ','")end end;return _,a0 end;local av={['"']=ak,["0"]=ao,["1"]=ao,["2"]=ao,["3"]=ao,["4"]=ao,["5"]=ao,["6"]=ao,["7"]=ao,["8"]=ao,["9"]=ao,["-"]=ao,["t"]=ap,["f"]=ap,["n"]=ap,["["]=ar,["{"]=at}a4=function(a8,a9)local as=a8:sub(a9,a9)local a2=av[as]if a2 then return a2(a8,a9)end;ac(a8,a9,"unexpected character '"..as.."'")end;local aw=function(a8)if type(a8)~="string"then error("expected argument of type string, got "..type(a8))end;local _,a9=a4(a8,a7(a8,1,L,true))a9=a7(a8,a9,L,true)if a9<=#a8 then ac(a8,a9,"trailing garbage")end;return _ end;
local lEncode, lDecode, lDigest = a3, aw, Z;

-------------------------------------------------------------------------------
--! CORE FUNCTIONS (REQUESTS & VERIFICATION)
-------------------------------------------------------------------------------

local useNonce = true -- Hidden from Config to avoid user confusion, but active for security

-- Safe request function for universal executor support
local function safeRequest(options)
    local req = request or http_request or syn_request or (http and http.request )
    if not req then return nil, "HTTP requests not supported" end
    local success, response = pcall(function() return req(options) end)
    if success and response then return response else return nil, "Connection Error" end
end

local fSetClipboard = setclipboard or toclipboard or function() end
local fStringChar, fToString, fOsTime, fMathRandom, fMathFloor = string.char, tostring, os.time, math.random, math.floor
local fGetHwid = gethwid or function() return game:GetService("RbxAnalyticsService"):GetClientId() end

local cachedLink, cachedTime = "", 0
local host = "https://api.platoboost.com"

-- Check server connectivity
local function checkConnectivity( )
    local response = safeRequest({Url = host .. "/public/connectivity", Method = "GET"})
    if not response or (response.StatusCode ~= 200 and response.StatusCode ~= 429) then
        host = "https://api.platoboost.net"
    end
end
checkConnectivity( )

local function generateNonce()
    local str = ""
    for _ = 1, 16 do str = str .. fStringChar(fMathFloor(fMathRandom() * (122 - 97 + 1)) + 97) end
    return str
end

-- Get player's key link
local function cacheLink()
    if cachedTime + (10*60) < fOsTime() then
        local response, err = safeRequest({
            Url = host .. "/public/start",
            Method = "POST",
            Body = lEncode({service = Config.ServiceId, identifier = lDigest(fGetHwid())}),
            Headers = {["Content-Type"] = "application/json"}
        })
        if response and response.StatusCode == 200 then
            local decoded = lDecode(response.Body)
            if decoded.success then
                cachedLink = decoded.data.url
                cachedTime = fOsTime()
                return true, cachedLink
            end
        end
        return false, err or "Server Unreachable"
    end
    return true, cachedLink
end

-- Verify key on input
local function redeemKey(key)
    local nonce = generateNonce()
    local body = {identifier = lDigest(fGetHwid()), key = key}
    if useNonce then body.nonce = nonce end
    
    local response, err = safeRequest({
        Url = host .. "/public/redeem/" .. fToString(Config.ServiceId),
        Method = "POST",
        Body = lEncode(body),
        Headers = {["Content-Type"] = "application/json"}
    })
    
    if response and response.StatusCode == 200 then
        local decoded = lDecode(response.Body)
        if decoded.success and decoded.data.valid then
            if useNonce then
                if decoded.data.hash == lDigest("true" .. "-" .. nonce .. "-" .. Config.PlatoSecret) then 
                    if writefile then writefile(Config.KeyFileName, key) end
                    return true, "Success" 
                end
                return false, "Integrity Check Failed"
            end
            if writefile then writefile(Config.KeyFileName, key) end
            return true, "Success"
        end
        return false, decoded.message or "Invalid Key"
    end
    return false, err or "Server Error"
end

-------------------------------------------------------------------------------
--! GUI & MAIN SCRIPT EXECUTION
-------------------------------------------------------------------------------

local function StartMainScript()
    local player = game:GetService("Players").LocalPlayer
    local pGui = player:WaitForChild("PlayerGui")
    
    -- Destroy old GUI if it exists
    if pGui:FindFirstChild(Config.OldGuiName) then 
        pGui[Config.OldGuiName]:Destroy() 
        task.wait(0.1)
    end
    
    -- Set secret global variable to bypass main script protection
    _G[Config.Secret] = true 
    
    -- Execute main script
    loadstring(game:HttpGet(Config.MainScriptURL))()
end

local function CreateGUI()
    local player = game:GetService("Players").LocalPlayer
    local coreGui = game:GetService("CoreGui")
    local targetParent = pcall(function() return coreGui end) and coreGui or player:WaitForChild("PlayerGui")
    
    if targetParent:FindFirstChild("OYB_KeySystem") then targetParent.OYB_KeySystem:Destroy() end

    local ScreenGui = Instance.new("ScreenGui", targetParent)
    ScreenGui.Name = "OYB_KeySystem"
    ScreenGui.ResetOnSpawn = false

    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Size = UDim2.new(0, 340, 0, 420)
    MainFrame.Position = UDim2.new(0.5, -170, 0.5, -210)
    MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    MainFrame.Active = true;
    MainFrame.Draggable = true
    Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 15)
    
    local mainStroke = Instance.new("UIStroke", MainFrame)
    mainStroke.Thickness = 2;
    mainStroke.Color = Color3.fromRGB(40, 40, 40)

    -- Close Button
    local CloseBtn = Instance.new("TextButton", MainFrame)
    CloseBtn.Size = UDim2.new(0, 30, 0, 30)
    CloseBtn.Position = UDim2.new(1, -35, 0, 10)
    CloseBtn.BackgroundTransparency = 1
    CloseBtn.Text = "X"
    CloseBtn.TextColor3 = Color3.fromRGB(255, 50, 50)
    CloseBtn.Font = Enum.Font.GothamBold
    CloseBtn.TextSize = 18
    CloseBtn.ZIndex = 10
    CloseBtn.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)

    local Title = Instance.new("TextLabel", MainFrame)
    Title.Size = UDim2.new(1, 0, 0, 50)
    Title.Text = Config.HubName
    Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Title.TextColor3 = Color3.fromRGB(0, 170, 255)
    Title.Font = Enum.Font.GothamBold;
    Title.TextSize = 16
    Instance.new("UICorner", Title).CornerRadius = UDim.new(0, 15)

    local PromoText = Instance.new("TextLabel", MainFrame)
    PromoText.Size = UDim2.new(0.9, 0, 0, 50)
    PromoText.Position = UDim2.new(0.05, 0, 0, 50)
    PromoText.BackgroundTransparency = 1
    PromoText.Text = Config.HubDescription
    PromoText.TextColor3 = Color3.fromRGB(0, 170, 255)
    PromoText.Font = Enum.Font.GothamBold;
    PromoText.TextSize = 14
    PromoText.TextWrapped = true

    -- Rainbow Stroke Function
    local function AddRainbowStroke(parent)
        local stroke = Instance.new("UIStroke", parent)
        stroke.Thickness = 2
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        task.spawn(function()
            while task.wait() do
                local hue = tick() % 5 / 5
                stroke.Color = Color3.fromHSV(hue, 1, 1)
            end
        end)
    end

    -- Dynamic Positioning for elements
    local currentYOffset = 105

    -- Discord Button
    if Config.ShowDiscord then
        local DiscordBtn = Instance.new("TextButton", MainFrame)
        DiscordBtn.Size = UDim2.new(0.85, 0, 0, 35)
        DiscordBtn.Position = UDim2.new(0.075, 0, 0, currentYOffset)
        DiscordBtn.Text = "      JOIN DISCORD"
        DiscordBtn.Font = "GothamBold";
        DiscordBtn.TextSize = 14
        DiscordBtn.BackgroundColor3 = Color3.fromRGB(88, 101, 242)
        DiscordBtn.TextColor3 = Color3.new(1, 1, 1)
        Instance.new("UICorner", DiscordBtn)
        AddRainbowStroke(DiscordBtn)

        local DiscordIcon = Instance.new("ImageLabel", DiscordBtn)
        DiscordIcon.Size = UDim2.new(0, 20, 0, 20)
        DiscordIcon.Position = UDim2.new(0.1, 0, 0.5, -10)
        DiscordIcon.BackgroundTransparency = 1
        DiscordIcon.Image = "rbxassetid://18505728201"
        
        DiscordBtn.MouseButton1Click:Connect(function()
            fSetClipboard(Config.DiscordURL)
            local Status = MainFrame:FindFirstChild("StatusLabel")
            if Status then 
                Status.Text = "Discord Link Copied!"
                Status.TextColor3 = Color3.fromRGB(88, 101, 242)
            end
            -- Auto-extract invite code from config URL
            local inviteCode = string.match(Config.DiscordURL, "discord%.gg/([%w-]+)")
            if syn and syn.request and inviteCode then
                syn.request({Url = "http://localhost:1111/discord?invite=" .. inviteCode, Method = "GET"})
            end
        end)
        
        currentYOffset = currentYOffset + 45
    end

    -- Instagram Button
    if Config.ShowInstagram then
        local InstaBtn = Instance.new("TextButton", MainFrame)
        InstaBtn.Size = UDim2.new(0.85, 0, 0, 35)
        InstaBtn.Position = UDim2.new(0.075, 0, 0, currentYOffset)
        InstaBtn.Text = "      FOLLOW INSTAGRAM"
        InstaBtn.Font = "GothamBold";
        InstaBtn.TextSize = 14
        InstaBtn.BackgroundColor3 = Color3.fromRGB(225, 48, 108)
        InstaBtn.TextColor3 = Color3.new(1, 1, 1)
        Instance.new("UICorner", InstaBtn)
        AddRainbowStroke(InstaBtn)

        local InstaIcon = Instance.new("ImageLabel", InstaBtn)
        InstaIcon.Size = UDim2.new(0, 20, 0, 20)
        InstaIcon.Position = UDim2.new(0.1, 0, 0.5, -10)
        InstaIcon.BackgroundTransparency = 1
        InstaIcon.Image = "rbxassetid://18355586382"
        
        InstaBtn.MouseButton1Click:Connect(function()
            fSetClipboard(Config.InstagramURL)
            local Status = MainFrame:FindFirstChild("StatusLabel")
            if Status then 
                Status.Text = "Instagram Link Copied!"
                Status.TextColor3 = Color3.fromRGB(225, 48, 108)
            end
        end)
        
        currentYOffset = currentYOffset + 45
    end

    -- YouTube Button
    if Config.ShowYoutube then
        local YTBtn = Instance.new("TextButton", MainFrame)
        YTBtn.Size = UDim2.new(0.85, 0, 0, 35)
        YTBtn.Position = UDim2.new(0.075, 0, 0, currentYOffset)
        YTBtn.Text = "      SUBSCRIBE YOUTUBE"
        YTBtn.Font = "GothamBold";
        YTBtn.TextSize = 14
        YTBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        YTBtn.TextColor3 = Color3.new(1, 1, 1)
        Instance.new("UICorner", YTBtn)
        AddRainbowStroke(YTBtn)

        local YTIcon = Instance.new("ImageLabel", YTBtn)
        YTIcon.Size = UDim2.new(0, 20, 0, 20)
        YTIcon.Position = UDim2.new(0.1, 0, 0.5, -10)
        YTIcon.BackgroundTransparency = 1
        YTIcon.Image = "rbxassetid://82532989017804"
        
        YTBtn.MouseButton1Click:Connect(function()
            fSetClipboard(Config.YoutubeURL)
            local Status = MainFrame:FindFirstChild("StatusLabel")
            if Status then
                Status.Text = "YouTube Link Copied!"
                Status.TextColor3 = Color3.fromRGB(255, 0, 0)
            end
        end)
        
        currentYOffset = currentYOffset + 45
    end

    -- Key Input Box
    local KeyInput = Instance.new("TextBox", MainFrame)
    KeyInput.Size = UDim2.new(0.85, 0, 0, 40)
    KeyInput.Position = UDim2.new(0.075, 0, 0, currentYOffset + 15)
    KeyInput.PlaceholderText = "Enter Key..."
    KeyInput.Text = ""
    KeyInput.Font = Enum.Font.GothamSemibold;
    KeyInput.TextSize = 14
    KeyInput.BackgroundColor3 = Color3.fromRGB(25, 25, 25);
    KeyInput.TextColor3 = Color3.new(1, 1, 1)
    Instance.new("UICorner", KeyInput)

    local VerifyBtn = Instance.new("TextButton", MainFrame)
    VerifyBtn.Size = UDim2.new(0.4, 0, 0, 40)
    VerifyBtn.Position = UDim2.new(0.075, 0, 0, currentYOffset + 65)
    VerifyBtn.Text = "VERIFY"
    VerifyBtn.Font = "GothamBold";
    VerifyBtn.TextSize = 14
    VerifyBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255);
    VerifyBtn.TextColor3 = Color3.new(1, 1, 1)
    Instance.new("UICorner", VerifyBtn)

    local GetKeyBtn = Instance.new("TextButton", MainFrame)
    GetKeyBtn.Size = UDim2.new(0.4, 0, 0, 40)
    GetKeyBtn.Position = UDim2.new(0.525, 0, 0, currentYOffset + 65)
    GetKeyBtn.Text = "GET KEY"
    GetKeyBtn.Font = "GothamBold";
    GetKeyBtn.TextSize = 14
    GetKeyBtn.BackgroundColor3 = Color3.fromRGB(35, 35, 35);
    GetKeyBtn.TextColor3 = Color3.new(1, 1, 1)
    Instance.new("UICorner", GetKeyBtn)

    local Status = Instance.new("TextLabel", MainFrame)
    Status.Name = "StatusLabel"
    Status.Size = UDim2.new(1, 0, 0, 30)
    Status.Position = UDim2.new(0, 0, 0, currentYOffset + 115)
    Status.BackgroundTransparency = 1
    Status.Text = "Waiting for input..."
    Status.TextColor3 = Color3.fromRGB(150, 150, 150)
    Status.Font = Enum.Font.Gotham;
    Status.TextSize = 12
    
    -- Dynamically adjust main frame height based on active elements
    MainFrame.Size = UDim2.new(0, 340, 0, currentYOffset + 160)

    -- Logic
    VerifyBtn.MouseButton1Click:Connect(function()
        local key = KeyInput.Text
        if key == "" then Status.Text = "Enter a key!"; return end
        Status.Text = "Verifying..."
        local success, msg = redeemKey(key)
        if success then
            Status.Text = "Success! Loading..."
            Status.TextColor3 = Color3.fromRGB(0, 255, 100)
            task.wait(0.5)
            ScreenGui:Destroy()
            StartMainScript()
        else
            Status.Text = msg
            Status.TextColor3 = Color3.fromRGB(255, 50, 50)
        end
    end)

    GetKeyBtn.MouseButton1Click:Connect(function()
        Status.Text = "Getting Link..."
        local success, link = cacheLink()
        if success then
            fSetClipboard(link)
            Status.Text = "Link Copied!"
            Status.TextColor3 = Color3.fromRGB(0, 170, 255)
        else
            Status.Text = "Error: " .. tostring(link)
        end
    end)

    -- Auto Check Saved Key
    if isfile and isfile(Config.KeyFileName) then
        local savedKey = readfile(Config.KeyFileName)
        if savedKey ~= "" then
            Status.Text = "Found saved key, verifying..."
            task.spawn(function()
                local success, msg = redeemKey(savedKey)
                if success then
                    Status.Text = "Auto-login success!"
                    Status.TextColor3 = Color3.fromRGB(0, 255, 100)
                    task.wait(0.5)
                    ScreenGui:Destroy()
                    StartMainScript()
                else
                    Status.Text = "Saved key expired or invalid."
                    Status.TextColor3 = Color3.fromRGB(255, 150, 0)
                end
            end)
        end
    end
end

-- Check if main script GUI is already open
local player = game:GetService("Players").LocalPlayer
local pGui = player:WaitForChild("PlayerGui")

if pGui:FindFirstChild(Config.MainGuiName) then
    StartMainScript() -- Run if main script is already active
    return
end

-- Initialize Key System GUI
CreateGUI()


# Keysyste.--[[
    ================================================================
    [ SCRIPT INFORMATION ]
    Project: Custom Script
    Author: Tiger Menu
    YouTube: https://www.youtube.com/channel/UCAlXXV1Hbvf7WbfXARuVtiQ
    
    [ TERMS AND CONDITIONS ]
    - You ARE allowed to use and modify this script for your own games.
    - You ARE NOT allowed to re-upload, redistribute, or claim 
      ownership of this script.
    - Removing or altering these credits is strictly prohibited.
    
    Copyright (c) 2026 OYB. All rights reserved.
    ================================================================
]]

-- ⚠️ IMPORTANT: Put this code at the VERY TOP of your Main Script (before obfuscating) ⚠️

local ProtectionConfig = {
    -- 🔴 CRITICAL: This MUST exactly match the 'Secret' value in your Key System's Config!
    -- If your Key System has: Secret = "Test"
    -- Then this must also be: SecretKey = "Test"
    SecretKey = "dcOxEetoARFYOTEYyCZtmKKzeGKqfcmP",
    
    -- The name of your Hub (shown in the kick message if they try to bypass)
    HubName = "Tiger Menu"
}

-- Anti-Bypass Logic: Checks if the Key System successfully set the global variable
if not _G[ProtectionConfig.SecretKey] then
    local player = game:GetService("Players").LocalPlayer
    if player then
        player:Kick("\n🛡️ Unauthorized Execution 🛡️\n\nPlease use the official Key System to run " .. ProtectionConfig.HubName)
    end
    return -- Stops the rest of the script from loading!
end

-------------------------------------------------------------------------------
-- 👇 YOUR MAIN SCRIPT CODE STARTS HERE 👇
-------------------------------------------------------------------------------

print(ProtectionConfig.HubName .. " Loaded Successfully!")

--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 

designed using localmaze gui creator
]=]

local LMG2L = {};

LMG2L["ScreenGui_1"] = Instance.new("ScreenGui");
LMG2L["ScreenGui_1"]["Name"] = "GravadorDeRotaGui";
LMG2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
LMG2L["ScreenGui_1"]["ResetOnSpawn"] = false;

if gethui then
    LMG2L["ScreenGui_1"].Parent = gethui()
elseif syn and syn.protect_gui then
    syn.protect_gui(LMG2L["ScreenGui_1"])
    LMG2L["ScreenGui_1"].Parent = game:GetService("CoreGui")
else
    LMG2L["ScreenGui_1"].Parent = game:GetService("CoreGui")
end


-- Botão de Abrir/Fechar o Menu (estilo do botão TI)
LMG2L["BtnAbrirFechar"] = Instance.new("TextButton", LMG2L["ScreenGui_1"]);
LMG2L["BtnAbrirFechar"]["BorderSizePixel"] = 0;
LMG2L["BtnAbrirFechar"]["TextSize"] = 36;
LMG2L["BtnAbrirFechar"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["BtnAbrirFechar"]["BackgroundColor3"] = Color3.fromRGB(15, 255, 214);
LMG2L["BtnAbrirFechar"]["Size"] = UDim2.new(0, 56, 0, 52);
LMG2L["BtnAbrirFechar"]["Text"] = [[TI]];
LMG2L["BtnAbrirFechar"]["Position"] = UDim2.new(0, 20, 0, 20);
LMG2L["BtnAbrirFechar"]["Name"] = [[BtnAbrirFechar]];
LMG2L["BtnAbrirFechar"]["ZIndex"] = 100;
Instance.new("UICorner", LMG2L["BtnAbrirFechar"]).CornerRadius = UDim.new(0, 50);

LMG2L["GravadorDeRota_2"] = Instance.new("Frame", LMG2L["ScreenGui_1"]);
LMG2L["GravadorDeRota_2"]["Visible"] = false;
LMG2L["GravadorDeRota_2"]["BorderSizePixel"] = 0;
LMG2L["GravadorDeRota_2"]["BackgroundColor3"] = Color3.fromRGB(33, 33, 33);
LMG2L["GravadorDeRota_2"]["Size"] = UDim2.new(0, 316, 0, 508);
LMG2L["GravadorDeRota_2"]["Position"] = UDim2.new(0, 854, 0, -8);
LMG2L["GravadorDeRota_2"]["Name"] = [[GravadorDeRota]];
LMG2L["GravadorDeRota_2"]["Active"] = true;


LMG2L["BtnReproduzirUltimaGravacao_3"] = Instance.new("TextButton", LMG2L["GravadorDeRota_2"]);
LMG2L["BtnReproduzirUltimaGravacao_3"]["BorderSizePixel"] = 0;
LMG2L["BtnReproduzirUltimaGravacao_3"]["TextSize"] = 12;
LMG2L["BtnReproduzirUltimaGravacao_3"]["TextColor3"] = Color3.fromRGB(255, 252, 254);
LMG2L["BtnReproduzirUltimaGravacao_3"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
LMG2L["BtnReproduzirUltimaGravacao_3"]["Size"] = UDim2.new(0, 290, 0, 42);
LMG2L["BtnReproduzirUltimaGravacao_3"]["Text"] = [[Reproduzir Última Gravação]];
LMG2L["BtnReproduzirUltimaGravacao_3"]["Name"] = [[BtnReproduzirUltimaGravacao]];
LMG2L["BtnReproduzirUltimaGravacao_3"]["Position"] = UDim2.new(0, 14, 0, 110);


LMG2L["UICorner_4"] = Instance.new("UICorner", LMG2L["BtnReproduzirUltimaGravacao_3"]);



LMG2L["BtnGravar_5"] = Instance.new("TextButton", LMG2L["GravadorDeRota_2"]);
LMG2L["BtnGravar_5"]["BorderSizePixel"] = 0;
LMG2L["BtnGravar_5"]["TextSize"] = 14;
LMG2L["BtnGravar_5"]["TextColor3"] = Color3.fromRGB(255, 252, 254);
LMG2L["BtnGravar_5"]["BackgroundColor3"] = Color3.fromRGB(15, 255, 214);
LMG2L["BtnGravar_5"]["Size"] = UDim2.new(0, 290, 0, 42);
LMG2L["BtnGravar_5"]["Text"] = [[Gravar]];
LMG2L["BtnGravar_5"]["Name"] = [[BtnGravar]];
LMG2L["BtnGravar_5"]["Position"] = UDim2.new(0, 14, 0, 58);


LMG2L["UICorner_6"] = Instance.new("UICorner", LMG2L["BtnGravar_5"]);



LMG2L["UICorner_7"] = Instance.new("UICorner", LMG2L["GravadorDeRota_2"]);
LMG2L["UICorner_7"]["CornerRadius"] = UDim.new(0, 10);


LMG2L["BtnSalvarGravacao_8"] = Instance.new("TextButton", LMG2L["GravadorDeRota_2"]);
LMG2L["BtnSalvarGravacao_8"]["BorderSizePixel"] = 0;
LMG2L["BtnSalvarGravacao_8"]["TextSize"] = 12;
LMG2L["BtnSalvarGravacao_8"]["TextColor3"] = Color3.fromRGB(15, 255, 214);
LMG2L["BtnSalvarGravacao_8"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
LMG2L["BtnSalvarGravacao_8"]["Size"] = UDim2.new(0, 290, 0, 42);
LMG2L["BtnSalvarGravacao_8"]["Text"] = [[Salvar Gravação]];
LMG2L["BtnSalvarGravacao_8"]["Name"] = [[BtnSalvarGravacao]];
LMG2L["BtnSalvarGravacao_8"]["Position"] = UDim2.new(0, 14, 0, 162);


LMG2L["UICorner_9"] = Instance.new("UICorner", LMG2L["BtnSalvarGravacao_8"]);



LMG2L["TextLabel2_a"] = Instance.new("TextLabel", LMG2L["GravadorDeRota_2"]);
LMG2L["TextLabel2_a"]["BorderSizePixel"] = 0;
LMG2L["TextLabel2_a"]["TextTransparency"] = 1;
LMG2L["TextLabel2_a"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
LMG2L["TextLabel2_a"]["Size"] = UDim2.new(0, 290, 0, 5);
LMG2L["TextLabel2_a"]["Name"] = [[TextLabel2]];
LMG2L["TextLabel2_a"]["Position"] = UDim2.new(0, 14, 0, 215);


LMG2L["UICorner_b"] = Instance.new("UICorner", LMG2L["TextLabel2_a"]);



LMG2L["TextLabel_c"] = Instance.new("TextLabel", LMG2L["GravadorDeRota_2"]);
LMG2L["TextLabel_c"]["BorderSizePixel"] = 0;
LMG2L["TextLabel_c"]["TextSize"] = 12;
LMG2L["TextLabel_c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextLabel_c"]["TextColor3"] = Color3.fromRGB(15, 255, 214);
LMG2L["TextLabel_c"]["BackgroundTransparency"] = 1;
LMG2L["TextLabel_c"]["Size"] = UDim2.new(0, 232, 0, 56);
LMG2L["TextLabel_c"]["Text"] = [[GRAVADOR DE ROTA By Tiger]];
LMG2L["TextLabel_c"]["Position"] = UDim2.new(0, 20, 0, -4);


LMG2L["FrameConfiguracao_d"] = Instance.new("ScrollingFrame", LMG2L["GravadorDeRota_2"]);
LMG2L["FrameConfiguracao_d"]["Visible"] = false;
LMG2L["FrameConfiguracao_d"]["BorderSizePixel"] = 0;
LMG2L["FrameConfiguracao_d"]["BackgroundColor3"] = Color3.fromRGB(28, 28, 28);
LMG2L["FrameConfiguracao_d"]["Size"] = UDim2.new(0, 316, 0, 212);
LMG2L["FrameConfiguracao_d"]["Position"] = UDim2.new(0, 0, 0, 296);
LMG2L["FrameConfiguracao_d"]["ZIndex"] = 10;
LMG2L["FrameConfiguracao_d"]["Name"] = [[FrameConfiguracao]];
LMG2L["FrameConfiguracao_d"]["Active"] = true;
LMG2L["FrameConfiguracao_d"]["ScrollBarThickness"] = 4;
LMG2L["FrameConfiguracao_d"]["CanvasSize"] = UDim2.new(0, 0, 0, 310);


LMG2L["UICorner_e"] = Instance.new("UICorner", LMG2L["FrameConfiguracao_d"]);



LMG2L["TextBoxConfigurarKey_f"] = Instance.new("TextBox", LMG2L["FrameConfiguracao_d"]);
LMG2L["TextBoxConfigurarKey_f"]["Name"] = [[TextBoxConfigurarKey]];
LMG2L["TextBoxConfigurarKey_f"]["BorderSizePixel"] = 0;
LMG2L["TextBoxConfigurarKey_f"]["TextSize"] = 12;
LMG2L["TextBoxConfigurarKey_f"]["TextColor3"] = Color3.fromRGB(15, 255, 214);
LMG2L["TextBoxConfigurarKey_f"]["BackgroundColor3"] = Color3.fromRGB(54, 54, 54);
LMG2L["TextBoxConfigurarKey_f"]["Size"] = UDim2.new(0, 80, 0, 32);
LMG2L["TextBoxConfigurarKey_f"]["Position"] = UDim2.new(0, 164, 0, 52);
LMG2L["TextBoxConfigurarKey_f"]["Text"] = [[Minus]];


LMG2L["UICorner_10"] = Instance.new("UICorner", LMG2L["TextBoxConfigurarKey_f"]);



-- MUDANÇA: TextBox de Loop virou Botão Toggle
LMG2L["BtnConfigurarLoop_11"] = Instance.new("TextButton", LMG2L["FrameConfiguracao_d"]);
LMG2L["BtnConfigurarLoop_11"]["Name"] = [[BtnConfigurarLoop]];
LMG2L["BtnConfigurarLoop_11"]["BorderSizePixel"] = 0;
LMG2L["BtnConfigurarLoop_11"]["TextSize"] = 12;
LMG2L["BtnConfigurarLoop_11"]["Font"] = Enum.Font.GothamBold;
LMG2L["BtnConfigurarLoop_11"]["TextColor3"] = Color3.fromRGB(255, 80, 80);
LMG2L["BtnConfigurarLoop_11"]["BackgroundColor3"] = Color3.fromRGB(54, 54, 54);
LMG2L["BtnConfigurarLoop_11"]["Size"] = UDim2.new(0, 36, 0, 32);
LMG2L["BtnConfigurarLoop_11"]["Position"] = UDim2.new(0, 196, 0, 96);
LMG2L["BtnConfigurarLoop_11"]["Text"] = [[OFF]];

LMG2L["UICorner_14"] = Instance.new("UICorner", LMG2L["BtnConfigurarLoop_11"]);



LMG2L["TextLabel2_15"] = Instance.new("TextLabel", LMG2L["FrameConfiguracao_d"]);
LMG2L["TextLabel2_15"]["BorderSizePixel"] = 0;
LMG2L["TextLabel2_15"]["TextSize"] = 12;
LMG2L["TextLabel2_15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextLabel2_15"]["TextColor3"] = Color3.fromRGB(125, 125, 125);
LMG2L["TextLabel2_15"]["BackgroundTransparency"] = 1;
LMG2L["TextLabel2_15"]["Size"] = UDim2.new(0, 174, 0, 50);
LMG2L["TextLabel2_15"]["Text"] = [[Reproduzir em Loop:]];
LMG2L["TextLabel2_15"]["Name"] = [[TextLabel2]];
LMG2L["TextLabel2_15"]["Position"] = UDim2.new(0, 12, 0, 86);


LMG2L["TextLabel_16"] = Instance.new("TextLabel", LMG2L["FrameConfiguracao_d"]);
LMG2L["TextLabel_16"]["BorderSizePixel"] = 0;
LMG2L["TextLabel_16"]["TextSize"] = 12;
LMG2L["TextLabel_16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextLabel_16"]["TextColor3"] = Color3.fromRGB(125, 125, 125);
LMG2L["TextLabel_16"]["BackgroundTransparency"] = 1;
LMG2L["TextLabel_16"]["Size"] = UDim2.new(0, 134, 0, 50);
LMG2L["TextLabel_16"]["Text"] = [[Configurar Key:]];
LMG2L["TextLabel_16"]["Position"] = UDim2.new(0, 12, 0, 40);


LMG2L["TextLabelGravacaoNome_17"] = Instance.new("TextLabel", LMG2L["FrameConfiguracao_d"]);
LMG2L["TextLabelGravacaoNome_17"]["BorderSizePixel"] = 0;
LMG2L["TextLabelGravacaoNome_17"]["TextSize"] = 12;
LMG2L["TextLabelGravacaoNome_17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextLabelGravacaoNome_17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextLabelGravacaoNome_17"]["BackgroundTransparency"] = 1;
LMG2L["TextLabelGravacaoNome_17"]["Size"] = UDim2.new(0, 222, 0, 50);
LMG2L["TextLabelGravacaoNome_17"]["Text"] = [[Configurar: "Gravação"]];
LMG2L["TextLabelGravacaoNome_17"]["Name"] = [[TextLabelGravacaoNome]];


LMG2L["UIStroke_18"] = Instance.new("UIStroke", LMG2L["FrameConfiguracao_d"]);
LMG2L["UIStroke_18"]["Color"] = Color3.fromRGB(15, 255, 214);


LMG2L["BtnCancelar"] = Instance.new("TextButton", LMG2L["FrameConfiguracao_d"]);
LMG2L["BtnCancelar"]["BorderSizePixel"] = 0;
LMG2L["BtnCancelar"]["TextSize"] = 12;
LMG2L["BtnCancelar"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["BtnCancelar"]["BackgroundColor3"] = Color3.fromRGB(80, 80, 80);
LMG2L["BtnCancelar"]["Size"] = UDim2.new(0, 135, 0, 36);
LMG2L["BtnCancelar"]["Text"] = [[Cancelar]];
LMG2L["BtnCancelar"]["Name"] = [[BtnCancelar]];
LMG2L["BtnCancelar"]["Position"] = UDim2.new(0, 14, 0, 160);
LMG2L["BtnCancelar"]["ZIndex"] = 10;
Instance.new("UICorner", LMG2L["BtnCancelar"]);


LMG2L["BtnDeletar"] = Instance.new("TextButton", LMG2L["FrameConfiguracao_d"]);
LMG2L["BtnDeletar"]["BorderSizePixel"] = 0;
LMG2L["BtnDeletar"]["TextSize"] = 12;
LMG2L["BtnDeletar"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["BtnDeletar"]["BackgroundColor3"] = Color3.fromRGB(200, 40, 40);
LMG2L["BtnDeletar"]["Size"] = UDim2.new(0, 135, 0, 36);
LMG2L["BtnDeletar"]["Text"] = [[Deletar]];
LMG2L["BtnDeletar"]["Name"] = [[BtnDeletar]];
LMG2L["BtnDeletar"]["Position"] = UDim2.new(0, 167, 0, 160);
LMG2L["BtnDeletar"]["ZIndex"] = 10;
Instance.new("UICorner", LMG2L["BtnDeletar"]);


-- Botão Auto Teleporte (embaixo do Cancelar)
LMG2L["BtnAutoTeleporte"] = Instance.new("TextButton", LMG2L["FrameConfiguracao_d"]);
LMG2L["BtnAutoTeleporte"]["BorderSizePixel"] = 0;
LMG2L["BtnAutoTeleporte"]["TextSize"] = 12;
LMG2L["BtnAutoTeleporte"]["Font"] = Enum.Font.GothamBold;
LMG2L["BtnAutoTeleporte"]["TextColor3"] = Color3.fromRGB(15, 255, 214);
LMG2L["BtnAutoTeleporte"]["BackgroundColor3"] = Color3.fromRGB(54, 54, 54);
LMG2L["BtnAutoTeleporte"]["Size"] = UDim2.new(0, 135, 0, 36);
LMG2L["BtnAutoTeleporte"]["Text"] = [[Auto TP: ON]];
LMG2L["BtnAutoTeleporte"]["Name"] = [[BtnAutoTeleporte]];
LMG2L["BtnAutoTeleporte"]["Position"] = UDim2.new(0, 14, 0, 208);
LMG2L["BtnAutoTeleporte"]["ZIndex"] = 10;
Instance.new("UICorner", LMG2L["BtnAutoTeleporte"]);


-- Botão Anti Afk (embaixo do Deletar)
LMG2L["BtnAntiAfk"] = Instance.new("TextButton", LMG2L["FrameConfiguracao_d"]);
LMG2L["BtnAntiAfk"]["BorderSizePixel"] = 0;
LMG2L["BtnAntiAfk"]["TextSize"] = 12;
LMG2L["BtnAntiAfk"]["Font"] = Enum.Font.GothamBold;
LMG2L["BtnAntiAfk"]["TextColor3"] = Color3.fromRGB(255, 80, 80);
LMG2L["BtnAntiAfk"]["BackgroundColor3"] = Color3.fromRGB(54, 54, 54);
LMG2L["BtnAntiAfk"]["Size"] = UDim2.new(0, 135, 0, 36);
LMG2L["BtnAntiAfk"]["Text"] = [[Anti Afk: OFF]];
LMG2L["BtnAntiAfk"]["Name"] = [[BtnAntiAfk]];
LMG2L["BtnAntiAfk"]["Position"] = UDim2.new(0, 167, 0, 208);
LMG2L["BtnAntiAfk"]["ZIndex"] = 10;
Instance.new("UICorner", LMG2L["BtnAntiAfk"]);


LMG2L["ScrollingFrame_19"] = Instance.new("ScrollingFrame", LMG2L["GravadorDeRota_2"]);
LMG2L["ScrollingFrame_19"]["BorderSizePixel"] = 0;
LMG2L["ScrollingFrame_19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["ScrollingFrame_19"]["Size"] = UDim2.new(0, 314, 0, 286);
LMG2L["ScrollingFrame_19"]["Position"] = UDim2.new(0, 6, 0, 220);
LMG2L["ScrollingFrame_19"]["BackgroundTransparency"] = 1;
LMG2L["ScrollingFrame_19"]["Active"] = true;


LMG2L["UICorner_1a"] = Instance.new("UICorner", LMG2L["ScrollingFrame_19"]);



LMG2L["BtnSalvarGravacaoExemplo_1b"] = Instance.new("TextButton", LMG2L["ScrollingFrame_19"]);
LMG2L["BtnSalvarGravacaoExemplo_1b"]["BorderSizePixel"] = 0;
LMG2L["BtnSalvarGravacaoExemplo_1b"]["TextTransparency"] = 1;
LMG2L["BtnSalvarGravacaoExemplo_1b"]["TextSize"] = 12;
LMG2L["BtnSalvarGravacaoExemplo_1b"]["AutoButtonColor"] = false;
LMG2L["BtnSalvarGravacaoExemplo_1b"]["TextColor3"] = Color3.fromRGB(15, 255, 214);
LMG2L["BtnSalvarGravacaoExemplo_1b"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
LMG2L["BtnSalvarGravacaoExemplo_1b"]["Size"] = UDim2.new(0, 290, 0, 42);
LMG2L["BtnSalvarGravacaoExemplo_1b"]["Text"] = [[Salvar Gravação]];
LMG2L["BtnSalvarGravacaoExemplo_1b"]["Name"] = [[BtnSalvarGravacaoExemplo]];
LMG2L["BtnSalvarGravacaoExemplo_1b"]["Position"] = UDim2.new(0, 8, 0, 14);


LMG2L["UICorner_1c"] = Instance.new("UICorner", LMG2L["BtnSalvarGravacaoExemplo_1b"]);



LMG2L["TextLabelGravacao_1d"] = Instance.new("TextLabel", LMG2L["BtnSalvarGravacaoExemplo_1b"]);
LMG2L["TextLabelGravacao_1d"]["BorderSizePixel"] = 0;
LMG2L["TextLabelGravacao_1d"]["TextSize"] = 12;
LMG2L["TextLabelGravacao_1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextLabelGravacao_1d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextLabelGravacao_1d"]["BackgroundTransparency"] = 1;
LMG2L["TextLabelGravacao_1d"]["Size"] = UDim2.new(0, 58, 0, 10);
LMG2L["TextLabelGravacao_1d"]["Text"] = [[Gravação ]];
LMG2L["TextLabelGravacao_1d"]["Name"] = [[TextLabelGravacao]];
LMG2L["TextLabelGravacao_1d"]["Position"] = UDim2.new(0, 15, 0, 16);


LMG2L["Engrenagem_1e"] = Instance.new("TextButton", LMG2L["TextLabelGravacao_1d"]);
LMG2L["Engrenagem_1e"]["BorderSizePixel"] = 0;
LMG2L["Engrenagem_1e"]["TextSize"] = 14;
LMG2L["Engrenagem_1e"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
LMG2L["Engrenagem_1e"]["Size"] = UDim2.new(0, 34, 0, 30);
LMG2L["Engrenagem_1e"]["Text"] = [[⚙️]];
LMG2L["Engrenagem_1e"]["Name"] = [[Engrenagem]];
LMG2L["Engrenagem_1e"]["Position"] = UDim2.new(0, 228, 0, -10);


LMG2L["UICorner_1f"] = Instance.new("UICorner", LMG2L["Engrenagem_1e"]);



LMG2L["RodarGravacao_20"] = Instance.new("TextButton", LMG2L["TextLabelGravacao_1d"]);
LMG2L["RodarGravacao_20"]["BorderSizePixel"] = 0;
LMG2L["RodarGravacao_20"]["TextSize"] = 14;
LMG2L["RodarGravacao_20"]["BackgroundColor3"] = Color3.fromRGB(52, 52, 52);
LMG2L["RodarGravacao_20"]["Size"] = UDim2.new(0, 34, 0, 30);
LMG2L["RodarGravacao_20"]["Text"] = [[⏭️]];
LMG2L["RodarGravacao_20"]["Name"] = [[RodarGravacao]];
LMG2L["RodarGravacao_20"]["Position"] = UDim2.new(0, 190, 0, -10);


LMG2L["UICorner_21"] = Instance.new("UICorner", LMG2L["RodarGravacao_20"]);



-- Esconder template e tornar visível
LMG2L["BtnSalvarGravacaoExemplo_1b"]["Visible"] = false;
LMG2L["GravadorDeRota_2"]["Visible"] = false;

-- Conexão do botão Abrir/Fechar
LMG2L["BtnAbrirFechar"].MouseButton1Click:Connect(function()
    LMG2L["GravadorDeRota_2"]["Visible"] = not LMG2L["GravadorDeRota_2"]["Visible"]
end)

-- ====================================================================
-- [ SISTEMA DE DRAG - Arrastar Menu e Botão ]
-- ====================================================================

local function tornarArrastavel(guiObject)
    local dragging = false
    local dragInput = nil
    local dragStart = nil
    local startPos = nil

    guiObject.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = guiObject.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    guiObject.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            guiObject.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
        end
    end)
end

tornarArrastavel(LMG2L["GravadorDeRota_2"])
tornarArrastavel(LMG2L["BtnAbrirFechar"])

-- ZIndex alto para filhos do FrameConfiguracao
for _, child in pairs(LMG2L["FrameConfiguracao_d"]:GetDescendants()) do
    if child:IsA("GuiObject") then child.ZIndex = 10 end
end

-- ====================================================================
-- [ SISTEMA DE GRAVAÇÃO E REPLAY - Alta Fidelidade 20Hz ]
-- [ CORREÇÃO: Grava TODAS as animações ativas com Speed, Weight,    ]
-- [ TimePosition e reproduz com sincronização exata                  ]
-- ====================================================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local gravando = false
local reproduzindo = false
local frames = {}
local gravacoesArmazenadas = {}
local ultimaGravacao = nil
local TAXA_GRAVACAO = 1 / 20 -- 20Hz
local gravacaoKeys = {}
local gravacaoLoop = {}
local gravacaoAutoTeleporte = {}
local antiAfkAtivo = false
local configAtual = nil
local esperandoKey = false

-- ====================================================================
-- [ PERSISTÊNCIA - Salvar/Carregar gravações ]
-- ====================================================================
local SAVE_FILE = "GravadorDeRota_saves.json"

local function salvarDados()
    pcall(function()
        if writefile then
            local dados = {}
            for i, g in ipairs(gravacoesArmazenadas) do
                dados[i] = {nome = g.nome, dados = g.dados, key = gravacaoKeys[i] or "", loop = gravacaoLoop[i] or false, autoTP = gravacaoAutoTeleporte[i] ~= false}
            end
            local json = game:GetService("HttpService"):JSONEncode(dados)
            writefile(SAVE_FILE, json)
        end
    end)
end

local function carregarDados()
    pcall(function()
        if readfile and isfile and isfile(SAVE_FILE) then
            local json = readfile(SAVE_FILE)
            local dados = game:GetService("HttpService"):JSONDecode(json)
            for i, g in ipairs(dados) do
                gravacoesArmazenadas[i] = {nome = g.nome, dados = g.dados}
                gravacaoKeys[i] = g.key or ""
                gravacaoLoop[i] = g.loop or false
                gravacaoAutoTeleporte[i] = (g.autoTP ~= false)
            end
        end
    end)
end

-- Gerar script .lua a partir de uma gravação
local function gerarScriptLua(dadosFrames)
    if not dadosFrames or #dadosFrames == 0 then return "-- Vazio" end
    local s = "-- By Tiger\n"
    s = s .. "-- Script de Replay gerado pelo Gravador de Rota\n"
    s = s .. "local _TIGER_AUTH = 'By Tiger'\n"
    s = s .. "if not _TIGER_AUTH or _TIGER_AUTH ~= 'By' .. ' Tiger' then return end\n\n"
    s = s .. "local Players = game:GetService('Players')\n"
    s = s .. "local RunService = game:GetService('RunService')\n"
    s = s .. "local LocalPlayer = Players.LocalPlayer\n\n"
    s = s .. "local function replay()\n"
    s = s .. "    local char = LocalPlayer.Character\n"
    s = s .. "    if not char then return end\n"
    s = s .. "    local root = char:FindFirstChild('HumanoidRootPart')\n"
    s = s .. "    local hum = char:FindFirstChildOfClass('Humanoid')\n"
    s = s .. "    if not root or not hum then return end\n\n"
    local p = dadosFrames[1]
    s = s .. string.format("    hum:MoveTo(Vector3.new(%.2f, %.2f, %.2f))\n", p.cf[1], p.cf[2], p.cf[3])
    s = s .. "    hum.MoveToFinished:Wait()\n\n"
    s = s .. "    local frames = {\n"
    for _, f in ipairs(dadosFrames) do
        s = s .. string.format("        {t=%.3f,cf={%.3f,%.3f,%.3f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f,%.4f},anims={",
            f.t, f.cf[1],f.cf[2],f.cf[3],f.cf[4],f.cf[5],f.cf[6],f.cf[7],f.cf[8],f.cf[9],f.cf[10],f.cf[11],f.cf[12])
        if f.anims then
            for _, a in ipairs(f.anims) do
                s = s .. string.format("{id='%s',spd=%.2f,w=%.2f,pos=%.3f},", a.id, a.speed, a.weight, a.pos)
            end
        end
        s = s .. "}},\n"
    end
    s = s .. "    }\n\n"
    s = s .. "    local animator = hum:FindFirstChildOfClass('Animator') or Instance.new('Animator', hum)\n"
    s = s .. "    local cache = {}\n"
    s = s .. "    local function getT(id) if cache[id] then return cache[id] end; local a=Instance.new('Animation'); a.AnimationId=id; local ok,t=pcall(function() return animator:LoadAnimation(a) end); if ok and t then cache[id]=t; return t end; return nil end\n"
    s = s .. "    for _,t in ipairs(animator:GetPlayingAnimationTracks()) do t:Stop(0) end\n\n"
    s = s .. "    local oldWS,oldJP = hum.WalkSpeed, hum.JumpPower\n"
    s = s .. "    hum.WalkSpeed = 0; hum.JumpPower = 0\n"
    s = s .. "    local startT = os.clock()\n"
    s = s .. "    local idx = 1\n"
    s = s .. "    local lastAnims = {}\n"
    s = s .. "    while idx <= #frames do\n"
    s = s .. "        local elapsed = os.clock() - startT\n"
    s = s .. "        while idx <= #frames and frames[idx].t <= elapsed do idx = idx + 1 end\n"
    s = s .. "        if idx > #frames then break end\n"
    s = s .. "        local prev = frames[math.max(1,idx-1)]\n"
    s = s .. "        local nxt = frames[idx]\n"
    s = s .. "        local dur = nxt.t - prev.t\n"
    s = s .. "        local a = dur > 0 and math.clamp((elapsed - prev.t)/dur, 0, 1) or 0\n"
    s = s .. "        root.CFrame = CFrame.new(unpack(prev.cf)):Lerp(CFrame.new(unpack(nxt.cf)), a)\n"
    s = s .. "        local cur = {}\n"
    s = s .. "        for _,ad in ipairs(nxt.anims) do cur[ad.id]=true; local t=getT(ad.id); if t then if not t.IsPlaying then t:Play(0.1) end; t:AdjustSpeed(ad.spd); t:AdjustWeight(ad.w,0.1); if t.Length>0 then t.TimePosition=ad.pos end end end\n"
    s = s .. "        for id,_ in pairs(lastAnims) do if not cur[id] then local t=cache[id]; if t and t.IsPlaying then t:Stop(0.15) end end end\n"
    s = s .. "        lastAnims = cur\n"
    s = s .. "        RunService.RenderStepped:Wait()\n"
    s = s .. "    end\n"
    s = s .. "    for _,t in pairs(cache) do if t.IsPlaying then t:Stop(0.2) end end\n"
    s = s .. "    hum.WalkSpeed = oldWS; hum.JumpPower = oldJP\n"
    s = s .. "end\n\nreplay()\n"
    return s
end

-- ====================================================================
-- [ FUNÇÕES DE GRAVAÇÃO - MULTI-TRACK ]
-- ====================================================================

local function capturarAnimacoesAtivas(humanoid)
    local animsAtivas = {}
    local animator = humanoid:FindFirstChildOfClass("Animator")
    if not animator then return animsAtivas end

    local tracks = animator:GetPlayingAnimationTracks()
    for _, track in ipairs(tracks) do
        if track.IsPlaying and track.Animation then
            table.insert(animsAtivas, {
                id = track.Animation.AnimationId,
                speed = track.Speed,
                weight = track.WeightCurrent,
                pos = track.TimePosition,
                len = track.Length,
            })
        end
    end
    return animsAtivas
end

local function iniciarGravacao()
    if gravando then return end
    frames = {}
    gravando = true
    LMG2L["BtnGravar_5"]["Text"] = [[● GRAVANDO...]]
    LMG2L["BtnGravar_5"]["BackgroundColor3"] = Color3.fromRGB(255, 50, 50)

    task.spawn(function()
        local startTime = os.clock()
        while gravando do
            local character = LocalPlayer.Character
            if character then
                local root = character:FindFirstChild("HumanoidRootPart")
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if root and humanoid then
                    local cx, cy, cz, r00, r01, r02, r10, r11, r12, r20, r21, r22 = root.CFrame:GetComponents()
                    local estado = humanoid:GetState().Value
                    local anims = capturarAnimacoesAtivas(humanoid)
                    local timestamp = os.clock() - startTime

                    table.insert(frames, {
                        t = timestamp,
                        cf = {cx, cy, cz, r00, r01, r02, r10, r11, r12, r20, r21, r22},
                        state = estado,
                        anims = anims,
                    })
                end
            end
            task.wait(TAXA_GRAVACAO)
        end
    end)
end

local function pararGravacao()
    if not gravando then return end
    gravando = false
    ultimaGravacao = frames
    LMG2L["BtnGravar_5"]["Text"] = [[Gravar]]
    LMG2L["BtnGravar_5"]["BackgroundColor3"] = Color3.fromRGB(15, 255, 214)
    print("Gravação finalizada: " .. #frames .. " frames capturados")
end

-- ====================================================================
-- [ FUNÇÕES DE REPLAY - MULTI-TRACK COM SINCRONIZAÇÃO ]
-- ====================================================================

local function reproduzirGravacao(dadosFrames, loopAtivo, gravacaoNumero)
    if not dadosFrames or #dadosFrames == 0 then
        warn("Nenhuma gravação para reproduzir")
        return
    end
    if reproduzindo then
        warn("Já está reproduzindo")
        return
    end

    local character = LocalPlayer.Character
    if not character then return end
    local root = character:FindFirstChild("HumanoidRootPart")
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not root or not humanoid then return end

    reproduzindo = true

    -- Mover até posição inicial (se Auto Teleporte estiver ativo)
    local usarAutoTP = true
    if gravacaoNumero and gravacaoAutoTeleporte[gravacaoNumero] == false then
        usarAutoTP = false
    end
    if usarAutoTP then
        local primeiro = dadosFrames[1]
        local posInicial = Vector3.new(primeiro.cf[1], primeiro.cf[2], primeiro.cf[3])
        humanoid:MoveTo(posInicial)
        humanoid.MoveToFinished:Wait()
    else
        -- Teleporta direto sem andar
        local primeiro = dadosFrames[1]
        root.CFrame = CFrame.new(unpack(primeiro.cf))
        task.wait(0.1)
    end

    -- Desabilitar controle
    local oldWS = humanoid.WalkSpeed
    local oldJP = humanoid.JumpPower
    humanoid.WalkSpeed = 0
    humanoid.JumpPower = 0

    -- Câmera: setar uma vez só, deixar o engine cuidar do follow suave
    local camera = Workspace.CurrentCamera
    camera.CameraType = Enum.CameraType.Custom
    camera.CameraSubject = humanoid

    -- Cache de AnimationTracks
    local animator = humanoid:FindFirstChildOfClass("Animator")
    if not animator then
        animator = Instance.new("Animator", humanoid)
    end
    local tracksCache = {}

    local function obterTrack(animId)
        if tracksCache[animId] then return tracksCache[animId] end
        local anim = Instance.new("Animation")
        anim.AnimationId = animId
        local ok, track = pcall(function()
            return animator:LoadAnimation(anim)
        end)
        if ok and track then
            tracksCache[animId] = track
            return track
        end
        return nil
    end

    -- Parar todas as animações atuais
    for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
        track:Stop(0)
    end

    local function executarReplay()
        local startTime = os.clock()
        local frameIndex = 1
        local ultimasAnims = {}

        while frameIndex <= #dadosFrames and reproduzindo do
            -- Se loopAtivo e o loop foi desativado, parar imediatamente
            if loopAtivo and gravacaoNumero and not gravacaoLoop[gravacaoNumero] then
                reproduzindo = false
                break
            end

            local elapsed = os.clock() - startTime

            while frameIndex <= #dadosFrames and dadosFrames[frameIndex].t <= elapsed do
                frameIndex = frameIndex + 1
            end
            if frameIndex > #dadosFrames then break end

            local prevFrame = dadosFrames[math.max(1, frameIndex - 1)]
            local nextFrame = dadosFrames[frameIndex]

            local dur = nextFrame.t - prevFrame.t
            local alpha = dur > 0 and math.clamp((elapsed - prevFrame.t) / dur, 0, 1) or 0

            local prevCF = CFrame.new(unpack(prevFrame.cf))
            local nextCF = CFrame.new(unpack(nextFrame.cf))
            root.CFrame = prevCF:Lerp(nextCF, alpha)

            -- Aplicar TODAS as animações do frame com Speed, Weight e TimePosition
            local animsDoFrame = nextFrame.anims or {}
            local animsAtuais = {}

            for _, animData in ipairs(animsDoFrame) do
                local id = animData.id
                animsAtuais[id] = true

                local track = obterTrack(id)
                if track then
                    if not track.IsPlaying then
                        track:Play(0.1)
                    end
                    track:AdjustSpeed(animData.speed)
                    track:AdjustWeight(animData.weight, 0.1)
                    if track.Length > 0 then
                        track.TimePosition = animData.pos
                    end
                end
            end

            -- Parar animações que não estão mais ativas neste frame
            for id, _ in pairs(ultimasAnims) do
                if not animsAtuais[id] then
                    local track = tracksCache[id]
                    if track and track.IsPlaying then
                        track:Stop(0.15)
                    end
                end
            end

            ultimasAnims = animsAtuais
            RunService.RenderStepped:Wait()
        end

        -- Parar todas no final do ciclo
        for _, track in pairs(tracksCache) do
            if track.IsPlaying then track:Stop(0.2) end
        end
    end

    -- Executar replay (com loop se ativado)
    -- Checa gravacaoLoop em tempo real pra parar quando desativar
    if loopAtivo then
        while reproduzindo do
            executarReplay()
            if not reproduzindo then break end
            -- Checar se o loop ainda está ativo na config
            if gravacaoNumero and not gravacaoLoop[gravacaoNumero] then break end
            root.CFrame = CFrame.new(unpack(dadosFrames[1].cf))
            task.wait(0.3)
        end
    else
        executarReplay()
    end

    -- Restaurar
    humanoid.WalkSpeed = oldWS
    humanoid.JumpPower = oldJP
    reproduzindo = false
    print("Replay finalizado")
end

-- ====================================================================
-- [ CONEXÕES DOS BOTÕES ]
-- ====================================================================

-- Botão Gravar (toggle)
LMG2L["BtnGravar_5"].MouseButton1Click:Connect(function()
    if gravando then
        pararGravacao()
    else
        iniciarGravacao()
    end
end)

-- Botão Reproduzir Última Gravação
LMG2L["BtnReproduzirUltimaGravacao_3"].MouseButton1Click:Connect(function()
    if reproduzindo then
        reproduzindo = false
        return
    end
    if ultimaGravacao then
        task.spawn(function()
            reproduzirGravacao(ultimaGravacao, false)
        end)
    else
        warn("Nenhuma gravação disponível")
    end
end)

-- BOTÃO TOGGLE DE LOOP
local function atualizarBotaoLoop()
    if configAtual and gravacaoLoop[configAtual] then
        LMG2L["BtnConfigurarLoop_11"]["Text"] = "ON"
        LMG2L["BtnConfigurarLoop_11"]["TextColor3"] = Color3.fromRGB(15, 255, 214)
        LMG2L["BtnConfigurarLoop_11"]["BackgroundColor3"] = Color3.fromRGB(30, 80, 70)
    else
        LMG2L["BtnConfigurarLoop_11"]["Text"] = "OFF"
        LMG2L["BtnConfigurarLoop_11"]["TextColor3"] = Color3.fromRGB(255, 80, 80)
        LMG2L["BtnConfigurarLoop_11"]["BackgroundColor3"] = Color3.fromRGB(54, 54, 54)
    end
end

LMG2L["BtnConfigurarLoop_11"].MouseButton1Click:Connect(function()
    if configAtual then
        gravacaoLoop[configAtual] = not gravacaoLoop[configAtual]
        atualizarBotaoLoop()
        salvarDados()
    end
end)

-- BOTÃO TOGGLE DE AUTO TELEPORTE
local function atualizarBotaoAutoTeleporte()
    if configAtual and gravacaoAutoTeleporte[configAtual] ~= false then
        LMG2L["BtnAutoTeleporte"]["Text"] = "Auto TP: ON"
        LMG2L["BtnAutoTeleporte"]["TextColor3"] = Color3.fromRGB(15, 255, 214)
    else
        LMG2L["BtnAutoTeleporte"]["Text"] = "Auto TP: OFF"
        LMG2L["BtnAutoTeleporte"]["TextColor3"] = Color3.fromRGB(255, 80, 80)
    end
end

LMG2L["BtnAutoTeleporte"].MouseButton1Click:Connect(function()
    if configAtual then
        if gravacaoAutoTeleporte[configAtual] == false then
            gravacaoAutoTeleporte[configAtual] = true
        else
            gravacaoAutoTeleporte[configAtual] = false
        end
        atualizarBotaoAutoTeleporte()
        salvarDados()
    end
end)

-- BOTÃO TOGGLE DE ANTI AFK
local antiAfkConnection = nil

local function atualizarBotaoAntiAfk()
    if antiAfkAtivo then
        LMG2L["BtnAntiAfk"]["Text"] = "Anti Afk: ON"
        LMG2L["BtnAntiAfk"]["TextColor3"] = Color3.fromRGB(15, 255, 214)
    else
        LMG2L["BtnAntiAfk"]["Text"] = "Anti Afk: OFF"
        LMG2L["BtnAntiAfk"]["TextColor3"] = Color3.fromRGB(255, 80, 80)
    end
end

LMG2L["BtnAntiAfk"].MouseButton1Click:Connect(function()
    antiAfkAtivo = not antiAfkAtivo
    atualizarBotaoAntiAfk()
    if antiAfkAtivo then
        -- Conectar anti-afk: simula input a cada 60s
        local VirtualUser = game:GetService("VirtualUser")
        local Player = game:GetService("Players").LocalPlayer
        antiAfkConnection = Player.Idled:Connect(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new(0, 0))
        end)
        print("Anti AFK ativado")
    else
        if antiAfkConnection then
            antiAfkConnection:Disconnect()
            antiAfkConnection = nil
        end
        print("Anti AFK desativado")
    end
end)

-- Função para criar item de gravação na lista
local function criarItemGravacao(numero)
    local nome = gravacoesArmazenadas[numero].nome
    local novoBtn = LMG2L["BtnSalvarGravacaoExemplo_1b"]:Clone()
    novoBtn.Name = "Gravacao_" .. numero
    novoBtn.Visible = true
    novoBtn.Position = UDim2.new(0, 8, 0, 14 + (numero - 1) * 52)
    novoBtn.Parent = LMG2L["ScrollingFrame_19"]

    local label = novoBtn:FindFirstChild("TextLabelGravacao")
    if label then
        label.Text = nome

        -- Botão Rodar (⏭️)
        local btnRodar = label:FindFirstChild("RodarGravacao")
        if btnRodar then
            btnRodar.Position = UDim2.new(0, 150, 0, -10)
            btnRodar.MouseButton1Click:Connect(function()
                if reproduzindo then
                    reproduzindo = false
                    return
                end
                local dados = gravacoesArmazenadas[numero] and gravacoesArmazenadas[numero].dados
                local loop = gravacaoLoop[numero] or false
                if dados then task.spawn(function() reproduzirGravacao(dados, loop, numero) end) end
            end)
        end

        -- Botão Clipboard (📋)
        local btnClip = Instance.new("TextButton", label)
        btnClip.Name = "ClipboardBtn"
        btnClip.BorderSizePixel = 0
        btnClip.TextSize = 14
        btnClip.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
        btnClip.Size = UDim2.new(0, 34, 0, 30)
        btnClip.Text = "📋"
        btnClip.Position = UDim2.new(0, 190, 0, -10)
        Instance.new("UICorner", btnClip)
        btnClip.MouseButton1Click:Connect(function()
            local dados = gravacoesArmazenadas[numero] and gravacoesArmazenadas[numero].dados
            if dados then
                local scriptLua = gerarScriptLua(dados)
                pcall(function()
                    if setclipboard then setclipboard(scriptLua)
                    elseif toclipboard then toclipboard(scriptLua) end
                end)
                btnClip.Text = "✅"
                task.wait(1)
                btnClip.Text = "📋"
            end
        end)

        -- Botão Engrenagem (⚙️)
        local btnConfig = label:FindFirstChild("Engrenagem")
        if btnConfig then
            btnConfig.Position = UDim2.new(0, 228, 0, -10)
            btnConfig.MouseButton1Click:Connect(function()
                local config = LMG2L["FrameConfiguracao_d"]
                config.Visible = not config.Visible
                configAtual = numero
                LMG2L["TextLabelGravacaoNome_17"]["Text"] = 'Configurar: "' .. nome .. '"'
                LMG2L["TextBoxConfigurarKey_f"]["Text"] = gravacaoKeys[numero] or ""
                atualizarBotaoLoop()
                atualizarBotaoAutoTeleporte()
            end)
        end
    end

    LMG2L["ScrollingFrame_19"].CanvasSize = UDim2.new(0, 0, 0, 14 + numero * 52)
end

-- Botão Salvar Gravação
LMG2L["BtnSalvarGravacao_8"].MouseButton1Click:Connect(function()
    if ultimaGravacao and #ultimaGravacao > 0 then
        local numero = #gravacoesArmazenadas + 1
        local nome = "Gravação " .. numero
        table.insert(gravacoesArmazenadas, {nome = nome, dados = ultimaGravacao})
        gravacaoKeys[numero] = ""
        gravacaoLoop[numero] = false
        gravacaoAutoTeleporte[numero] = true
        criarItemGravacao(numero)
        salvarDados()
        print("Gravação salva: " .. nome)
    else
        warn("Nenhuma gravação para salvar")
    end
end)

-- ====================================================================
-- [ CONFIGURAR KEY - Captura tecla sem abrir teclado ]
-- ====================================================================
LMG2L["TextBoxConfigurarKey_f"].Focused:Connect(function()
    LMG2L["TextBoxConfigurarKey_f"]:ReleaseFocus()
    esperandoKey = true
    LMG2L["TextBoxConfigurarKey_f"]["Text"] = "..."
end)

UserInputService.InputBegan:Connect(function(input, processed)
    if processed then return end

    -- Capturar key para configuração
    if esperandoKey and configAtual then
        if input.KeyCode ~= Enum.KeyCode.Unknown then
            local keyName = input.KeyCode.Name
            gravacaoKeys[configAtual] = keyName
            LMG2L["TextBoxConfigurarKey_f"]["Text"] = keyName
            esperandoKey = false
            salvarDados()
            return
        end
    end

    -- Executar gravação pela key configurada
    if input.KeyCode ~= Enum.KeyCode.Unknown then
        local keyName = input.KeyCode.Name
        for i, k in pairs(gravacaoKeys) do
            if k == keyName and gravacoesArmazenadas[i] then
                if reproduzindo then
                    reproduzindo = false
                else
                    local loop = gravacaoLoop[i] or false
                    task.spawn(function() reproduzirGravacao(gravacoesArmazenadas[i].dados, loop, i) end)
                end
                break
            end
        end
    end
end)

-- ====================================================================
-- [ BOTÕES CANCELAR E DELETAR ]
-- ====================================================================

LMG2L["BtnCancelar"].MouseButton1Click:Connect(function()
    LMG2L["FrameConfiguracao_d"].Visible = false
    configAtual = nil
end)

LMG2L["BtnDeletar"].MouseButton1Click:Connect(function()
    if configAtual and gravacoesArmazenadas[configAtual] then
        table.remove(gravacoesArmazenadas, configAtual)
        table.remove(gravacaoKeys, configAtual)
        table.remove(gravacaoLoop, configAtual)
        table.remove(gravacaoAutoTeleporte, configAtual)
        
        for _, child in pairs(LMG2L["ScrollingFrame_19"]:GetChildren()) do
            if child:IsA("TextButton") and child.Name ~= "BtnSalvarGravacaoExemplo" then
                child:Destroy()
            end
        end
        
        for i = 1, #gravacoesArmazenadas do
            criarItemGravacao(i)
        end
        
        LMG2L["ScrollingFrame_19"].CanvasSize = UDim2.new(0, 0, 0, 14 + #gravacoesArmazenadas * 52)
        
        salvarDados()
        LMG2L["FrameConfiguracao_d"].Visible = false
        configAtual = nil
        print("Gravação deletada")
    end
end)

-- ====================================================================
-- [ CARREGAR GRAVAÇÕES SALVAS ]
-- ====================================================================
carregarDados()
for i = 1, #gravacoesArmazenadas do
    criarItemGravacao(i)
end

print("Gravador de Rota carregado com sucesso!")
