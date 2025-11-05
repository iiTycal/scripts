local Player=game.Players.LocalPlayer
local Gui=Instance.new("ScreenGui")
local MainContainer=Instance.new("Frame")
local SideBar=Instance.new("Frame")
local MainContent=Instance.new("Frame")
local TabButtons=Instance.new("Frame")
local Title=Instance.new("TextLabel")
local CloseButton=Instance.new("ImageButton")
local MinimizeButton=Instance.new("ImageButton")
local AutoFarmTab=Instance.new("ScrollingFrame")
local StartButton=Instance.new("TextButton")
local StopButton=Instance.new("TextButton")
local StatusFrame=Instance.new("Frame")
local StatusLabel=Instance.new("TextLabel")
local StatusIndicator=Instance.new("Frame")
local MinimizedIcon=Instance.new("TextButton")
local MinimizedFrame=Instance.new("Frame")

Gui.Name="iiTycalScriptUI"
Gui.Parent=Player.PlayerGui
Gui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
Gui.ResetOnSpawn=false
Gui.IgnoreGuiInset=true

local CoreGui=game:GetService("CoreGui")
if CoreGui:FindFirstChild("iiTycalScriptUI") then
    CoreGui.iiTycalScriptUI:Destroy()
end
Gui.Parent=CoreGui

MainContainer.Name="MainContainer"
MainContainer.Parent=Gui
MainContainer.Size=UDim2.new(0,650,0,450)
MainContainer.Position=UDim2.new(0.5,-325,0.5,-225)
MainContainer.BackgroundColor3=Color3.fromRGB(10,10,15)
MainContainer.BorderSizePixel=0
MainContainer.ClipsDescendants=true
MainContainer.Active=true
MainContainer.Draggable=true

local MainCorner=Instance.new("UICorner")
MainCorner.CornerRadius=UDim.new(0,12)
MainCorner.Parent=MainContainer

local MainStroke=Instance.new("UIStroke")
MainStroke.Thickness=2
MainStroke.Color=Color3.fromRGB(40,40,50)
MainStroke.Parent=MainContainer

local BackgroundGradient=Instance.new("UIGradient")
BackgroundGradient.Color=ColorSequence.new({
    ColorSequenceKeypoint.new(0,Color3.fromRGB(10,10,15)),
    ColorSequenceKeypoint.new(1,Color3.fromRGB(20,20,25))
})
BackgroundGradient.Rotation=45
BackgroundGradient.Parent=MainContainer

SideBar.Name="SideBar"
SideBar.Parent=MainContainer
SideBar.Size=UDim2.new(0,200,1,0)
SideBar.BackgroundColor3=Color3.fromRGB(15,15,20)
SideBar.BorderSizePixel=0

local SideBarCorner=Instance.new("UICorner")
SideBarCorner.CornerRadius=UDim.new(0,12)
SideBarCorner.Parent=SideBar

Title.Name="Title"
Title.Parent=SideBar
Title.Size=UDim2.new(1,0,0,80)
Title.BackgroundTransparency=1
Title.Text="iiTycal\nBeta UI System"
Title.TextColor3=Color3.fromRGB(0,255,255)
Title.TextSize=18
Title.Font=Enum.Font.GothamBlack
Title.TextYAlignment=Enum.TextYAlignment.Center

local TitleDivider=Instance.new("Frame")
TitleDivider.Parent=SideBar
TitleDivider.Size=UDim2.new(1,-20,0,2)
TitleDivider.Position=UDim2.new(0,10,0,80)
TitleDivider.BackgroundColor3=Color3.fromRGB(0,255,255)
TitleDivider.BorderSizePixel=0

TabButtons.Name="TabButtons"
TabButtons.Parent=SideBar
TabButtons.Size=UDim2.new(1,0,1,-90)
TabButtons.Position=UDim2.new(0,0,0,90)
TabButtons.BackgroundTransparency=1

MainContent.Name="MainContent"
MainContent.Parent=MainContainer
MainContent.Size=UDim2.new(1,-200,1,0)
MainContent.Position=UDim2.new(0,200,0,0)
MainContent.BackgroundColor3=Color3.fromRGB(15,15,20)
MainContent.BorderSizePixel=0

local ContentCorner=Instance.new("UICorner")
ContentCorner.CornerRadius=UDim.new(0,12)
ContentCorner.Parent=MainContent

MinimizeButton.Name="MinimizeButton"
MinimizeButton.Parent=MainContainer
MinimizeButton.Size=UDim2.new(0,25,0,25)
MinimizeButton.Position=UDim2.new(1,-60,0,15)
MinimizeButton.BackgroundColor3=Color3.fromRGB(255,180,0)
MinimizeButton.Image="rbxassetid://3926305904"
MinimizeButton.ImageRectOffset=Vector2.new(884,284)
MinimizeButton.ImageRectSize=Vector2.new(36,36)

local MinimizeCorner=Instance.new("UICorner")
MinimizeCorner.CornerRadius=UDim.new(1,0)
MinimizeCorner.Parent=MinimizeButton

CloseButton.Name="CloseButton"
CloseButton.Parent=MainContainer
CloseButton.Size=UDim2.new(0,25,0,25)
CloseButton.Position=UDim2.new(1,-30,0,15)
CloseButton.BackgroundColor3=Color3.fromRGB(220,60,60)
CloseButton.Image="rbxassetid://3926305904"
CloseButton.ImageRectOffset=Vector2.new(924,284)
CloseButton.ImageRectSize=Vector2.new(36,36)

local CloseCorner=Instance.new("UICorner")
CloseCorner.CornerRadius=UDim.new(1,0)
CloseCorner.Parent=CloseButton

AutoFarmTab.Name="AutoFarmTab"
AutoFarmTab.Parent=MainContent
AutoFarmTab.Size=UDim2.new(1,-20,1,-20)
AutoFarmTab.Position=UDim2.new(0,10,0,10)
AutoFarmTab.BackgroundTransparency=1
AutoFarmTab.ScrollBarThickness=4
AutoFarmTab.ScrollBarImageColor3=Color3.fromRGB(0,255,255)
AutoFarmTab.CanvasSize=UDim2.new(0,0,0,500)

local UIListLayout=Instance.new("UIListLayout")
UIListLayout.Parent=AutoFarmTab
UIListLayout.HorizontalAlignment=Enum.HorizontalAlignment.Center
UIListLayout.SortOrder=Enum.SortOrder.LayoutOrder
UIListLayout.Padding=UDim.new(0,15)

local HeaderSection=Instance.new("Frame")
HeaderSection.Name="HeaderSection"
HeaderSection.Parent=AutoFarmTab
HeaderSection.Size=UDim2.new(1,0,0,100)
HeaderSection.BackgroundColor3=Color3.fromRGB(20,20,25)
HeaderSection.BorderSizePixel=0

local HeaderCorner=Instance.new("UICorner")
HeaderCorner.CornerRadius=UDim.new(0,10)
HeaderCorner.Parent=HeaderSection

local HeaderStroke=Instance.new("UIStroke")
HeaderStroke.Thickness=2
HeaderStroke.Color=Color3.fromRGB(0,255,255)
HeaderStroke.Parent=HeaderSection

local HeaderTitle=Instance.new("TextLabel")
HeaderTitle.Name="HeaderTitle"
HeaderTitle.Parent=HeaderSection
HeaderTitle.Size=UDim2.new(1,-20,0,40)
HeaderTitle.Position=UDim2.new(0,10,0,10)
HeaderTitle.BackgroundTransparency=1
HeaderTitle.Text="🌟 AUTO HATCH SYSTEM"
HeaderTitle.TextColor3=Color3.fromRGB(0,255,255)
HeaderTitle.TextSize=20
HeaderTitle.Font=Enum.Font.GothamBlack
HeaderTitle.TextXAlignment=Enum.TextXAlignment.Left

local HeaderDescription=Instance.new("TextLabel")
HeaderDescription.Name="HeaderDescription"
HeaderDescription.Parent=HeaderSection
HeaderDescription.Size=UDim2.new(1,-20,0,30)
HeaderDescription.Position=UDim2.new(0,10,0,55)
HeaderDescription.BackgroundTransparency=1
HeaderDescription.Text="Automatically hatch stars with one click"
HeaderDescription.TextColor3=Color3.fromRGB(180,180,180)
HeaderDescription.TextSize=14
HeaderDescription.Font=Enum.Font.Gotham
HeaderDescription.TextXAlignment=Enum.TextXAlignment.Left

local ControlSection=Instance.new("Frame")
ControlSection.Name="ControlSection"
ControlSection.Parent=AutoFarmTab
ControlSection.Size=UDim2.new(1,0,0,180)
ControlSection.BackgroundColor3=Color3.fromRGB(20,20,25)
ControlSection.BorderSizePixel=0

local ControlCorner=Instance.new("UICorner")
ControlCorner.CornerRadius=UDim.new(0,10)
ControlCorner.Parent=ControlSection

local ControlStroke=Instance.new("UIStroke")
ControlStroke.Thickness=1
ControlStroke.Color=Color3.fromRGB(40,40,50)
ControlStroke.Parent=ControlSection

local ControlTitle=Instance.new("TextLabel")
ControlTitle.Name="ControlTitle"
ControlTitle.Parent=ControlSection
ControlTitle.Size=UDim2.new(1,-20,0,30)
ControlTitle.Position=UDim2.new(0,10,0,10)
ControlTitle.BackgroundTransparency=1
ControlTitle.Text="CONTROLS"
ControlTitle.TextColor3=Color3.fromRGB(0,255,255)
ControlTitle.TextSize=16
ControlTitle.Font=Enum.Font.GothamBold
ControlTitle.TextXAlignment=Enum.TextXAlignment.Left

local ControlDivider=Instance.new("Frame")
ControlDivider.Parent=ControlSection
ControlDivider.Size=UDim2.new(1,-20,0,1)
ControlDivider.Position=UDim2.new(0,10,0,45)
ControlDivider.BackgroundColor3=Color3.fromRGB(40,40,50)
ControlDivider.BorderSizePixel=0

StartButton.Name="StartButton"
StartButton.Parent=ControlSection
StartButton.Size=UDim2.new(1,-20,0,50)
StartButton.Position=UDim2.new(0,10,0,60)
StartButton.BackgroundColor3=Color3.fromRGB(0,150,50)
StartButton.Text="🎯 START HATCHING"
StartButton.TextColor3=Color3.fromRGB(255,255,255)
StartButton.TextSize=16
StartButton.Font=Enum.Font.GothamBold
StartButton.AutoButtonColor=false

local StartCorner=Instance.new("UICorner")
StartCorner.CornerRadius=UDim.new(0,8)
StartCorner.Parent=StartButton

local StartStroke=Instance.new("UIStroke")
StartStroke.Thickness=2
StartStroke.Color=Color3.fromRGB(0,200,70)
StartStroke.Parent=StartButton

StopButton.Name="StopButton"
StopButton.Parent=ControlSection
StopButton.Size=UDim2.new(1,-20,0,50)
StopButton.Position=UDim2.new(0,10,0,120)
StopButton.BackgroundColor3=Color3.fromRGB(150,0,0)
StopButton.Text="⏹️ STOP HATCHING"
StopButton.TextColor3=Color3.fromRGB(255,255,255)
StopButton.TextSize=16
StopButton.Font=Enum.Font.GothamBold
StopButton.AutoButtonColor=false

local StopCorner=Instance.new("UICorner")
StopCorner.CornerRadius=UDim.new(0,8)
StopCorner.Parent=StopButton

local StopStroke=Instance.new("UIStroke")
StopStroke.Thickness=2
StopStroke.Color=Color3.fromRGB(200,0,0)
StopStroke.Parent=StopButton

StatusFrame.Name="StatusFrame"
StatusFrame.Parent=AutoFarmTab
StatusFrame.Size=UDim2.new(1,0,0,120)
StatusFrame.BackgroundColor3=Color3.fromRGB(20,20,25)
StatusFrame.BorderSizePixel=0

local StatusCorner=Instance.new("UICorner")
StatusCorner.CornerRadius=UDim.new(0,10)
StatusCorner.Parent=StatusFrame

local StatusStroke=Instance.new("UIStroke")
StatusStroke.Thickness=1
StatusStroke.Color=Color3.fromRGB(40,40,50)
StatusStroke.Parent=StatusFrame

local StatusTitle=Instance.new("TextLabel")
StatusTitle.Name="StatusTitle"
StatusTitle.Parent=StatusFrame
StatusTitle.Size=UDim2.new(1,-20,0,30)
StatusTitle.Position=UDim2.new(0,10,0,10)
StatusTitle.BackgroundTransparency=1
StatusTitle.Text="SYSTEM STATUS"
StatusTitle.TextColor3=Color3.fromRGB(0,255,255)
StatusTitle.TextSize=16
StatusTitle.Font=Enum.Font.GothamBold
StatusTitle.TextXAlignment=Enum.TextXAlignment.Left

local StatusDivider=Instance.new("Frame")
StatusDivider.Parent=StatusFrame
StatusDivider.Size=UDim2.new(1,-20,0,1)
StatusDivider.Position=UDim2.new(0,10,0,45)
StatusDivider.BackgroundColor3=Color3.fromRGB(40,40,50)
StatusDivider.BorderSizePixel=0

StatusLabel.Name="StatusLabel"
StatusLabel.Parent=StatusFrame
StatusLabel.Size=UDim2.new(1,-80,0,25)
StatusLabel.Position=UDim2.new(0,70,0,60)
StatusLabel.BackgroundTransparency=1
StatusLabel.Text="CURRENT STATUS:"
StatusLabel.TextColor3=Color3.fromRGB(200,200,200)
StatusLabel.TextSize=14
StatusLabel.Font=Enum.Font.Gotham
StatusLabel.TextXAlignment=Enum.TextXAlignment.Left

local StatusText=Instance.new("TextLabel")
StatusText.Name="StatusText"
StatusText.Parent=StatusFrame
StatusText.Size=UDim2.new(1,-80,0,30)
StatusText.Position=UDim2.new(0,70,0,85)
StatusText.BackgroundTransparency=1
StatusText.Text="SYSTEM READY"
StatusText.TextColor3=Color3.fromRGB(255,50,50)
StatusText.TextSize=18
StatusText.Font=Enum.Font.GothamBold
StatusText.TextXAlignment=Enum.TextXAlignment.Left

StatusIndicator.Name="StatusIndicator"
StatusIndicator.Parent=StatusFrame
StatusIndicator.Size=UDim2.new(0,40,0,40)
StatusIndicator.Position=UDim2.new(0,20,0,60)
StatusIndicator.BackgroundColor3=Color3.fromRGB(255,50,50)

local IndicatorCorner=Instance.new("UICorner")
IndicatorCorner.CornerRadius=UDim.new(1,0)
IndicatorCorner.Parent=StatusIndicator

local IndicatorStroke=Instance.new("UIStroke")
IndicatorStroke.Thickness=2
IndicatorStroke.Color=Color3.fromRGB(255,80,80)
IndicatorStroke.Parent=StatusIndicator

local function createTabButton(tabName,isActive)
    local TabButton=Instance.new("TextButton")
    TabButton.Name=tabName.."Tab"
    TabButton.Parent=TabButtons
    TabButton.Size=UDim2.new(1,-20,0,45)
    TabButton.Position=UDim2.new(0,10,0,#TabButtons:GetChildren()*55)
    TabButton.BackgroundColor3=isActive and Color3.fromRGB(0,100,100) or Color3.fromRGB(25,25,30)
    TabButton.Text=tabName
    TabButton.TextColor3=Color3.fromRGB(255,255,255)
    TabButton.TextSize=14
    TabButton.Font=Enum.Font.Gotham
    TabButton.AutoButtonColor=false
    
    local TabCorner=Instance.new("UICorner")
    TabCorner.CornerRadius=UDim.new(0,8)
    TabCorner.Parent=TabButton
    
    local TabStroke=Instance.new("UIStroke")
    TabStroke.Thickness=1
    TabStroke.Color=isActive and Color3.fromRGB(0,255,255) or Color3.fromRGB(50,50,60)
    TabStroke.Parent=TabButton
    
    return TabButton
end

local AutoFarmTabButton=createTabButton("Auto Hatch",true)

MinimizedFrame.Name="MinimizedFrame"
MinimizedFrame.Parent=Gui
MinimizedFrame.Size=UDim2.new(0,60,0,60)
MinimizedFrame.Position=UDim2.new(0.5,-30,0,20)
MinimizedFrame.BackgroundColor3=Color3.fromRGB(10,10,15)
MinimizedFrame.BorderSizePixel=0
MinimizedFrame.Visible=false
MinimizedFrame.Active=true
MinimizedFrame.Draggable=true

local MinimizedCorner=Instance.new("UICorner")
MinimizedCorner.CornerRadius=UDim.new(0,12)
MinimizedCorner.Parent=MinimizedFrame

local MinimizedStroke=Instance.new("UIStroke")
MinimizedStroke.Thickness=2
MinimizedStroke.Color=Color3.fromRGB(0,255,255)
MinimizedStroke.Parent=MinimizedFrame

MinimizedIcon.Name="MinimizedIcon"
MinimizedIcon.Parent=MinimizedFrame
MinimizedIcon.Size=UDim2.new(1,0,1,0)
MinimizedIcon.BackgroundColor3=Color3.fromRGB(15,15,20)
MinimizedIcon.Text="X"
MinimizedIcon.TextColor3=Color3.fromRGB(0,255,255)
MinimizedIcon.TextSize=18
MinimizedIcon.Font=Enum.Font.GothamBlack
MinimizedIcon.AutoButtonColor=false

local IconCorner=Instance.new("UICorner")
IconCorner.CornerRadius=UDim.new(0,12)
IconCorner.Parent=MinimizedIcon

_G.StarFarmExecuting=false

local function updateStatus(running)
    if running then
        StatusText.Text="HATCHING STARS..."
        StatusText.TextColor3=Color3.fromRGB(50,255,50)
        StatusIndicator.BackgroundColor3=Color3.fromRGB(50,255,50)
        IndicatorStroke.Color=Color3.fromRGB(70,255,70)
        StartButton.BackgroundColor3=Color3.fromRGB(0,100,40)
        StopButton.BackgroundColor3=Color3.fromRGB(150,0,0)
    else
        StatusText.Text="SYSTEM READY"
        StatusText.TextColor3=Color3.fromRGB(255,50,50)
        StatusIndicator.BackgroundColor3=Color3.fromRGB(255,50,50)
        IndicatorStroke.Color=Color3.fromRGB(255,80,80)
        StartButton.BackgroundColor3=Color3.fromRGB(0,150,50)
        StopButton.BackgroundColor3=Color3.fromRGB(100,0,0)
    end
end

local function minimizeWindow()
    MainContainer.Visible=false
    MinimizedFrame.Visible=true
end

local function maximizeWindow()
    MainContainer.Visible=true
    MinimizedFrame.Visible=false
end

local function setupButtonEffects(button)
    local originalColor=button.BackgroundColor3
    button.MouseEnter:Connect(function()
        game:GetService("TweenService"):Create(button,TweenInfo.new(0.2),{BackgroundColor3=originalColor:Lerp(Color3.new(1,1,1),0.1)}):Play()
    end)
    button.MouseLeave:Connect(function()
        game:GetService("TweenService"):Create(button,TweenInfo.new(0.2),{BackgroundColor3=originalColor}):Play()
    end)
    button.MouseButton1Down:Connect(function()
        game:GetService("TweenService"):Create(button,TweenInfo.new(0.1),{BackgroundColor3=originalColor:Lerp(Color3.new(0,0,0),0.2)}):Play()
    end)
    button.MouseButton1Up:Connect(function()
        game:GetService("TweenService"):Create(button,TweenInfo.new(0.1),{BackgroundColor3=originalColor:Lerp(Color3.new(1,1,1),0.1)}):Play()
    end)
end

StartButton.MouseButton1Click:Connect(function()
    if _G.StarFarmExecuting then return end
    _G.StarFarmExecuting=true
    updateStatus(true)
    print("START HATCHING")
    while _G.StarFarmExecuting do
        task.wait()
        local args={"General","Star","Open"}
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.Bridge:FireServer(unpack(args))
        end)
    end
end)

StopButton.MouseButton1Click:Connect(function()
    _G.StarFarmExecuting=false
    updateStatus(false)
    print("STOP HATCHING")
end)

MinimizeButton.MouseButton1Click:Connect(function()
    minimizeWindow()
end)

MinimizedIcon.MouseButton1Click:Connect(function()
    maximizeWindow()
end)

CloseButton.MouseButton1Click:Connect(function()
    Gui:Destroy()
end)

setupButtonEffects(StartButton)
setupButtonEffects(StopButton)
setupButtonEffects(MinimizedIcon)
setupButtonEffects(AutoFarmTabButton)

updateStatus(false)

print("🚀 iiTycal Beta UI System Loaded!")
