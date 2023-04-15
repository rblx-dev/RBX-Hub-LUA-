-- Define the RBX Hub application
local RBXHub = {}

-- Initialize the application
function RBXHub:init()
    print("Welcome to RBX Hub!")
end

-- Run the application
function RBXHub:run()
    while true do
        -- Get the player and their UserId
local player = game.Players.LocalPlayer
local userId = player.UserId

-- Define the website URL
local websiteUrl = "https://example.com/profiles/" .. userId

-- Create a text label to display the website URL
local websiteLabel = Instance.new("TextLabel")
websiteLabel.Text = websiteUrl
websiteLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
websiteLabel.Parent = game.Workspace

-- Define a function to open the website URL in the user's browser
local function openWebsite()
    if syn then
        syn.open_url(websiteUrl)
    elseif game:GetService("HttpService"):JSONEncode({}) == "{}" then
        game:GetService("RunService"):OpenBrowserWindow(websiteUrl)
    else
        -- Unsupported platform
        print("Unsupported platform")
    end
end

-- Listen for user input to open the website URL
websiteLabel.MouseButton1Click:Connect(openWebsite)

    end
end

-- Call the init and run methods to start the application
RBXHub:init()
RBXHub:run()
