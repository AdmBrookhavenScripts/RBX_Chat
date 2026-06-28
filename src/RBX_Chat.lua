local RunService = cloneref(game:GetService("RunService"))
local StarterGui = cloneref(game:GetService("StarterGui"))
local Players = cloneref(game:GetService("Players"))
local HttpService = cloneref(game:GetService("HttpService"))

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

if getgenv().Running == true then SendNotification("RBX Chat", "RBX Chat já está rodando.", 5, getcustomasset("RBX_Chat/assets/message-square-more.png")) return end
getgenv().Running = true

local LMG2L = {}

LMG2L["RBX_Chat_1"] = Instance.new("ScreenGui", Player:FindFirstChild("PlayerGui"))
LMG2L["RBX_Chat_1"]["Name"] = "RBX_Chat"
LMG2L["RBX_Chat_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

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

LMG2L["MainFrame_3"] = Instance.new("Frame", LMG2L["RBX_Chat_1"])
LMG2L["MainFrame_3"]["Active"] = true
LMG2L["MainFrame_3"]["Draggable"] = true
LMG2L["MainFrame_3"]["BorderSizePixel"] = 0
LMG2L["MainFrame_3"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51)
LMG2L["MainFrame_3"]["Size"] = UDim2.new(0, 410, 0, 246)
LMG2L["MainFrame_3"]["Position"] = UDim2.new(0, 186, 0, 14)
LMG2L["MainFrame_3"]["Name"] = "MainFrame"
LMG2L["MainFrame_3"]["BackgroundTransparency"] = 0.4

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

LMG2L["StickerScroll_21"] = Instance.new("ScrollingFrame", LMG2L["StickerMenu_20"])
LMG2L["StickerScroll_21"]["Size"] = UDim2.new(1, 0, 1, 0)
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

LMG2L["StickerGrid_22"] = Instance.new("UIGridLayout", LMG2L["StickerScroll_21"])
LMG2L["StickerGrid_22"]["CellSize"] = UDim2.new(0, 50, 0, 50)
LMG2L["StickerGrid_22"]["CellPadding"] = UDim2.new(0, 8, 0, 8)
LMG2L["StickerGrid_22"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center

LMG2L["StickerPadding_23"] = Instance.new("UIPadding", LMG2L["StickerScroll_21"])
LMG2L["StickerPadding_23"]["PaddingTop"] = UDim.new(0, 8)
LMG2L["StickerPadding_23"]["PaddingBottom"] = UDim.new(0, 8)
LMG2L["StickerPadding_23"]["PaddingLeft"] = UDim.new(0, 8)
LMG2L["StickerPadding_23"]["PaddingRight"] = UDim.new(0, 8)

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
LMG2L["TextLabel_18"]["Size"] = UDim2.new(0, 126, 0, 36)
LMG2L["TextLabel_18"]["Text"] = "RBX Chat"
LMG2L["TextLabel_18"]["Position"] = UDim2.new(0, 12, 0, 0)

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
LMG2L["StickerButton_1f"]["Position"] = UDim2.new(0, 340, 0, 210)

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

local Stickers_File = "https://github.com/AdmBrookhavenScripts/Stickers/raw/refs/heads/main/StickersList.txt"

local ws
pcall(function()
	ws = WebSocket.connect("wss://rbxchat.rbxprojects.workers.dev")
end)

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
		LMG2L["Loading_17"].Rotation = LMG2L["Loading_17"].Rotation + 5
	end
end)

local function ReceiveMessage(username, userId, text, timeStr)
	local NewMessage = MessageTemplate:Clone()
	NewMessage.Username.Text = username
	NewMessage.Thumbnail.Image = "rbxthumb://type=AvatarHeadShot&id=" .. tostring(userId) .. "&w=420&h=420"
	NewMessage.Username.Time.Text = timeStr or os.date("%H:%M")

	local textOnly = text:gsub(":%d+:", "")
	textOnly = textOnly:gsub("^%s+", ""):gsub("%s+$", "")
	
	if textOnly == "" then
		NewMessage.MessageContent.Text.Visible = false
	else
		NewMessage.MessageContent.Text.Text = textOnly
	end

	local hasStickers = false
	local StickerContainer = Instance.new("Frame", NewMessage.MessageContent)
	StickerContainer.Name = "Stickers"
	StickerContainer.BackgroundTransparency = 1
	StickerContainer.Size = UDim2.new(1, 0, 0, 0)
	StickerContainer.AutomaticSize = Enum.AutomaticSize.Y
	StickerContainer.LayoutOrder = 2

	local UIGrid = Instance.new("UIGridLayout", StickerContainer)
	UIGrid.CellSize = UDim2.new(0, 60, 0, 60)
	UIGrid.CellPadding = UDim2.new(0, 5, 0, 5)
	UIGrid.SortOrder = Enum.SortOrder.LayoutOrder

	for id in text:gmatch(":(%d+):") do
		hasStickers = true
		local img = Instance.new("ImageLabel", StickerContainer)
		img.BackgroundTransparency = 1
		img.Image = "rbxassetid://" .. id
	end

	if not hasStickers then
		StickerContainer:Destroy()
	end

	NewMessage.Setclipboard.MouseButton1Click:Connect(function()
		if setclipboard then
			setclipboard(text)
		end
	end)

	local ScrollFrame = LMG2L["ScrollingFrame_4"]
	local MaxScroll = ScrollFrame.AbsoluteCanvasSize.Y - ScrollFrame.AbsoluteWindowSize.Y
	local IsNearBottom = ScrollFrame.CanvasPosition.Y >= (MaxScroll - 50)
	NewMessage.Parent = ScrollFrame
	if IsNearBottom or MaxScroll < 0 then
		task.spawn(function()
			task.wait()
			ScrollFrame.CanvasPosition = Vector2.new(0, ScrollFrame.AbsoluteCanvasSize.Y - ScrollFrame.AbsoluteWindowSize.Y)
		end)
	end
	
	task.delay(1000, function()
	  if NewMessage and NewMessage.Parent then
	    NewMessage:Destroy()
	  end
   end)
   
    local StickerCount = 0
    local NotifyText = text:gsub(":%d+:", function()
	StickerCount += 1
	return ""
    end)

    NotifyText = NotifyText:gsub("%s+", " "):gsub("^%s+", ""):gsub("%s+$", "")

    if StickerCount == 1 then
	NotifyText ..= " [Figurinha]"
    elseif StickerCount > 1 then
	NotifyText ..= " [Figurinhas x" .. StickerCount .. "]"
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

if ws then
	ws.OnMessage:Connect(function(msg)
	LMG2L["Loading_17"]["Visible"] = false
		local success, data = pcall(function() return HttpService:JSONDecode(msg) end)
		if success and data.username and data.text then
			ReceiveMessage(data.username, data.userId, data.text, data.time)
		end
	end)
end

LMG2L["SendMessage_1c"].MouseButton1Click:Connect(function()
	local Text = LMG2L["TextBox_19"].Text
	if Text:match("%S") or Text:match(":%d+:") then
		if ws then
			local data = {
				username = Player.DisplayName,
				userId = Player.UserId,
				text = Text,
				time = os.date("%H:%M")
			}
			LMG2L["Loading_17"]["Visible"] = true
			ws:Send(HttpService:JSONEncode(data))
		else
		    warn("error")
			ReceiveMessage(Player.DisplayName, Player.UserId, Text, os.date("%H:%M"))
		end
		LMG2L["TextBox_19"].Text = ""
	end
end)

return LMG2L["RBX_Chat_1"], require