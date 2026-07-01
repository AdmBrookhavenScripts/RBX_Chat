local RunService = cloneref(game:GetService("RunService"))
local StarterGui = cloneref(game:GetService("StarterGui"))
local Players = cloneref(game:GetService("Players"))
local HttpService = cloneref(game:GetService("HttpService"))
local UserInputService = cloneref(game:GetService("UserInputService"))
local httpRequest = request or http_request or syn.request

local Player = Players.LocalPlayer

local function SendNotification(title, content, duration, image)
    StarterGui:SetCore("SendNotification", {
        Title = title or "Notification",
        Text = content or "",
        Duration = duration or 5,
        Icon = image
    })
end

if not isfolder("RBX_Chat") then
    makefolder("RBX_Chat")
end

if not isfolder("RBX_Chat/assets") then
    makefolder("RBX_Chat/assets")
end

writefile("RBX_Chat/assets/message-square-more.png", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/assets/message-square-more.png"))

if not isfolder("RBX_Chat/stickers") then
    makefolder("RBX_Chat/stickers")
end

if not isfolder("RBX_Chat/audios") then
    makefolder("RBX_Chat/audios")
end

if not isfile("RBX_Chat/assets/clipboard-copy.png") then
    SendNotification("RBX Chat", "Baixando asset ''clipboard-copy.png''...", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
    writefile("RBX_Chat/assets/clipboard-copy.png", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/assets/clipboard-copy.png"))
end

if not isfile("RBX_Chat/assets/loading.png") then
    SendNotification("RBX Chat", "Baixando asset ''loading.png''...", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
    writefile("RBX_Chat/assets/loading.png", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/assets/loading.png"))
end

if not isfile("RBX_Chat/assets/message-square-more.png") then
    SendNotification("RBX Chat", "Baixando asset ''message-square-more.png''...", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
    writefile("RBX_Chat/assets/message-square-more.png", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/assets/message-square-more.png"))
end

if not isfile("RBX_Chat/assets/minus.png") then
    SendNotification("RBX Chat", "Baixando asset ''minus.png''...", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
    writefile("RBX_Chat/assets/minus.png", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/assets/minus.png"))
end

if not isfile("RBX_Chat/assets/plus.png") then
    SendNotification("RBX Chat", "Baixando asset ''plus.png''...", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
    writefile("RBX_Chat/assets/plus.png", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/assets/plus.png"))
end

if not isfile("RBX_Chat/assets/send-horizontal.png") then
    SendNotification("RBX Chat", "Baixando asset ''send-horizontal.png''...", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
    writefile("RBX_Chat/assets/send-horizontal.png", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/assets/send-horizontal.png"))
end

if not isfile("RBX_Chat/assets/close.png") then
    SendNotification("RBX Chat", "Baixando asset ''close.png''...", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
    writefile("RBX_Chat/assets/close.png", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/assets/close.png"))
end

if not isfile("RBX_Chat/assets/circle-play.png") then
    SendNotification("RBX Chat", "Baixando asset ''circle-play.png''...", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
    writefile("RBX_Chat/assets/circle-play.png", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/assets/circle-play.png"))
end

if not isfile("RBX_Chat/assets/circle-pause.png") then
    SendNotification("RBX Chat", "Baixando asset ''circle-pause.png''...", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
    writefile("RBX_Chat/assets/circle-pause.png", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/assets/circle-pause.png"))
end

if not isfile("RBX_Chat/assets/step-back.png") then
    SendNotification("RBX Chat", "Baixando asset ''step-back.png''...", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
    writefile("RBX_Chat/assets/step-back.png", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/assets/step-back.png"))
end

if not isfile("RBX_Chat/stickers/Stickers.lua") then
    SendNotification("RBX Chat", "Baixando arquivo ''Stickers.lua''...", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
    writefile("RBX_Chat/stickers/Stickers.lua", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/stickers/Stickers.lua"))
end

if isfile("RBX_Chat/stickers/Stickers.lua") then
    writefile("RBX_Chat/stickers/Stickers.lua", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/stickers/Stickers.lua"))
end

if not isfile("RBX_Chat/stickers/More-Stickers.lua") then
    SendNotification("RBX Chat", "Baixando arquivo ''More-Stickers.lua''...", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
    writefile("RBX_Chat/stickers/More-Stickers.lua", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/stickers/More-Stickers.lua"))
end

if not isfile("RBX_Chat/audios/Audios.lua") then
    SendNotification("RBX Chat", "Baixando arquivo ''Audios.lua''...", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
    writefile("RBX_Chat/audios/Audios.lua", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/audios/Audios.lua"))
end

if isfile("RBX_Chat/audios/Audios.lua") then
    writefile("RBX_Chat/audios/Audios.lua", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/audios/Audios.lua"))
end

if not isfile("RBX_Chat/audios/More-Audios.lua") then
    SendNotification("RBX Chat", "Baixando arquivo ''More-Audios.lua''...", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
    writefile("RBX_Chat/audios/More-Audios.lua", game:HttpGet("https://github.com/AdmBrookhavenScripts/RBX_Chat/raw/refs/heads/main/audios/More-Audios.lua"))
end

if getgenv().Running == true then SendNotification("RBX Chat", "RBX Chat já está rodando.", 5, getcustomasset("RBX_Chat/assets/message-square-more.png")) return end
getgenv().Running = true
getgenv().AudioNames = getgenv().AudioNames or {}

local LMG2L = {}
local UILibrary = {}

function UILibrary:CreateAudioPlayer(id, title, parent)
    local aFrame = Instance.new("Frame", parent)
    aFrame.Size = UDim2.new(0, 240, 0, 54)
    aFrame.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
    aFrame.BackgroundTransparency = 0.4
    aFrame.BorderSizePixel = 0

    local aCorner = Instance.new("UICorner", aFrame)
    aCorner.CornerRadius = UDim.new(0, 8)

    local aStroke = Instance.new("UIStroke", aFrame)
    aStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    aStroke.Color = Color3.fromRGB(63, 63, 63)

    local titleLbl = Instance.new("TextLabel", aFrame)
    titleLbl.Size = UDim2.new(1, -52, 0, 14)
    titleLbl.Position = UDim2.new(0, 44, 0, 10)
    titleLbl.BackgroundTransparency = 1
    titleLbl.Text = getgenv().AudioNames[tostring(id)] or "Carregando..."
    titleLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLbl.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    titleLbl.TextSize = 12
    titleLbl.TextXAlignment = Enum.TextXAlignment.Left
    titleLbl.TextTruncate = Enum.TextTruncate.AtEnd

    if not getgenv().AudioNames[tostring(id)] then
        task.spawn(function()
            local s, r = pcall(function()
                local response = httpRequest({
                    Url = "https://economy.roproxy.com/v2/assets/" .. tostring(id) .. "/details",
                    Method = "GET"
                })
                return HttpService:JSONDecode(response.Body)
            end)
            if s and r and r.Name then
                getgenv().AudioNames[tostring(id)] = r.Name
                titleLbl.Text = r.Name
            else
                titleLbl.Text = "Áudio " .. tostring(id)
            end
        end)
    end

    local pBtn = Instance.new("ImageButton", aFrame)
    pBtn.Size = UDim2.new(0, 28, 0, 28)
    pBtn.Position = UDim2.new(0, 8, 0.5, -14)
    pBtn.BackgroundTransparency = 1
    pBtn.Image = getcustomasset("RBX_Chat/assets/circle-play.png")
    pBtn.ImageColor3 = Color3.fromRGB(255, 255, 255)

    local timeLbl = Instance.new("TextLabel", aFrame)
    timeLbl.Size = UDim2.new(0, 35, 0, 24)
    timeLbl.Position = UDim2.new(1, -43, 0, 23)
    timeLbl.BackgroundTransparency = 1
    timeLbl.Text = "0:00"
    timeLbl.TextColor3 = Color3.fromRGB(200, 200, 200)
    timeLbl.FontFace = Font.new("rbxasset://fonts/families/BuilderSans.json")
    timeLbl.TextSize = 12
    timeLbl.TextXAlignment = Enum.TextXAlignment.Right

    local barBg = Instance.new("TextButton", aFrame)
    barBg.Size = UDim2.new(1, -94, 0, 6)
    barBg.Position = UDim2.new(0, 44, 0, 32)
    barBg.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    barBg.AutoButtonColor = false
    barBg.Text = ""

    local barCorner = Instance.new("UICorner", barBg)
    barCorner.CornerRadius = UDim.new(1, 0)

    local barFill = Instance.new("Frame", barBg)
    barFill.Size = UDim2.new(0, 0, 1, 0)
    barFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    barFill.BorderSizePixel = 0

    local fillCorner = Instance.new("UICorner", barFill)
    fillCorner.CornerRadius = UDim.new(1, 0)

    local grabber = Instance.new("Frame", barFill)
    grabber.Size = UDim2.new(0, 10, 0, 10)
    grabber.Position = UDim2.new(1, -5, 0.5, -5)
    grabber.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    
    local grabberCorner = Instance.new("UICorner", grabber)
    grabberCorner.CornerRadius = UDim.new(1, 0)

    local snd = Instance.new("Sound", aFrame)
    snd.SoundId = "rbxassetid://" .. id
    snd.Volume = 1

    local isPlaying = false
    local dragging = false
    local conns = {}
    local selfAudio = {}

    local function formatTime(seconds)
        if not seconds or seconds ~= seconds then seconds = 0 end
        local m = math.floor(seconds / 60)
        local s = math.floor(seconds % 60)
        return string.format("%d:%02d", m, s)
    end

    local function updateScrub(xPos)
        local rel = math.clamp((xPos - barBg.AbsolutePosition.X) / barBg.AbsoluteSize.X, 0, 1)
        if snd.IsLoaded and snd.TimeLength > 0 then
            snd.TimePosition = rel * snd.TimeLength
            barFill.Size = UDim2.new(rel, 0, 1, 0)
            timeLbl.Text = formatTime(snd.TimePosition)
        end
    end

    selfAudio.Frame = aFrame
    selfAudio.IsPlaying = function() return isPlaying end

    selfAudio.Pause = function()
        if isPlaying then
            snd:Pause()
            pBtn.Image = getcustomasset("RBX_Chat/assets/circle-play.png")
            isPlaying = false
        end
    end

    selfAudio.Stop = function()
        snd:Pause()
        snd.TimePosition = 0
        pBtn.Image = getcustomasset("RBX_Chat/assets/circle-play.png")
        isPlaying = false
        barFill.Size = UDim2.new(0, 0, 1, 0)
        timeLbl.Text = formatTime(snd.TimeLength)
    end

    selfAudio.Play = function()
        if not isPlaying then
            if not snd.IsLoaded then
                snd.Loaded:Wait()
            end
            snd:Resume()
            pBtn.Image = getcustomasset("RBX_Chat/assets/circle-pause.png")
            isPlaying = true
        end
    end

    selfAudio.GetTimeText = function()
        if snd.IsLoaded then
            return formatTime(snd.TimePosition)
        end
        return "0:00"
    end

    pBtn.MouseButton1Click:Connect(function()
        if isPlaying then
            selfAudio.Pause()
        else
            if getgenv().ActiveChatAudio and getgenv().ActiveChatAudio ~= selfAudio then
                getgenv().ActiveChatAudio.Stop()
            end
            selfAudio.Play()
            getgenv().ActiveChatAudio = selfAudio
        end
    end)

    table.insert(conns, snd.Ended:Connect(function()
        isPlaying = false
        pBtn.Image = getcustomasset("RBX_Chat/assets/circle-play.png")
        barFill.Size = UDim2.new(0, 0, 1, 0)
        timeLbl.Text = formatTime(snd.TimeLength)
        if getgenv().ActiveChatAudio == selfAudio then
            getgenv().ActiveChatAudio = nil
        end
    end))

    barBg.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            updateScrub(input.Position.X)
        end
    end)

    table.insert(conns, UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateScrub(input.Position.X)
        end
    end))

    table.insert(conns, UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end))

    table.insert(conns, RunService.RenderStepped:Connect(function()
        if snd.IsLoaded and snd.TimeLength > 0 then
            if isPlaying and not dragging then
                barFill.Size = UDim2.new(snd.TimePosition / snd.TimeLength, 0, 1, 0)
                timeLbl.Text = formatTime(snd.TimePosition)
            elseif not isPlaying and not dragging and barFill.Size.X.Scale == 0 then
                timeLbl.Text = formatTime(snd.TimeLength)
            end
        end
    end))

    aFrame.Destroying:Connect(function()
        for _, c in ipairs(conns) do
            c:Disconnect()
        end
        if getgenv().ActiveChatAudio == selfAudio then
            getgenv().ActiveChatAudio = nil
        end
    end)

    return aFrame
end

local TargetParent = (gethui and gethui()) or cloneref(game:GetService("CoreGui")) or Player:FindFirstChild("PlayerGui")

LMG2L["RBX_Chat_1"] = Instance.new("ScreenGui", TargetParent)
LMG2L["RBX_Chat_1"]["Name"] = "RBX_Chat"
LMG2L["RBX_Chat_1"]["ResetOnSpawn"] = false
LMG2L["RBX_Chat_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
LMG2L["RBX_Chat_1"]["DisplayOrder"] = 2147483647

LMG2L["MinimizeToggle_2"] = Instance.new("ImageButton", LMG2L["RBX_Chat_1"])
LMG2L["MinimizeToggle_2"]["BorderSizePixel"] = 0
LMG2L["MinimizeToggle_2"]["AutoButtonColor"] = false
LMG2L["MinimizeToggle_2"]["BackgroundTransparency"] = 1
LMG2L["MinimizeToggle_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["MinimizeToggle_2"]["Image"] = getcustomasset("RBX_Chat/assets/message-square-more.png")
LMG2L["MinimizeToggle_2"]["Size"] = UDim2.new(0, 32, 0, 32)
LMG2L["MinimizeToggle_2"]["Name"] = "MinimizeToggle"
LMG2L["MinimizeToggle_2"]["Position"] = UDim2.new(0, 118, 0, 116)
LMG2L["MinimizeToggle_2"]["Active"] = true
LMG2L["MinimizeToggle_2"]["Draggable"] = true
LMG2L["MinimizeToggle_2"]["ZIndex"] = 999

LMG2L["MainFrame_3"] = Instance.new("Frame", LMG2L["RBX_Chat_1"])
LMG2L["MainFrame_3"]["Active"] = true
LMG2L["MainFrame_3"]["Draggable"] = true
LMG2L["MainFrame_3"]["BorderSizePixel"] = 0
LMG2L["MainFrame_3"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51)
LMG2L["MainFrame_3"]["Size"] = UDim2.new(0, 410, 0, 246)
LMG2L["MainFrame_3"]["Position"] = UDim2.new(0, 186, 0, 14)
LMG2L["MainFrame_3"]["Name"] = "MainFrame"
LMG2L["MainFrame_3"]["BackgroundTransparency"] = 0.4

LMG2L["MiniAudioPlayer"] = Instance.new("Frame", LMG2L["RBX_Chat_1"])
LMG2L["MiniAudioPlayer"]["Active"] = true
LMG2L["MiniAudioPlayer"]["Draggable"] = true
LMG2L["MiniAudioPlayer"]["BorderSizePixel"] = 0
LMG2L["MiniAudioPlayer"]["BackgroundColor3"] = Color3.fromRGB(53, 53, 53)
LMG2L["MiniAudioPlayer"]["Size"] = UDim2.new(0, 72, 0, 72)
LMG2L["MiniAudioPlayer"]["Position"] = UDim2.new(0, 14, 0, 104)
LMG2L["MiniAudioPlayer"]["BackgroundTransparency"] = 0.4
LMG2L["MiniAudioPlayer"]["Visible"] = false

LMG2L["MiniAudio_UICorner"] = Instance.new("UICorner", LMG2L["MiniAudioPlayer"])

LMG2L["MiniAudio_UIStroke"] = Instance.new("UIStroke", LMG2L["MiniAudioPlayer"])
LMG2L["MiniAudio_UIStroke"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
LMG2L["MiniAudio_UIStroke"]["Color"] = Color3.fromRGB(63, 63, 63)

LMG2L["MiniAudio_PlayPause"] = Instance.new("ImageButton", LMG2L["MiniAudioPlayer"])
LMG2L["MiniAudio_PlayPause"]["BorderSizePixel"] = 0
LMG2L["MiniAudio_PlayPause"]["BackgroundTransparency"] = 1
LMG2L["MiniAudio_PlayPause"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["MiniAudio_PlayPause"]["Image"] = getcustomasset("RBX_Chat/assets/circle-play.png")
LMG2L["MiniAudio_PlayPause"]["Size"] = UDim2.new(0, 40, 0, 40)
LMG2L["MiniAudio_PlayPause"]["Position"] = UDim2.new(0, 16, 0, 18)

LMG2L["MiniAudio_Close"] = Instance.new("ImageButton", LMG2L["MiniAudioPlayer"])
LMG2L["MiniAudio_Close"]["BorderSizePixel"] = 0
LMG2L["MiniAudio_Close"]["BackgroundTransparency"] = 1
LMG2L["MiniAudio_Close"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["MiniAudio_Close"]["Image"] = getcustomasset("RBX_Chat/assets/close.png")
LMG2L["MiniAudio_Close"]["Size"] = UDim2.new(0, 14, 0, 14)
LMG2L["MiniAudio_Close"]["Name"] = "Close"
LMG2L["MiniAudio_Close"]["Position"] = UDim2.new(0, 56, 0, 2)

LMG2L["MiniAudio_Time"] = Instance.new("TextLabel", LMG2L["MiniAudioPlayer"])
LMG2L["MiniAudio_Time"]["BorderSizePixel"] = 0
LMG2L["MiniAudio_Time"]["BackgroundTransparency"] = 1
LMG2L["MiniAudio_Time"]["Size"] = UDim2.new(1, 0, 0, 14)
LMG2L["MiniAudio_Time"]["Position"] = UDim2.new(0, 0, 0, 2)
LMG2L["MiniAudio_Time"]["Text"] = "0:00"
LMG2L["MiniAudio_Time"]["TextColor3"] = Color3.fromRGB(200, 200, 200)
LMG2L["MiniAudio_Time"]["FontFace"] = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
LMG2L["MiniAudio_Time"]["TextSize"] = 12
LMG2L["MiniAudio_Time"]["TextXAlignment"] = Enum.TextXAlignment.Center

LMG2L["StickerMenu_20"] = Instance.new("Frame", LMG2L["MainFrame_3"])
LMG2L["StickerMenu_20"]["BorderSizePixel"] = 0
LMG2L["StickerMenu_20"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51)
LMG2L["StickerMenu_20"]["BackgroundTransparency"] = 0.4
LMG2L["StickerMenu_20"]["Size"] = UDim2.new(0, 190, 1, 0)
LMG2L["StickerMenu_20"]["Position"] = UDim2.new(1, 6, 0, 0)
LMG2L["StickerMenu_20"]["Name"] = "StickerMenu"
LMG2L["StickerMenu_20"]["Visible"] = false

LMG2L["UICorner_20"] = Instance.new("UICorner", LMG2L["StickerMenu_20"])
LMG2L["UICorner_20"]["CornerRadius"] = UDim.new(0, 3)

LMG2L["UIStroke_20"] = Instance.new("UIStroke", LMG2L["StickerMenu_20"])
LMG2L["UIStroke_20"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
LMG2L["UIStroke_20"]["Color"] = Color3.fromRGB(63, 63, 63)

local HeaderFrame = Instance.new("Frame", LMG2L["StickerMenu_20"])
HeaderFrame.Name = "HeaderFrame"
HeaderFrame.Size = UDim2.new(1, 0, 0, 30)
HeaderFrame.BackgroundTransparency = 1
HeaderFrame.Visible = false

local HeaderTitle = Instance.new("TextLabel", HeaderFrame)
HeaderTitle.Size = UDim2.new(0, 100, 1, 0)
HeaderTitle.Position = UDim2.new(0, 10, 0, 0)
HeaderTitle.BackgroundTransparency = 1
HeaderTitle.Text = "Figurinhas"
HeaderTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
HeaderTitle.TextXAlignment = Enum.TextXAlignment.Left
HeaderTitle.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
HeaderTitle.TextSize = 12

local BackBtn = Instance.new("TextButton", HeaderFrame)
BackBtn.Size = UDim2.new(0, 70, 1, 0)
BackBtn.Position = UDim2.new(1, -70, 0, 0)
BackBtn.BackgroundTransparency = 1
BackBtn.Text = ""

local BackList = Instance.new("UIListLayout", BackBtn)
BackList.FillDirection = Enum.FillDirection.Horizontal
BackList.HorizontalAlignment = Enum.HorizontalAlignment.Right
BackList.VerticalAlignment = Enum.VerticalAlignment.Center
BackList.SortOrder = Enum.SortOrder.LayoutOrder
BackList.Padding = UDim.new(0, 4)

local BackPadding = Instance.new("UIPadding", BackBtn)
BackPadding.PaddingRight = UDim.new(0, 10)

local BackText = Instance.new("TextLabel", BackBtn)
BackText.Size = UDim2.new(0, 0, 1, 0)
BackText.AutomaticSize = Enum.AutomaticSize.X
BackText.BackgroundTransparency = 1
BackText.Text = "Voltar"
BackText.TextColor3 = Color3.fromRGB(255, 255, 255)
BackText.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
BackText.TextSize = 12
BackText.TextXAlignment = Enum.TextXAlignment.Right
BackText.LayoutOrder = 2

local BackIcon = Instance.new("ImageLabel", BackBtn)
BackIcon.Size = UDim2.new(0, 14, 0, 14)
BackIcon.BackgroundTransparency = 1
BackIcon.Image = getcustomasset("RBX_Chat/assets/step-back.png")
BackIcon.LayoutOrder = 1

local MenuSelection = Instance.new("ScrollingFrame", LMG2L["StickerMenu_20"])
MenuSelection.Size = UDim2.new(1, 0, 1, 0)
MenuSelection.BackgroundTransparency = 1
MenuSelection.BorderSizePixel = 0
MenuSelection.ScrollingDirection = Enum.ScrollingDirection.Y
MenuSelection.CanvasSize = UDim2.new(0, 0, 0, 0)
MenuSelection.AutomaticCanvasSize = Enum.AutomaticSize.Y
MenuSelection.ScrollBarThickness = 2
MenuSelection.TopImage = "rbxassetid://116224844318248"
MenuSelection.MidImage = "rbxassetid://86656172623271"
MenuSelection.BottomImage = "rbxassetid://83357700996816"

local MenuList = Instance.new("UIListLayout", MenuSelection)
MenuList.Padding = UDim.new(0, 6)
MenuList.HorizontalAlignment = Enum.HorizontalAlignment.Center
MenuList.SortOrder = Enum.SortOrder.LayoutOrder

local MenuPadding = Instance.new("UIPadding", MenuSelection)
MenuPadding.PaddingTop = UDim.new(0, 8)
MenuPadding.PaddingBottom = UDim.new(0, 8)

local function CreateTabEntranceBtn(text, parent)
    local btn = Instance.new("TextButton", parent)
    btn.Size = UDim2.new(1, -16, 0, 30)
    btn.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
    btn.BackgroundTransparency = 0.4
    btn.BorderSizePixel = 0
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    btn.TextSize = 12
    local uic = Instance.new("UICorner", btn)
    uic.CornerRadius = UDim.new(0, 4)
    local uis = Instance.new("UIStroke", btn)
    uis.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    uis.Color = Color3.fromRGB(63, 63, 63)
    return btn
end

local BtnStickers = CreateTabEntranceBtn("Figurinhas", MenuSelection)
BtnStickers.LayoutOrder = 1
local BtnAudios = CreateTabEntranceBtn("Áudios", MenuSelection)
BtnAudios.LayoutOrder = 2

LMG2L["StickerScroll_21"] = Instance.new("ScrollingFrame", LMG2L["StickerMenu_20"])
LMG2L["StickerScroll_21"]["Size"] = UDim2.new(1, 0, 1, -30)
LMG2L["StickerScroll_21"]["Position"] = UDim2.new(0, 0, 0, 30)
LMG2L["StickerScroll_21"]["BackgroundTransparency"] = 1
LMG2L["StickerScroll_21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["StickerScroll_21"]["ScrollBarThickness"] = 2
LMG2L["StickerScroll_21"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
LMG2L["StickerScroll_21"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
LMG2L["StickerScroll_21"]["TopImage"] = "rbxassetid://116224844318248"
LMG2L["StickerScroll_21"]["MidImage"] = "rbxassetid://86656172623271"
LMG2L["StickerScroll_21"]["BottomImage"] = "rbxassetid://83357700996816"
LMG2L["StickerScroll_21"]["BorderSizePixel"] = 0
LMG2L["StickerScroll_21"]["Selectable"] = false
LMG2L["StickerScroll_21"]["Visible"] = false
LMG2L["StickerScroll_21"]["ScrollingDirection"] = Enum.ScrollingDirection.Y

LMG2L["StickerGrid_22"] = Instance.new("UIGridLayout", LMG2L["StickerScroll_21"])
LMG2L["StickerGrid_22"]["CellSize"] = UDim2.new(0, 50, 0, 50)
LMG2L["StickerGrid_22"]["CellPadding"] = UDim2.new(0, 8, 0, 8)
LMG2L["StickerGrid_22"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center

LMG2L["StickerPadding_23"] = Instance.new("UIPadding", LMG2L["StickerScroll_21"])
LMG2L["StickerPadding_23"]["PaddingTop"] = UDim.new(0, 8)
LMG2L["StickerPadding_23"]["PaddingBottom"] = UDim.new(0, 8)
LMG2L["StickerPadding_23"]["PaddingLeft"] = UDim.new(0, 8)
LMG2L["StickerPadding_23"]["PaddingRight"] = UDim.new(0, 8)

local AudioScroll = Instance.new("ScrollingFrame", LMG2L["StickerMenu_20"])
AudioScroll.Name = "AudioScroll"
AudioScroll.Size = UDim2.new(1, 0, 1, -30)
AudioScroll.Position = UDim2.new(0, 0, 0, 30)
AudioScroll.BackgroundTransparency = 1
AudioScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AudioScroll.ScrollBarThickness = 2
AudioScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
AudioScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
AudioScroll.TopImage = "rbxassetid://116224844318248"
AudioScroll.MidImage = "rbxassetid://86656172623271"
AudioScroll.BottomImage = "rbxassetid://83357700996816"
AudioScroll.BorderSizePixel = 0
AudioScroll.Selectable = false
AudioScroll.Visible = false
AudioScroll.ScrollingDirection = Enum.ScrollingDirection.Y

local AudioListLayout = Instance.new("UIListLayout", AudioScroll)
AudioListLayout.Padding = UDim.new(0, 5)
AudioListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

local AudioPadding = Instance.new("UIPadding", AudioScroll)
AudioPadding.PaddingTop = UDim.new(0, 8)
AudioPadding.PaddingBottom = UDim.new(0, 8)

BtnStickers.MouseButton1Click:Connect(function()
    MenuSelection.Visible = false
    HeaderTitle.Text = "Figurinhas"
    HeaderFrame.Visible = true
    LMG2L["StickerScroll_21"].Visible = true
    AudioScroll.Visible = false
end)

BtnAudios.MouseButton1Click:Connect(function()
    MenuSelection.Visible = false
    HeaderTitle.Text = "Áudios"
    HeaderFrame.Visible = true
    LMG2L["StickerScroll_21"].Visible = false
    AudioScroll.Visible = true
end)

BackBtn.MouseButton1Click:Connect(function()
    HeaderFrame.Visible = false
    LMG2L["StickerScroll_21"].Visible = false
    AudioScroll.Visible = false
    MenuSelection.Visible = true
end)

local function AddAudioTabItem(id, customName)
    local frame = Instance.new("TextButton", AudioScroll)
    frame.Size = UDim2.new(1, -16, 0, 30)
    frame.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
    frame.BackgroundTransparency = 0.4
    frame.BorderSizePixel = 0
    
    frame.Text = customName or ("Áudio " .. tostring(id))
    frame.TextColor3 = Color3.fromRGB(255, 255, 255)
    frame.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    frame.TextSize = 12
    
    local uic = Instance.new("UICorner", frame)
    uic.CornerRadius = UDim.new(0, 4)
    
    local uis = Instance.new("UIStroke", frame)
    uis.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    uis.Color = Color3.fromRGB(63, 63, 63)

    frame.MouseButton1Click:Connect(function()
        LMG2L["TextBox_19"].Text = LMG2L["TextBox_19"].Text .. ":audio:" .. id .. ":"
    end)
end

task.spawn(function()
    pcall(function()
        local response = readfile("RBX_Chat/audios/Audios.lua")
        if response then
            for line in response:gmatch("[^\r\n]+") do
                local id, name = line:match("^(%d+)%s*%-%-%s*(.*)")
                if not id then
                    id = line:match("^(%d+)")
                end
                if id then
                    AddAudioTabItem(tonumber(id), name)
                end
            end
        end
    end)
end)

task.spawn(function()
    pcall(function()
        local response2 = readfile("RBX_Chat/audios/More-Audios.lua")
        if response2 then
            for line2 in response2:gmatch("[^\r\n]+") do
                local id2, name2 = line2:match("^(%d+)%s*%-%-%s*(.*)")
                if not id2 then
                    id2 = line2:match("^(%d+)")
                end
                if id2 then
                    AddAudioTabItem(tonumber(id2), name2)
                end
            end
        end
    end)
end)

LMG2L["ScrollingFrame_4"] = Instance.new("ScrollingFrame", LMG2L["MainFrame_3"])
LMG2L["ScrollingFrame_4"]["ScrollingDirection"] = Enum.ScrollingDirection.Y
LMG2L["ScrollingFrame_4"]["BorderSizePixel"] = 0
LMG2L["ScrollingFrame_4"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
LMG2L["ScrollingFrame_4"]["AutoLocalize"] = false
LMG2L["ScrollingFrame_4"]["TopImage"] = "rbxassetid://116224844318248"
LMG2L["ScrollingFrame_4"]["MidImage"] = "rbxassetid://86656172623271"
LMG2L["ScrollingFrame_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["ScrollingFrame_4"]["BottomImage"] = "rbxassetid://83357700996816"
LMG2L["ScrollingFrame_4"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
LMG2L["ScrollingFrame_4"]["Size"] = UDim2.new(0, 410, 0, 168)
LMG2L["ScrollingFrame_4"]["Position"] = UDim2.new(0, 0, 0, 36)
LMG2L["ScrollingFrame_4"]["ScrollBarThickness"] = 2
LMG2L["ScrollingFrame_4"]["BackgroundTransparency"] = 1

LMG2L["UIPadding_5"] = Instance.new("UIPadding", LMG2L["ScrollingFrame_4"])
LMG2L["UIPadding_5"]["PaddingTop"] = UDim.new(0, 6)
LMG2L["UIPadding_5"]["PaddingBottom"] = UDim.new(0, 6)

LMG2L["MessageFrame_6"] = Instance.new("Frame", LMG2L["ScrollingFrame_4"])
LMG2L["MessageFrame_6"]["BorderSizePixel"] = 0
LMG2L["MessageFrame_6"]["AutoLocalize"] = false
LMG2L["MessageFrame_6"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51)
LMG2L["MessageFrame_6"]["AutomaticSize"] = Enum.AutomaticSize.Y
LMG2L["MessageFrame_6"]["Size"] = UDim2.new(0, 398, 0, 56)
LMG2L["MessageFrame_6"]["Position"] = UDim2.new(0, 6, 0, 6)
LMG2L["MessageFrame_6"]["Name"] = "MessageFrame"
LMG2L["MessageFrame_6"]["BackgroundTransparency"] = 0.4

LMG2L["UIPadding_7"] = Instance.new("UIPadding", LMG2L["MessageFrame_6"])
LMG2L["UIPadding_7"]["PaddingBottom"] = UDim.new(0, 10)

LMG2L["Username_8"] = Instance.new("TextLabel", LMG2L["MessageFrame_6"])
LMG2L["Username_8"]["TextWrapped"] = true
LMG2L["Username_8"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXX
LMG2L["Username_8"]["BorderSizePixel"] = 0
LMG2L["Username_8"]["AutoLocalize"] = false
LMG2L["Username_8"]["TextSize"] = 15
LMG2L["Username_8"]["TextXAlignment"] = Enum.TextXAlignment.Left
LMG2L["Username_8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["Username_8"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
LMG2L["Username_8"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["Username_8"]["BackgroundTransparency"] = 1
LMG2L["Username_8"]["Size"] = UDim2.new(0, 134, 0, 18)
LMG2L["Username_8"]["Text"] = "rbxl_user8524457786"
LMG2L["Username_8"]["AutomaticSize"] = Enum.AutomaticSize.X
LMG2L["Username_8"]["Name"] = "Username"
LMG2L["Username_8"]["Position"] = UDim2.new(0, 44, 0, 4)

LMG2L["Time_9"] = Instance.new("TextLabel", LMG2L["Username_8"])
LMG2L["Time_9"]["TextWrapped"] = true
LMG2L["Time_9"]["BorderSizePixel"] = 0
LMG2L["Time_9"]["AutoLocalize"] = false
LMG2L["Time_9"]["TextSize"] = 14
LMG2L["Time_9"]["TextXAlignment"] = Enum.TextXAlignment.Left
LMG2L["Time_9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["Time_9"]["FontFace"] = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
LMG2L["Time_9"]["TextColor3"] = Color3.fromRGB(191, 191, 191)
LMG2L["Time_9"]["BackgroundTransparency"] = 1
LMG2L["Time_9"]["Size"] = UDim2.new(0, 38, 0, 14)
LMG2L["Time_9"]["Text"] = "00:00"
LMG2L["Time_9"]["Name"] = "Time"
LMG2L["Time_9"]["Position"] = UDim2.new(1, 4, 0, 2)
LMG2L["Time_9"]["SelectionGroup"] = true

LMG2L["UIStroke_a"] = Instance.new("UIStroke", LMG2L["MessageFrame_6"])
LMG2L["UIStroke_a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
LMG2L["UIStroke_a"]["Color"] = Color3.fromRGB(63, 63, 63)

LMG2L["Thumbnail_b"] = Instance.new("ImageLabel", LMG2L["MessageFrame_6"])
LMG2L["Thumbnail_b"]["BorderSizePixel"] = 0
LMG2L["Thumbnail_b"]["AutoLocalize"] = false
LMG2L["Thumbnail_b"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51)
LMG2L["Thumbnail_b"]["Image"] = "rbxthumb://type=AvatarHeadShot&id=11130483972&w=420&h=420"
LMG2L["Thumbnail_b"]["Size"] = UDim2.new(0, 34, 0, 34)
LMG2L["Thumbnail_b"]["Name"] = "Thumbnail"
LMG2L["Thumbnail_b"]["Position"] = UDim2.new(0, 4, 0, 4)

LMG2L["UICorner_c"] = Instance.new("UICorner", LMG2L["Thumbnail_b"])
LMG2L["UICorner_c"]["CornerRadius"] = UDim.new(1, 0)

LMG2L["UIStroke_d"] = Instance.new("UIStroke", LMG2L["Thumbnail_b"])
LMG2L["UIStroke_d"]["Color"] = Color3.fromRGB(63, 63, 63)

LMG2L["UICorner_e"] = Instance.new("UICorner", LMG2L["MessageFrame_6"])
LMG2L["UICorner_e"]["CornerRadius"] = UDim.new(0, 3)

LMG2L["Setclipboard_f"] = Instance.new("ImageButton", LMG2L["MessageFrame_6"])
LMG2L["Setclipboard_f"]["BorderSizePixel"] = 0
LMG2L["Setclipboard_f"]["AutoLocalize"] = false
LMG2L["Setclipboard_f"]["AutoButtonColor"] = false
LMG2L["Setclipboard_f"]["BackgroundTransparency"] = 0.4
LMG2L["Setclipboard_f"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51)
LMG2L["Setclipboard_f"]["Image"] = "rbxassetid://107988181983371"
LMG2L["Setclipboard_f"]["Size"] = UDim2.new(0, 16, 0, 16)
LMG2L["Setclipboard_f"]["Name"] = "Setclipboard"
LMG2L["Setclipboard_f"]["Position"] = UDim2.new(0, 378, 0, 4)

LMG2L["UICorner_10"] = Instance.new("UICorner", LMG2L["Setclipboard_f"])
LMG2L["UICorner_10"]["CornerRadius"] = UDim.new(0, 3)

LMG2L["UIStroke_11"] = Instance.new("UIStroke", LMG2L["Setclipboard_f"])
LMG2L["UIStroke_11"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
LMG2L["UIStroke_11"]["Color"] = Color3.fromRGB(63, 63, 63)

LMG2L["MessageContent_12"] = Instance.new("Frame", LMG2L["MessageFrame_6"])
LMG2L["MessageContent_12"]["BorderSizePixel"] = 0
LMG2L["MessageContent_12"]["BackgroundTransparency"] = 1
LMG2L["MessageContent_12"]["Size"] = UDim2.new(1, -50, 0, 0)
LMG2L["MessageContent_12"]["AutomaticSize"] = Enum.AutomaticSize.Y
LMG2L["MessageContent_12"]["Name"] = "MessageContent"
LMG2L["MessageContent_12"]["Position"] = UDim2.new(0, 44, 0, 22)

LMG2L["MessageContent_Layout"] = Instance.new("UIListLayout", LMG2L["MessageContent_12"])
LMG2L["MessageContent_Layout"]["SortOrder"] = Enum.SortOrder.LayoutOrder
LMG2L["MessageContent_Layout"]["Padding"] = UDim.new(0, 4)

LMG2L["MessageContent_Text"] = Instance.new("TextLabel", LMG2L["MessageContent_12"])
LMG2L["MessageContent_Text"]["TextWrapped"] = true
LMG2L["MessageContent_Text"]["Interactable"] = false
LMG2L["MessageContent_Text"]["BorderSizePixel"] = 0
LMG2L["MessageContent_Text"]["AutoLocalize"] = false
LMG2L["MessageContent_Text"]["TextSize"] = 17
LMG2L["MessageContent_Text"]["TextXAlignment"] = Enum.TextXAlignment.Left
LMG2L["MessageContent_Text"]["TextYAlignment"] = Enum.TextYAlignment.Top
LMG2L["MessageContent_Text"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["MessageContent_Text"]["FontFace"] = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
LMG2L["MessageContent_Text"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["MessageContent_Text"]["BackgroundTransparency"] = 1
LMG2L["MessageContent_Text"]["RichText"] = true
LMG2L["MessageContent_Text"]["Size"] = UDim2.new(1, 0, 0, 0)
LMG2L["MessageContent_Text"]["Text"] = ""
LMG2L["MessageContent_Text"]["AutomaticSize"] = Enum.AutomaticSize.Y
LMG2L["MessageContent_Text"]["Name"] = "Text"
LMG2L["MessageContent_Text"]["LayoutOrder"] = 1

LMG2L["UIStroke_13"] = Instance.new("UIStroke", LMG2L["ScrollingFrame_4"])
LMG2L["UIStroke_13"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
LMG2L["UIStroke_13"]["Color"] = Color3.fromRGB(63, 63, 63)

LMG2L["UIListLayout_14"] = Instance.new("UIListLayout", LMG2L["ScrollingFrame_4"])
LMG2L["UIListLayout_14"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
LMG2L["UIListLayout_14"]["Padding"] = UDim.new(0, 6)
LMG2L["UIListLayout_14"]["FillDirection"] = Enum.FillDirection.Vertical
LMG2L["UIListLayout_14"]["Wraps"] = false

LMG2L["UICorner_15"] = Instance.new("UICorner", LMG2L["MainFrame_3"])
LMG2L["UICorner_15"]["CornerRadius"] = UDim.new(0, 3)

LMG2L["UIStroke_16"] = Instance.new("UIStroke", LMG2L["MainFrame_3"])
LMG2L["UIStroke_16"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
LMG2L["UIStroke_16"]["Color"] = Color3.fromRGB(63, 63, 63)

LMG2L["Loading_17"] = Instance.new("ImageLabel", LMG2L["MainFrame_3"])
LMG2L["Loading_17"]["BorderSizePixel"] = 0
LMG2L["Loading_17"]["AutoLocalize"] = false
LMG2L["Loading_17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["Loading_17"]["Image"] = getcustomasset("RBX_Chat/assets/loading.png")
LMG2L["Loading_17"]["Size"] = UDim2.new(0, 30, 0, 30)
LMG2L["Loading_17"]["Visible"] = false
LMG2L["Loading_17"]["BackgroundTransparency"] = 1
LMG2L["Loading_17"]["Name"] = "Loading"
LMG2L["Loading_17"]["Position"] = UDim2.new(0, 376, 0, 2)

LMG2L["TextLabel_18"] = Instance.new("TextLabel", LMG2L["MainFrame_3"])
LMG2L["TextLabel_18"]["BorderSizePixel"] = 0
LMG2L["TextLabel_18"]["AutoLocalize"] = false
LMG2L["TextLabel_18"]["TextSize"] = 18
LMG2L["TextLabel_18"]["TextXAlignment"] = Enum.TextXAlignment.Left
LMG2L["TextLabel_18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["TextLabel_18"]["FontFace"] = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
LMG2L["TextLabel_18"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["TextLabel_18"]["BackgroundTransparency"] = 1
LMG2L["TextLabel_18"]["Size"] = UDim2.new(0, 72, 0, 36)
LMG2L["TextLabel_18"]["Text"] = "RBX Chat"
LMG2L["TextLabel_18"]["Position"] = UDim2.new(0, 12, 0, 0)

LMG2L["NewMessagesBtn"] = Instance.new("TextButton", LMG2L["MainFrame_3"])
LMG2L["NewMessagesBtn"]["BorderSizePixel"] = 0
LMG2L["NewMessagesBtn"]["TextSize"] = 13
LMG2L["NewMessagesBtn"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["NewMessagesBtn"]["BackgroundColor3"] = Color3.fromRGB(255, 95, 95)
LMG2L["NewMessagesBtn"]["FontFace"] = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
LMG2L["NewMessagesBtn"]["Size"] = UDim2.new(0, 166, 0, 18)
LMG2L["NewMessagesBtn"]["Visible"] = false
LMG2L["NewMessagesBtn"]["Position"] = UDim2.new(0, 90, 0, 9)
LMG2L["NewMessagesBtn"]["AutomaticSize"] = Enum.AutomaticSize.X

LMG2L["NewMessagesBtn_Corner"] = Instance.new("UICorner", LMG2L["NewMessagesBtn"])
LMG2L["NewMessagesBtn_Corner"]["CornerRadius"] = UDim.new(0, 8)

local UIPadding_Btn = Instance.new("UIPadding", LMG2L["NewMessagesBtn"])
UIPadding_Btn.PaddingLeft = UDim.new(0, 8)
UIPadding_Btn.PaddingRight = UDim.new(0, 26)

LMG2L["CloseNewMessagesBtn"] = Instance.new("ImageButton", LMG2L["NewMessagesBtn"])
LMG2L["CloseNewMessagesBtn"]["Name"] = "CloseBtn"
LMG2L["CloseNewMessagesBtn"]["BackgroundTransparency"] = 1
LMG2L["CloseNewMessagesBtn"]["AutoButtonColor"] = false
LMG2L["CloseNewMessagesBtn"]["Size"] = UDim2.new(0, 18, 0, 18)
LMG2L["CloseNewMessagesBtn"]["Position"] = UDim2.new(1, 7, 0.5, 0)
LMG2L["CloseNewMessagesBtn"]["AnchorPoint"] = Vector2.new(0, 0.5)
LMG2L["CloseNewMessagesBtn"]["Image"] = getcustomasset("RBX_Chat/assets/close.png")
LMG2L["CloseNewMessagesBtn"].MouseButton1Click:Connect(function()
    LMG2L["NewMessagesBtn"].Visible = false
    UnreadMessagesCount = 0
end)

LMG2L["TextBox_19"] = Instance.new("TextBox", LMG2L["MainFrame_3"])
LMG2L["TextBox_19"]["PlaceholderColor3"] = Color3.fromRGB(151, 151, 151)
LMG2L["TextBox_19"]["BorderSizePixel"] = 0
LMG2L["TextBox_19"]["AutoLocalize"] = false
LMG2L["TextBox_19"]["TextSize"] = 18
LMG2L["TextBox_19"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
LMG2L["TextBox_19"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51)
LMG2L["TextBox_19"]["FontFace"] = Font.new("rbxasset://fonts/families/BuilderSans.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
LMG2L["TextBox_19"]["ClearTextOnFocus"] = false
LMG2L["TextBox_19"]["PlaceholderText"] = "Digite uma mensagem..."
LMG2L["TextBox_19"]["Size"] = UDim2.new(0, 328, 0, 30)
LMG2L["TextBox_19"]["Position"] = UDim2.new(0, 6, 0, 210)
LMG2L["TextBox_19"]["Text"] = ""
LMG2L["TextBox_19"]["BackgroundTransparency"] = 0.5
LMG2L["TextBox_19"]["ClipsDescendants"] = true

LMG2L["UIStroke_1a"] = Instance.new("UIStroke", LMG2L["TextBox_19"])
LMG2L["UIStroke_1a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
LMG2L["UIStroke_1a"]["Color"] = Color3.fromRGB(63, 63, 63)

LMG2L["UICorner_1b"] = Instance.new("UICorner", LMG2L["TextBox_19"])
LMG2L["UICorner_1b"]["CornerRadius"] = UDim.new(0, 3)

LMG2L["StickerButton_1f"] = Instance.new("ImageButton", LMG2L["MainFrame_3"])
LMG2L["StickerButton_1f"]["BorderSizePixel"] = 0
LMG2L["StickerButton_1f"]["AutoButtonColor"] = false
LMG2L["StickerButton_1f"]["BackgroundTransparency"] = 0.5
LMG2L["StickerButton_1f"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51)
LMG2L["StickerButton_1f"]["Image"] = getcustomasset("RBX_Chat/assets/plus.png")
LMG2L["StickerButton_1f"]["Size"] = UDim2.new(0, 30, 0, 30)
LMG2L["StickerButton_1f"]["Name"] = "StickerButton"
LMG2L["StickerButton_1f"]["Position"] = UDim2.new(0, 339, 0, 210)

LMG2L["UICorner_1f"] = Instance.new("UICorner", LMG2L["StickerButton_1f"])
LMG2L["UICorner_1f"]["CornerRadius"] = UDim.new(0, 3)

LMG2L["UIStroke_1f"] = Instance.new("UIStroke", LMG2L["StickerButton_1f"])
LMG2L["UIStroke_1f"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
LMG2L["UIStroke_1f"]["Color"] = Color3.fromRGB(63, 63, 63)

LMG2L["SendMessage_1c"] = Instance.new("ImageButton", LMG2L["MainFrame_3"])
LMG2L["SendMessage_1c"]["BorderSizePixel"] = 0
LMG2L["SendMessage_1c"]["AutoLocalize"] = false
LMG2L["SendMessage_1c"]["AutoButtonColor"] = false
LMG2L["SendMessage_1c"]["BackgroundTransparency"] = 0.5
LMG2L["SendMessage_1c"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51)
LMG2L["SendMessage_1c"]["Image"] = getcustomasset("RBX_Chat/assets/send-horizontal.png")
LMG2L["SendMessage_1c"]["Size"] = UDim2.new(0, 30, 0, 30)
LMG2L["SendMessage_1c"]["Name"] = "SendMessage"
LMG2L["SendMessage_1c"]["Position"] = UDim2.new(0, 374, 0, 210)

LMG2L["UICorner_1d"] = Instance.new("UICorner", LMG2L["SendMessage_1c"])
LMG2L["UICorner_1d"]["CornerRadius"] = UDim.new(0, 3)

LMG2L["UIStroke_1e"] = Instance.new("UIStroke", LMG2L["SendMessage_1c"])
LMG2L["UIStroke_1e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
LMG2L["UIStroke_1e"]["Color"] = Color3.fromRGB(63, 63, 63)

local MessageTemplate = LMG2L["MessageFrame_6"]
MessageTemplate.Parent = nil

local ws
local UnreadMessagesCount = 0
local FirstUnreadTime = ""
local isConnecting = false
local ConnectionID = 0

LMG2L["MinimizeToggle_2"].MouseButton1Click:Connect(function()
    LMG2L["MainFrame_3"].Visible = not LMG2L["MainFrame_3"].Visible
end)

LMG2L["StickerButton_1f"].MouseButton1Click:Connect(function()
    LMG2L["StickerMenu_20"].Visible = not LMG2L["StickerMenu_20"].Visible
    if LMG2L["StickerMenu_20"].Visible then
        LMG2L["StickerButton_1f"].Image = getcustomasset("RBX_Chat/assets/minus.png")
    else
        LMG2L["StickerButton_1f"].Image = getcustomasset("RBX_Chat/assets/plus.png")
    end
end)

LMG2L["MiniAudio_PlayPause"].MouseButton1Click:Connect(function()
    local activeAudio = getgenv().ActiveChatAudio
    if activeAudio then
        if activeAudio.IsPlaying() then
            activeAudio.Pause()
        else
            activeAudio.Play()
        end
    end
end)

LMG2L["MiniAudio_Close"].MouseButton1Click:Connect(function()
    local activeAudio = getgenv().ActiveChatAudio
    if activeAudio then
        activeAudio.Stop()
        getgenv().ActiveChatAudio = nil
    end
    LMG2L["MiniAudioPlayer"].Visible = false
end)

local function AddSticker(id)
    local btn = Instance.new("ImageButton", LMG2L["StickerScroll_21"])
    btn.Size = UDim2.new(0, 60, 0, 60)
    btn.BackgroundTransparency = 1
    btn.Image = "rbxassetid://" .. id
    btn.MouseButton1Click:Connect(function()
        LMG2L["TextBox_19"].Text = LMG2L["TextBox_19"].Text .. ":" .. id .. ":"
    end)
end

task.spawn(function()
    pcall(function()
        local response = readfile("RBX_Chat/stickers/Stickers.lua")
        if response then
            for line in response:gmatch("[^\r\n]+") do
                line = line:gsub("%-%-.*", ""):gsub("//.*", ""):gsub("#.*", "")
                local id = line:match("%d+")
                if id then
                    AddSticker(tonumber(id))
                end
            end
        end
    end)
end)

task.spawn(function()
    pcall(function()
        local response2 = readfile("RBX_Chat/stickers/More-Stickers.lua")
        if response2 then
            for line2 in response2:gmatch("[^\r\n]+") do
                line2 = line2:gsub("%-%-.*", ""):gsub("//.*", ""):gsub("#.*", "")
                local id2 = line2:match("%d+")
                if id2 then
                    AddSticker(tonumber(id2))
                end
            end
        end
    end)
end)

task.spawn(function()
    while RunService.RenderStepped:Wait() do
        if LMG2L["Loading_17"].Visible then
            LMG2L["Loading_17"].Rotation = LMG2L["Loading_17"].Rotation + 5
        end
        
        local activeAudio = getgenv().ActiveChatAudio
        if activeAudio and activeAudio.Frame and activeAudio.Frame.Parent then
            local frame = activeAudio.Frame
            local mainVisible = LMG2L["MainFrame_3"].Visible
            
            local scrollFrame = LMG2L["ScrollingFrame_4"]
            local isVisibleInScroll = true
            
            if mainVisible then
                local frameTop = frame.AbsolutePosition.Y
                local frameBottom = frameTop + frame.AbsoluteSize.Y
                local scrollTop = scrollFrame.AbsolutePosition.Y
                local scrollBottom = scrollTop + scrollFrame.AbsoluteWindowSize.Y
                
                if frameBottom < scrollTop or frameTop > scrollBottom then
                    isVisibleInScroll = false
                end
            end
            
            if not mainVisible or not isVisibleInScroll then
                if activeAudio.IsPlaying() and not LMG2L["MiniAudioPlayer"].Visible then
                    LMG2L["MiniAudioPlayer"].Visible = true
                end
                
                if LMG2L["MiniAudioPlayer"].Visible then
                    if activeAudio.IsPlaying() then
                        LMG2L["MiniAudio_PlayPause"].Image = getcustomasset("RBX_Chat/assets/circle-pause.png")
                    else
                        LMG2L["MiniAudio_PlayPause"].Image = getcustomasset("RBX_Chat/assets/circle-play.png")
                    end
                    if activeAudio.GetTimeText then
                        LMG2L["MiniAudio_Time"].Text = activeAudio.GetTimeText()
                    end
                end
            else
                LMG2L["MiniAudioPlayer"].Visible = false
            end
        else
            if LMG2L["MiniAudioPlayer"] then
                LMG2L["MiniAudioPlayer"].Visible = false
            end
        end
    end
end)

local function ReceiveMessage(username, userId, text, timeStr)
    local NewMessage = MessageTemplate:Clone()
    NewMessage.Username.Text = username
    NewMessage.Thumbnail.Image = "rbxthumb://type=AvatarHeadShot&id=" .. tostring(userId) .. "&w=420&h=420"
    NewMessage.Username.Time.Text = timeStr or os.date("%H:%M")

    local textOnly = text:gsub(":audio:%d+:", ""):gsub(":%d+:", "")
    textOnly = textOnly:gsub("^%s+", ""):gsub("%s+$", "")
    
    if textOnly == "" then
        NewMessage.MessageContent.Text.Visible = false
    else
        NewMessage.MessageContent.Text.Text = textOnly
    end

    local AttachmentContainer = Instance.new("Frame", NewMessage.MessageContent)
    AttachmentContainer.Name = "Attachments"
    AttachmentContainer.BackgroundTransparency = 1
    AttachmentContainer.Size = UDim2.new(1, 0, 0, 0)
    AttachmentContainer.AutomaticSize = Enum.AutomaticSize.Y
    AttachmentContainer.LayoutOrder = 2

    local AttachList = Instance.new("UIListLayout", AttachmentContainer)
    AttachList.SortOrder = Enum.SortOrder.LayoutOrder
    AttachList.Padding = UDim.new(0, 4)

    local StickerContainer = Instance.new("Frame", AttachmentContainer)
    StickerContainer.Name = "Stickers"
    StickerContainer.BackgroundTransparency = 1
    StickerContainer.Size = UDim2.new(1, 0, 0, 0)
    StickerContainer.AutomaticSize = Enum.AutomaticSize.Y
    StickerContainer.LayoutOrder = 1

    local UIGrid = Instance.new("UIGridLayout", StickerContainer)
    UIGrid.CellSize = UDim2.new(0, 60, 0, 60)
    UIGrid.CellPadding = UDim2.new(0, 5, 0, 5)
    UIGrid.SortOrder = Enum.SortOrder.LayoutOrder

    local AudioContainer = Instance.new("Frame", AttachmentContainer)
    AudioContainer.Name = "Audios"
    AudioContainer.BackgroundTransparency = 1
    AudioContainer.Size = UDim2.new(1, 0, 0, 0)
    AudioContainer.AutomaticSize = Enum.AutomaticSize.Y
    AudioContainer.LayoutOrder = 2

    local AudioList = Instance.new("UIListLayout", AudioContainer)
    AudioList.SortOrder = Enum.SortOrder.LayoutOrder
    AudioList.Padding = UDim.new(0, 4)

    local hasAttachments = false

    for id in text:gmatch(":audio:(%d+):") do
        hasAttachments = true
        local title = getgenv().AudioNames[tostring(id)]
        UILibrary:CreateAudioPlayer(id, title, AudioContainer)
    end

    local textForStickers = text:gsub(":audio:%d+:", "")
    for id in textForStickers:gmatch(":(%d+):") do
        hasAttachments = true
        local img = Instance.new("ImageLabel", StickerContainer)
        img.BackgroundTransparency = 1
        img.Image = "rbxassetid://" .. id
    end

    if not hasAttachments then
        AttachmentContainer:Destroy()
    else
        if #StickerContainer:GetChildren() <= 1 then
            StickerContainer:Destroy()
        end
        if #AudioContainer:GetChildren() <= 1 then
            AudioContainer:Destroy()
        end
    end

    NewMessage.Setclipboard.MouseButton1Click:Connect(function()
        if setclipboard then
            setclipboard(text)
        end
    end)

    local ScrollFrame = LMG2L["ScrollingFrame_4"]
    local MaxScroll = ScrollFrame.AbsoluteCanvasSize.Y - ScrollFrame.AbsoluteWindowSize.Y
    local IsNearBottom = ScrollFrame.CanvasPosition.Y >= (MaxScroll - 50)
    local IsMyMessage = (userId == Player.UserId)

    NewMessage.Parent = ScrollFrame
    
    if IsNearBottom or MaxScroll < 0 or IsMyMessage then
        task.spawn(function()
            task.wait()
            ScrollFrame.CanvasPosition = Vector2.new(0, ScrollFrame.AbsoluteCanvasSize.Y - ScrollFrame.AbsoluteWindowSize.Y)
        end)
        if IsNearBottom then
            LMG2L["NewMessagesBtn"].Visible = false
            UnreadMessagesCount = 0
        end
    else
        if not IsMyMessage then
            UnreadMessagesCount = UnreadMessagesCount + 1
            if UnreadMessagesCount == 1 then
                FirstUnreadTime = timeStr or os.date("%H:%M")
            end
            
            if UnreadMessagesCount == 1 then
                LMG2L["NewMessagesBtn"].Text = "1 mensagem nova desde " .. FirstUnreadTime
            else
                LMG2L["NewMessagesBtn"].Text = tostring(UnreadMessagesCount) .. " mensagens novas desde " .. FirstUnreadTime
            end
            
            LMG2L["NewMessagesBtn"].Visible = true
        end
    end
    
    task.delay(1000, function()
        if NewMessage and NewMessage.Parent then
            NewMessage:Destroy()
        end
    end)
   
    local AudioCount = 0
    local NotifyText = text:gsub(":audio:%d+:", function()
        AudioCount += 1
        return ""
    end)

    local StickerCount = 0
    NotifyText = NotifyText:gsub(":%d+:", function()
        StickerCount += 1
        return ""
    end)

    NotifyText = NotifyText:gsub("%s+", " "):gsub("^%s+", ""):gsub("%s+$", "")

    local extras = {}
    if StickerCount == 1 then
        table.insert(extras, "[Figurinha]")
    elseif StickerCount > 1 then
        table.insert(extras, "[Figurinhas x" .. StickerCount .. "]")
    end
    
    if AudioCount == 1 then
        table.insert(extras, "[Áudio]")
    elseif AudioCount > 1 then
        table.insert(extras, "[Áudios x" .. AudioCount .. "]")
    end

    if #extras > 0 then
        NotifyText = NotifyText .. " " .. table.concat(extras, " ")
    end

    if not LMG2L["MainFrame_3"].Visible and userId ~= Player.UserId then
        SendNotification(
            username,
            NotifyText,
            5,
            "rbxthumb://type=AvatarHeadShot&id=" .. tostring(userId) .. "&w=420&h=420"
        )
    end
end

LMG2L["NewMessagesBtn"].MouseButton1Click:Connect(function()
    local ScrollFrame = LMG2L["ScrollingFrame_4"]
    ScrollFrame.CanvasPosition = Vector2.new(0, ScrollFrame.AbsoluteCanvasSize.Y - ScrollFrame.AbsoluteWindowSize.Y)
    LMG2L["NewMessagesBtn"].Visible = false
    UnreadMessagesCount = 0
end)

LMG2L["ScrollingFrame_4"]:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
    local ScrollFrame = LMG2L["ScrollingFrame_4"]
    local MaxScroll = ScrollFrame.AbsoluteCanvasSize.Y - ScrollFrame.AbsoluteWindowSize.Y
    if ScrollFrame.CanvasPosition.Y >= (MaxScroll - 50) and LMG2L["NewMessagesBtn"].Visible then
        LMG2L["NewMessagesBtn"].Visible = false
        UnreadMessagesCount = 0
    end
end)

local function ConnectWebSocket()
    if isConnecting then return false end
    isConnecting = true
    ConnectionID = ConnectionID + 1
    local CurrentConnection = ConnectionID
    
    if ws then
        pcall(function() ws:Close() end)
        ws = nil
    end

    local success, socket = pcall(function()
        return WebSocket.connect("wss://rbxchat.rbxprojects.workers.dev")
    end)
    
    if success and socket then
        ws = socket
        
        ws.OnMessage:Connect(function(msg)
            if CurrentConnection ~= ConnectionID then return end
            LMG2L["Loading_17"]["Visible"] = false
            local s, data = pcall(function() return HttpService:JSONDecode(msg) end)
            if s and data.username and data.text then
                ReceiveMessage(data.username, data.userId, data.text, data.time)
            end
        end)
        
        if ws.OnClose then
            ws.OnClose:Connect(function()
                if CurrentConnection == ConnectionID then
                    ws = nil
                end
            end)
        end
        isConnecting = false
        return true
    else
        ws = nil
        isConnecting = false
        return false
    end
end

task.spawn(ConnectWebSocket)

local IsSending = false
LMG2L["SendMessage_1c"].MouseButton1Click:Connect(function()
    if IsSending then return end
    local Text = LMG2L["TextBox_19"].Text
    
    if Text:match("%S") or Text:match(":%d+:") or Text:match(":audio:%d+:") then
        IsSending = true
        LMG2L["Loading_17"]["Visible"] = true
        
        if not ws then
            ConnectWebSocket()
        end
        
        if ws then
            local data = {
                username = Player.DisplayName,
                userId = Player.UserId,
                text = Text,
                time = os.date("%H:%M")
            }
            
            local success, err = pcall(function()
                ws:Send(HttpService:JSONEncode(data))
            end)
            
            if not success then
                LMG2L["Loading_17"]["Visible"] = false
                SendNotification("RBX Chat", "Erro na conexão. Tente enviar novamente.", 3,  getcustomasset("RBX_Chat/assets/message-square-more.png"))
                ws = nil 
            end
        else
            LMG2L["Loading_17"]["Visible"] = false
            SendNotification("RBX Chat", "Modo Offline ativo. Servidor indisponível.", 3, getcustomasset("RBX_Chat/assets/message-square-more.png"))
            ReceiveMessage(Player.DisplayName, Player.UserId, Text, os.date("%H:%M"))
        end
        
        LMG2L["TextBox_19"].Text = ""
        IsSending = false
    end
end)

return LMG2L["RBX_Chat_1"], require