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
