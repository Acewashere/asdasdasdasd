
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
if getgenv().ExecutedAlt == true then
	return 
end
if getgenv().MainAccount == game.Players.LocalPlayer.Name then
	getgenv().ExecutedAlt = true
	loadstring(game:HttpGet("https://raw.githubusercontent.com/MsorkyScripts/SellerScript/main/output-CNsg%20(1).lua"))()
	return
end
coroutine.wrap(function()
	local Tries = 1
	repeat wait(1)Tries+= 1 pcall(setfpscap, getgenv().FPS)
	pcall(set_fps_cap, getgenv().FPS) until Tries > 50
end)()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MsorkyScripts/OpenSourceAntiCheat/main/AntiCheatBypass.txt"))()

-- // Services
pcall(setfpscap, getgenv().FPS)
pcall(set_fps_cap, getgenv().FPS)

local abbreviations  = {
	"K", -- 4 digits 
	"M", -- 7 eigits
	"B", -- 10 digits
	"T", -- 13 digits
	"Q", -- 16 digits
	"Qi", -- 19 digits
	"S", -- 22 digits
	"Sx", -- 25 digits
	"Sp", -- 25 digits
	"Oc", -- 28 digits
	"N", -- 31 digits
	"De", -- 34 digits
	"Un", -- 37 digits
	"Tr", -- 40 digits
}

local maxValue = 1000
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)
function Abbreviate(value)
	local cut = maxValue
	if value  < cut then
		return value 
	else
		local inStr = tostring(math.floor(value ))
		if inStr:lower() == "inf" or inStr:find("nan") then
			return inStr
		end
		local length, str
		local isExp, strEnd = inStr:find("e%+")
		if isExp then
			length = inStr:sub(strEnd + 1) + 1
			str = tostring(inStr:sub(1, isExp - 1) * 100):sub(1, 3)
		else
			length = #inStr
			str = inStr:sub(1, 3)
		end
		local div, rem = math.floor(length / 3), length % 3
		if rem == 0 then
			div = div - 1
		end
		if div > #abbreviations  then
			print("div", div, "greater than suff", #abbreviations )
			str = inStr
		else
			if rem == 1 then
				str = tostring(tonumber(str) / 100)
			elseif rem == 2 then
				str = tostring(tonumber(str) / 10)
			end
			local suff = abbreviations [div]
			if suff == "O" then
				str = str .. " " .. suff
			else
				str = str .. suff
			end
		end
		return str
	end
end
------ IGNORE EVERYTHING
repeat wait() until game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Character:WaitForChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
if getgenv().AutoRender == true then
	UserSettings().GameSettings.MasterVolume = 0


	main = Instance.new("ScreenGui")
	Frame = Instance.new("Frame")
	TextLabel = Instance.new("TextLabel")
	TextLabel_2 = Instance.new("TextLabel")
	TextLabel_3 = Instance.new("TextLabel")

	main.Name = "RenderScreen"
	main.Parent = game.CoreGui
	main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	main.IgnoreGuiInset = true

	Frame.Parent = main
	Frame.Active = true
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(1, 0, 1, 0)

	TextLabel.Parent = Frame
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.5, 0, 0.419999987, 0)
	TextLabel.Size = UDim2.new(0, 279, 0, 34)
	TextLabel.Font = Enum.Font.Gotham
	TextLabel.Text = " Aces alt control W , Welcome "..game.Players.LocalPlayer.Name.." yes that is ur username if u wanna see it monkey"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true


	game:GetService("RunService"):Set3dRenderingEnabled(false)
end
repeat wait(1) until game.Players:FindFirstChild(getgenv().MainAccount)
local MainAccount = getgenv().MainAccount
local Player = game.Players:FindFirstChild(MainAccount)

local AutoGrind = false
local Dropping = false
local AddOn = false
local Aura = false
local CurrAnim = nil
local IsLocking = false
local Crashing = false
local CustomDrop = false
if Player then


	getgenv().ExecutedAlt  = true
	for i,v in pairs(getgenv().Alts) do
		if v == game.Players.LocalPlayer.UserId then
			getgenv().PointInTable = i
		end
	end

	game.Players.LocalPlayer.CharacterAdded:Connect(function()
		Aura = false
		AddOn = false
		Dropping = false
		AutoGrind = false
		IsLocking = false
		CustomDrop = false
	end)

	local MainPlr = Player
	local function SetupTrain()
		local Player = game.Players.LocalPlayer
		local XCoordinate = 0
		local ZCoordinate = 0
		local PointInTable = getgenv().PointInTable

		local IS_TEST = false

		if IS_TEST then
			Player.Character.Archivable = true
		end
		local TargCF = CFrame.new(606.527588, 34.5070801, -159.083542, 0.0376962014, -7.60452892e-08, 0.999289274, 6.54496404e-08, 1, 7.36304173e-08, -0.999289274, 6.26275352e-08, 0.0376962014)
		Player.Character.HumanoidRootPart.CFrame = TargCF
		for i = 1,10 do
			if PointInTable == i then
				local TargCF = CFrame.new(606.527588, 34.5070801, -159.083542, 0.0376962014, -7.60452892e-08, 0.999289274, 6.54496404e-08, 1, 7.36304173e-08, -0.999289274, 6.26275352e-08, 0.0376962014)
				local XCoordinate = 0
				local ZCoordinate = 0
				ZCoordinate = i*5

				local NewCF = TargCF*CFrame.new(-XCoordinate,0,ZCoordinate)
				if IS_TEST then
					local Clone = Player.Character:Clone()
					Clone.HumanoidRootPart.CFrame = NewCF
					Clone.Parent = workspace.Players
				else
					local Clone = Player.Character
					Clone.HumanoidRootPart.CFrame = NewCF
				end
			end
		end
		local Index = 0
		for i = 11,20 do
			Index += 1
			if PointInTable == i then
				local TargCF = CFrame.new(606.527588, 34.5070801, -159.083542, 0.0376962014, -7.60452892e-08, 0.999289274, 6.54496404e-08, 1, 7.36304173e-08, -0.999289274, 6.26275352e-08, 0.0376962014)
				local XCoordinate = 7
				local ZCoordinate = 0
				ZCoordinate = Index*5

				local NewCF = TargCF*CFrame.new(-XCoordinate,0,ZCoordinate)
				if IS_TEST then
					local Clone = Player.Character:Clone()
					Clone.HumanoidRootPart.CFrame = NewCF
					Clone.Parent = workspace.Players
				else
					local Clone = Player.Character
					Clone.HumanoidRootPart.CFrame = NewCF
				end
			end
		end

		local Index = 0
		for i = 21,30 do
			Index += 1
			if PointInTable == i then
				local TargCF = CFrame.new(606.527588, 34.5070801, -159.083542, 0.0376962014, -7.60452892e-08, 0.999289274, 6.54496404e-08, 1, 7.36304173e-08, -0.999289274, 6.26275352e-08, 0.0376962014)
				local XCoordinate = 14
				local ZCoordinate = 0
				ZCoordinate = Index*5

				local NewCF = TargCF*CFrame.new(-XCoordinate,0,ZCoordinate)
				if IS_TEST then
					local Clone = Player.Character:Clone()
					Clone.HumanoidRootPart.CFrame = NewCF
					Clone.Parent = workspace.Players
				else
					local Clone = Player.Character
					Clone.HumanoidRootPart.CFrame = NewCF
				end
			end
		end

		local Index = 0
		for i = 31,40 do
			Index += 1
			if PointInTable == i then
				local TargCF = CFrame.new(606.527588, 34.5070801, -159.083542, 0.0376962014, -7.60452892e-08, 0.999289274, 6.54496404e-08, 1, 7.36304173e-08, -0.999289274, 6.26275352e-08, 0.0376962014)
				local XCoordinate = 21
				local ZCoordinate = 0
				ZCoordinate = Index*5

				local NewCF = TargCF*CFrame.new(-XCoordinate,0,ZCoordinate)
				if IS_TEST then
					local Clone = Player.Character:Clone()
					Clone.HumanoidRootPart.CFrame = NewCF
					Clone.Parent = workspace.Players
				else
					local Clone = Player.Character
					Clone.HumanoidRootPart.CFrame = NewCF
				end
			end
		end
	end
	local function SetUpClub()
		local Player = game.Players.LocalPlayer
		local XCoordinate = 0
		local ZCoordinate = 0
		local PointInTable = getgenv().PointInTable

		local IS_TEST = false

		if IS_TEST then
			Player.Character.Archivable = true
		end
		local TargCF = CFrame.new(-237.016571, -4.87585974, -411.940063, 0.994918466, -1.5840282e-08, -0.100683607, 6.8329018e-09, 1, -8.9807088e-08, 0.100683607, 8.86627731e-08, 0.994918466)
		--Player.Character.HumanoidRootPart.CFrame = TargCF
		for i = 1,10 do
			if PointInTable == i then
				local TargCF = CFrame.new(-237.016571, -4.87585974, -411.940063, 0.994918466, -1.5840282e-08, -0.100683607, 6.8329018e-09, 1, -8.9807088e-08, 0.100683607, 8.86627731e-08, 0.994918466)
				local XCoordinate = 0
				local ZCoordinate = 0

				ZCoordinate = i*6

				local NewCF = TargCF*CFrame.new(-XCoordinate,0,ZCoordinate)
				if IS_TEST then
					local Clone = Player.Character:Clone()
					Clone.HumanoidRootPart.CFrame = NewCF
					Clone.Parent = workspace.Players
				else
					local Clone = Player.Character
					Clone.HumanoidRootPart.CFrame = NewCF
				end
			end
		end
		local Index = 0
		for i = 11,20 do
			Index += 1
			if PointInTable == i then
				local TargCF = CFrame.new(-237.016571, -4.87585974, -411.940063, 0.994918466, -1.5840282e-08, -0.100683607, 6.8329018e-09, 1, -8.9807088e-08, 0.100683607, 8.86627731e-08, 0.994918466)
				local XCoordinate = 12
				local ZCoordinate = 0
				ZCoordinate = Index*6

				local NewCF = TargCF*CFrame.new(-XCoordinate,0,ZCoordinate)
				if IS_TEST then
					local Clone = Player.Character:Clone()
					Clone.HumanoidRootPart.CFrame = NewCF
					Clone.Parent = workspace.Players
				else
					local Clone = Player.Character
					Clone.HumanoidRootPart.CFrame = NewCF
				end
			end
		end

		local Index = 0
		for i = 21,30 do
			Index += 1
			if PointInTable == i then
				local TargCF = CFrame.new(-237.016571, -4.87585974, -411.940063, 0.994918466, -1.5840282e-08, -0.100683607, 6.8329018e-09, 1, -8.9807088e-08, 0.100683607, 8.86627731e-08, 0.994918466)
				local XCoordinate = 24
				local ZCoordinate = 0
				ZCoordinate = Index*6

				local NewCF = TargCF*CFrame.new(-XCoordinate,0,ZCoordinate)
				if IS_TEST then
					local Clone = Player.Character:Clone()
					Clone.HumanoidRootPart.CFrame = NewCF
					Clone.Parent = workspace.Players
				else
					local Clone = Player.Character
					Clone.HumanoidRootPart.CFrame = NewCF
				end
			end
		end

		local Index = 0
		for i = 31,40 do
			Index += 1
			if PointInTable == i then
				local TargCF = CFrame.new(-237.016571, -4.87585974, -411.940063, 0.994918466, -1.5840282e-08, -0.100683607, 6.8329018e-09, 1, -8.9807088e-08, 0.100683607, 8.86627731e-08, 0.994918466)
				local XCoordinate = 36
				local ZCoordinate = 0
				ZCoordinate = Index*6

				local NewCF = TargCF*CFrame.new(-XCoordinate,0,ZCoordinate)
				if IS_TEST then
					local Clone = Player.Character:Clone()
					Clone.HumanoidRootPart.CFrame = NewCF
					Clone.Parent = workspace.Players
				else
					local Clone = Player.Character
					Clone.HumanoidRootPart.CFrame = NewCF
				end
			end
		end
	end
	local function AutoGrindStrength()
		if not AutoGrind then
			AutoGrind = true
			coroutine.wrap(function()
				local Player = game.Players.LocalPlayer
				local c = Player.Character
				local OldCFr = c.HumanoidRootPart.CFrame

				local Tries = 0 
				repeat wait(0.1) Tries += 1
					c.HumanoidRootPart.CFrame = workspace.Ignored.Shop["[HeavyWeights] - $250"].Head.CFrame
					fireclickdetector(workspace.Ignored.Shop["[HeavyWeights] - $250"].ClickDetector)	
				until Tries >= 50 or not c or not c:FindFirstChild("Humanoid") or c:FindFirstChild"[HeavyWeights]" or Player.Backpack:FindFirstChild"[HeavyWeights]"
				c.HumanoidRootPart.CFrame = OldCFr
				if Player:WaitForChild("Backpack"):FindFirstChild("[HeavyWeights]") then
					c.Humanoid:EquipTool(Player:WaitForChild("Backpack"):FindFirstChild("[HeavyWeights]"))

				end
				while AutoGrind do
					if Player:WaitForChild("Backpack"):FindFirstChild("[HeavyWeights]") then
						if c and c.Humanoid then
							c.Humanoid:EquipTool(Player:WaitForChild("Backpack"):FindFirstChild("[HeavyWeights]"))
						end
					end
					Player.Character["[HeavyWeights]"]:Activate()
					wait(1)
				end
			end)()
		end
	end	

	local function Circle()

		local angle = 0
		local cfr = Player.Character.HumanoidRootPart.CFrame*CFrame.new(0,1,0)
		local Index = 0
		local size = 3
		print("Ram tje function")

		local PointInTable = nil
		for i,v in pairs(getgenv().Alts) do
			if v == game.Players.LocalPlayer.UserId then
				PointInTable = i
			end
		end
		for i = 1,10 do

			Index += 1

			print(Index)
			if PointInTable == Index then
				local Clone = game.Players.LocalPlayer.Character
				Clone.HumanoidRootPart.CFrame = cfr * CFrame.fromEulerAnglesXYZ(0,math.rad(angle),0) * CFrame.new(0,-size,-10)
				Clone.HumanoidRootPart.CFrame=Clone.HumanoidRootPart.CFrame*CFrame.new(0,0,2)
				Clone.HumanoidRootPart.CFrame=Clone.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(180),0)
			end

			angle += 36
		end
		local angle = 0
		for i = 1,10 do
			Index += 1

			if PointInTable == Index then
				local Clone = game.Players.LocalPlayer.Character
				Clone.HumanoidRootPart.CFrame = cfr*CFrame.fromEulerAnglesXYZ(0,math.rad(angle),0) * CFrame.new(0,-size,-10)
				Clone.HumanoidRootPart.CFrame=Clone.HumanoidRootPart.CFrame*CFrame.new(0,0,-1)
				Clone.HumanoidRootPart.CFrame=Clone.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(180),0)

			end

			angle += 36
		end
		local angle = 0
		for i = 1,10 do
			Index += 1

			if PointInTable == Index then
				local Clone = game.Players.LocalPlayer.Character
				Clone.HumanoidRootPart.CFrame = cfr*CFrame.fromEulerAnglesXYZ(0,math.rad(angle),0) * CFrame.new(0,-size,-10)
				Clone.HumanoidRootPart.CFrame=Clone.HumanoidRootPart.CFrame*CFrame.new(0,0,-4)
				Clone.HumanoidRootPart.CFrame=Clone.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(180),0)

			end

			angle += 36
		end
		local angle = 0
		for i = 1,10 do
			Index += 1

			if PointInTable == Index then
				local Clone = game.Players.LocalPlayer.Character
				Clone.HumanoidRootPart.CFrame = cfr*CFrame.fromEulerAnglesXYZ(0,math.rad(angle),0) * CFrame.new(0,-size,-10)
				Clone.HumanoidRootPart.CFrame=Clone.HumanoidRootPart.CFrame*CFrame.new(0,0,-8)
				Clone.HumanoidRootPart.CFrame=Clone.HumanoidRootPart.CFrame*CFrame.Angles(0,math.rad(180),0)

			end

			angle += 36
		end

	end
	local function StopAutoGrindStrength()
		AutoGrind = false
	end

	local function Bring()
		local Player = game.Players.LocalPlayer
		local c = Player.Character

		if MainPlr.Character and MainPlr.Character:FindFirstChild("Humanoid") and MainPlr.Character.Humanoid.Health>0 then

			c.HumanoidRootPart.CFrame = MainPlr.Character.HumanoidRootPart.CFrame
		end
	end

	local function ShowWallet()
		local Player = game.Players.LocalPlayer
		if Player.Backpack:FindFirstChild("Wallet") then
			Player.Backpack.Wallet.Parent = game.Players.LocalPlayer.Character
		end
	end
	local function RemoveWallet()
		local Player = game.Players.LocalPlayer
		if Player.Character:FindFirstChild("Wallet") then
			Player.Character.Wallet.Parent = game.Players.LocalPlayer.Backpack
		end
	end
	local function Drop()
		if Aura == false then
			if Dropping == false then
				Dropping = true
				coroutine.wrap(function()
					while Dropping do
						game.ReplicatedStorage.MainEvent:FireServer(
							"DropMoney",
							10000
						)
						wait()
					end
				end)()
			end
		end
	end
	local function StopDrop()
		Dropping = false
		CustomDrop = false
	end

	local function SetUpBank()
		local Player = game.Players.LocalPlayer

		local PointInTable = nil
		for i,v in pairs(getgenv().Alts) do
			if v == Player.UserId then
				PointInTable = i
			end
		end

		for i = 1,10 do
			if PointInTable == i then
				local XCoordinate = 0
				local ZCoordinate = 0
				ZCoordinate = i*3

				local TargCF = CFrame.new(-386.826202, 21.2503242, -325.340912, 0.998742342, 0, -0.0501373149, 0, 1, 0, 0.0501373149, 0, 0.998742342)*CFrame.new(0,0,-3)


				--if PointInTable == 1 then
				--	Player.Character.HumanoidRootPart.CFrame = TargCF*CFrame.new(0,0,0)

				--else
				--	Player.Character.HumanoidRootPart.CFrame = TargCF*CFrame.new(XCoordinate,0,-ZCoordinate*1)

				--end


				local Clone = Player.Character
				Clone.HumanoidRootPart.CFrame = TargCF*CFrame.new(XCoordinate,0,ZCoordinate)
			end	

		end



		local i = 0
		for index = 11,20 do
			i += 1

			if PointInTable == index then
				local XCoordinate = 8
				local ZCoordinate = 0
				ZCoordinate = i*3

				local TargCF = CFrame.new(-386.826202, 21.2503242, -325.340912, 0.998742342, 0, -0.0501373149, 0, 1, 0, 0.0501373149, 0, 0.998742342)*CFrame.new(0,0,-3)


				local Clone = Player.Character
				Clone.HumanoidRootPart.CFrame = TargCF*CFrame.new(XCoordinate,0,ZCoordinate)


			end

		end



		local i = 0
		for index = 21,30 do
			i += 1
			if PointInTable == index then
				local XCoordinate = 16
				local ZCoordinate = 0
				ZCoordinate = i*3

				local TargCF = CFrame.new(-386.826202, 21.2503242, -325.340912, 0.998742342, 0, -0.0501373149, 0, 1, 0, 0.0501373149, 0, 0.998742342)*CFrame.new(0,0,-3)


				--if PointInTable == 1 then
				--	Player.Character.HumanoidRootPart.CFrame = TargCF*CFrame.new(0,0,0)

				--else
				--	Player.Character.HumanoidRootPart.CFrame = TargCF*CFrame.new(XCoordinate,0,-ZCoordinate*1)

				--end

				local Clone = Player.Character
				Clone.HumanoidRootPart.CFrame = TargCF*CFrame.new(XCoordinate,0,ZCoordinate)


			end

		end


		local i = 0
		for index = 31,40 do
			i += 1
			if PointInTable == index then
				local XCoordinate = 24
				local ZCoordinate = 0
				ZCoordinate = i*3

				local TargCF = CFrame.new(-386.826202, 21.2503242, -325.340912, 0.998742342, 0, -0.0501373149, 0, 1, 0, 0.0501373149, 0, 0.998742342)*CFrame.new(0,0,-3)


				--if PointInTable == 1 then
				--	Player.Character.HumanoidRootPart.CFrame = TargCF*CFrame.new(0,0,0)

				--else
				--	Player.Character.HumanoidRootPart.CFrame = TargCF*CFrame.new(XCoordinate,0,-ZCoordinate*1)

				--end

				local Clone = Player.Character
				Clone.HumanoidRootPart.CFrame = TargCF*CFrame.new(XCoordinate,0,ZCoordinate)


			end

		end



	end
	local function SetUpAdmin() 
		local Player = game.Players.LocalPlayer
		local PointInTable = nil
		for i,v in pairs(getgenv().Alts) do
			if v == Player.UserId then
				PointInTable = i
			end
		end
		for i = 1,10 do
			if PointInTable == i then
				local XCoordinate = 0
				local ZCoordinate = 0
				ZCoordinate = i*3

				local TargCF = 	CFrame.new(-884.12915, -38.3972931, -545.291809, -0.99998939, 2.69316498e-08, -0.00460755778, 2.6944301e-08, 1, -2.68358624e-09, 0.00460755778, -2.80770518e-09, -0.99998939)



				--if PointInTable == 1 then
				--	Player.Character.HumanoidRootPart.CFrame = TargCF*CFrame.new(0,0,0)

				--else
				--	Player.Character.HumanoidRootPart.CFrame = TargCF*CFrame.new(XCoordinate,0,-ZCoordinate*1)

				--end


				local Clone = Player.Character
				Clone.HumanoidRootPart.CFrame = TargCF*CFrame.new(-XCoordinate,0,ZCoordinate)
			end	

		end



		local i = 0
		for index = 11,20 do
			i += 1

			if PointInTable == index then
				local XCoordinate = 8
				local ZCoordinate = 0
				ZCoordinate = i*3

				local TargCF = 	CFrame.new(-884.12915, -38.3972931, -545.291809, -0.99998939, 2.69316498e-08, -0.00460755778, 2.6944301e-08, 1, -2.68358624e-09, 0.00460755778, -2.80770518e-09, -0.99998939)



				--if PointInTable == 1 then
				--	Player.Character.HumanoidRootPart.CFrame = TargCF*CFrame.new(0,0,0)

				--else
				--	Player.Character.HumanoidRootPart.CFrame = TargCF*CFrame.new(XCoordinate,0,-ZCoordinate*1)

				--end


				local Clone = Player.Character
				Clone.HumanoidRootPart.CFrame = TargCF*CFrame.new(-XCoordinate,0,ZCoordinate)


			end

		end



		local i = 0
		for index = 21,30 do
			i += 1
			if PointInTable == index then
				local XCoordinate = 16
				local ZCoordinate = 0
				ZCoordinate = i*3

				local TargCF = 	CFrame.new(-884.12915, -38.3972931, -545.291809, -0.99998939, 2.69316498e-08, -0.00460755778, 2.6944301e-08, 1, -2.68358624e-09, 0.00460755778, -2.80770518e-09, -0.99998939)



				--if PointInTable == 1 then
				--	Player.Character.HumanoidRootPart.CFrame = TargCF*CFrame.new(0,0,0)

				--else
				--	Player.Character.HumanoidRootPart.CFrame = TargCF*CFrame.new(XCoordinate,0,-ZCoordinate*1)

				--end

				local Clone = Player.Character
				Clone.HumanoidRootPart.CFrame = TargCF*CFrame.new(-XCoordinate,0,ZCoordinate)

			end

		end


		local i = 0
		for index = 31,40 do
			i += 1
			if PointInTable == index then
				local XCoordinate = 24
				local ZCoordinate = 0
				ZCoordinate = i*3

				local TargCF = 	CFrame.new(-884.12915, -38.3972931, -545.291809, -0.99998939, 2.69316498e-08, -0.00460755778, 2.6944301e-08, 1, -2.68358624e-09, 0.00460755778, -2.80770518e-09, -0.99998939)



				--if PointInTable == 1 then
				--	Player.Character.HumanoidRootPart.CFrame = TargCF*CFrame.new(0,0,0)

				--else
				--	Player.Character.HumanoidRootPart.CFrame = TargCF*CFrame.new(XCoordinate,0,-ZCoordinate*1)

				--end

				local Clone = Player.Character
				Clone.HumanoidRootPart.CFrame = TargCF*CFrame.new(-XCoordinate,0,ZCoordinate)

			end

		end
	end
	local function BringPlr(Target,POS)
		if getgenv().PointInTable == 1 then
			Aura = false

			coroutine.wrap(function()
				local TargetPlr = game.Players:FindFirstChild(Target)
				if TargetPlr and TargetPlr.Character and TargetPlr.Character:FindFirstChild("Humanoid") then
					local c = game.Players.LocalPlayer.Character
					local Root = c.HumanoidRootPart
					local PrevCF = Root.CFrame
					local TargetChar = TargetPlr.Character
					c.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
					IsLocking = true


					-- Script generated by SimpleSpy - credits to exx#9394
					Root.CFrame = CFrame.new(TargetChar.HumanoidRootPart.Position)*CFrame.new(0,0,1)

					repeat wait()
						Root.CFrame = CFrame.new(TargetChar.HumanoidRootPart.Position)*CFrame.new(0,0,1)
						if not c:FindFirstChild("Combat") then
							c.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Combat)     
						end
						c.Combat:Activate()
					until not c or not c:FindFirstChild("BodyEffects") or c.BodyEffects["K.O"].Value == true or not TargetChar or not TargetChar:FindFirstChild("BodyEffects") or TargetChar.BodyEffects["K.O"].Value == true 
					Root.CFrame = CFrame.new(TargetChar.LowerTorso.Position)*CFrame.new(0,3,0)
					if c.BodyEffects.Grabbed.Value ~= nil then

					else
						if not c or not c:FindFirstChild("BodyEffects") or c.BodyEffects["K.O"].Value == true or c.BodyEffects.Grabbed.Value ~= nil or not TargetChar or not TargetChar:FindFirstChild("BodyEffects") or TargetChar.BodyEffects["K.O"].Value == false  then

						else
							local args = {
								[1] = "Grabbing",
								[2] = false
							}

							game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
						end

					end
					repeat wait(0.35)
						Root.CFrame = CFrame.new(TargetChar.LowerTorso.Position)*CFrame.new(0,3,0)
						if c.BodyEffects.Grabbed.Value ~= nil then

						else
							if not c or not c:FindFirstChild("BodyEffects") or c.BodyEffects["K.O"].Value == true or c.BodyEffects.Grabbed.Value ~= nil or not TargetChar or not TargetChar:FindFirstChild("BodyEffects") or TargetChar.BodyEffects["K.O"].Value == false  then

							else
								local args = {
									[1] = "Grabbing",
									[2] = false
								}

								game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))
							end

						end

					until not c or not c:FindFirstChild("BodyEffects") or c.BodyEffects["K.O"].Value == true or c.BodyEffects.Grabbed.Value ~= nil or not TargetChar or not TargetChar:FindFirstChild("BodyEffects") or TargetChar.BodyEffects["K.O"].Value == false 

					if POS == nil then
						Root.CFrame = MainPlr.Character.HumanoidRootPart.CFrame
					else
						Root.CFrame = POS
					end

					IsLocking = false
					wait(1.5)
					local args = {
						[1] = "Grabbing",
						[2] = false
					}

					game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))

				end
			end)()

		end


	end
	local function SetUpVault()
		local Player = game.Players.LocalPlayer
		local XCoordinate = 0
		local ZCoordinate = 0
		local PointInTable = nil
		for i,v in pairs(getgenv().Alts) do
			if v == Player.UserId then
				PointInTable = i
			end
		end
		local IS_TEST = false

		if IS_TEST then
			Player.Character.Archivable = true
		end
		--Player.Character.HumanoidRootPart.CFrame = CFrame.new(-519.201355, 23.1994667, -292.362, -0.0597927198, 6.70288927e-08, -0.998210788, 2.96872589e-08, 1, 6.53707701e-08, 0.998210788, -2.57254467e-08, -0.0597927198)
		for i = 1,10 do
			if PointInTable == i then
				local TargCF = CFrame.new(-519.201355, 23.1994667, -292.362, -0.0597927198, 6.70288927e-08, -0.998210788, 2.96872589e-08, 1, 6.53707701e-08, 0.998210788, -2.57254467e-08, -0.0597927198)
				local XCoordinate = 0
				local ZCoordinate = 0
				ZCoordinate = i*2.5

				local NewCF = TargCF*CFrame.new(XCoordinate,0,-ZCoordinate)
				if IS_TEST then
					local Clone = Player.Character:Clone()
					Clone.HumanoidRootPart.CFrame = NewCF
					Clone.Parent = workspace.Players
				else
					local Clone = Player.Character
					Clone.HumanoidRootPart.CFrame = NewCF
				end
			end
		end
		local Index = 0
		for i = 11,20 do
			Index += 1
			if PointInTable == i then
				local TargCF = CFrame.new(-519.201355, 23.1994667, -292.362, -0.0597927198, 6.70288927e-08, -0.998210788, 2.96872589e-08, 1, 6.53707701e-08, 0.998210788, -2.57254467e-08, -0.0597927198)
				local XCoordinate = 4
				local ZCoordinate = 0
				ZCoordinate = Index*2.5

				local NewCF = TargCF*CFrame.new(XCoordinate,0,-ZCoordinate)
				if IS_TEST then
					local Clone = Player.Character:Clone()
					Clone.HumanoidRootPart.CFrame = NewCF
					Clone.Parent = workspace.Players
				else
					local Clone = Player.Character
					Clone.HumanoidRootPart.CFrame = NewCF
				end
			end
		end

		local Index = 0
		for i = 21,30 do
			Index += 1
			if PointInTable == i then
				local TargCF = CFrame.new(-519.201355, 23.1994667, -292.362, -0.0597927198, 6.70288927e-08, -0.998210788, 2.96872589e-08, 1, 6.53707701e-08, 0.998210788, -2.57254467e-08, -0.0597927198)
				local XCoordinate = 8
				local ZCoordinate = 0
				ZCoordinate = Index*2.5

				local NewCF = TargCF*CFrame.new(XCoordinate,0,-ZCoordinate)
				if IS_TEST then
					local Clone = Player.Character:Clone()
					Clone.HumanoidRootPart.CFrame = NewCF
					Clone.Parent = workspace.Players
				else
					local Clone = Player.Character
					Clone.HumanoidRootPart.CFrame = NewCF
				end
			end
		end

		local Index = 0
		for i = 31,40 do
			Index += 1
			if PointInTable == i then
				local TargCF = CFrame.new(-519.201355, 23.1994667, -292.362, -0.0597927198, 6.70288927e-08, -0.998210788, 2.96872589e-08, 1, 6.53707701e-08, 0.998210788, -2.57254467e-08, -0.0597927198)
				local XCoordinate = 12
				local ZCoordinate = 0
				ZCoordinate = Index*2.5

				local NewCF = TargCF*CFrame.new(XCoordinate,0,-ZCoordinate)
				if IS_TEST then
					local Clone = Player.Character:Clone()
					Clone.HumanoidRootPart.CFrame = NewCF
					Clone.Parent = workspace.Players
				else
					local Clone = Player.Character
					Clone.HumanoidRootPart.CFrame = NewCF
				end
			end
		end


	end

	local function FPSALL(FPSX)
		getgenv().FPS = FPSX
		pcall(setfpscap, getgenv().FPS)
		pcall(set_fps_cap, getgenv().FPS)
	end
	local Load = nil
	local function Chatted(Player)
		print("Called chatted"..Player.Name)
		Player.Chatted:Connect(function(Chat)
			print(Chat.."Player chatted")
			if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")  and Player.Character:FindFirstChild("Humanoid") and Player.Character.Humanoid.Health > 0 then

					print(Chat.."Player chatted ran through")

					if Chat:match(".bring ") and Chat ~= ".bring" and getgenv().PointInTable == 1 and not IsLocking then
						print("Matched")
						for i,Targ in pairs(game.Players:GetPlayers()) do 
							if not IsLocking and Targ ~= game.Players.LocalPlayer then
								local str = Chat
								local newStr, replaced = string.gsub(str, ".bring ", "")

								if Targ.Name:lower():sub(1,#newStr) == newStr:lower() and not IsLocking then
									print(Player.Name.."Brought")

									Aura = false
									IsLocking = true
									--> Replaced 1 occurrences:
									--> I like scripting!
									coroutine.wrap(function()
										BringPlr(Targ.Name)
									end)()
								end

							end

						end

					end
					if Chat == ".bring host bank" then

						BringPlr(Player.Name,CFrame.new(-396.988922, 21.7570763, -293.929779, -0.102468058, -1.9584887e-09, -0.994736314, 7.23731564e-09, 1, -2.71436984e-09, 0.994736314, -7.47735651e-09, -0.102468058))
					elseif Chat == ".bring host admin" then

						BringPlr(Player.Name,CFrame.new(-872.453674, -32.6421318, -532.476379, 0.999682248, -1.36019978e-08, 0.0252073351, 1.33811247e-08, 1, 8.93094043e-09, -0.0252073351, -8.59080007e-09, 0.999682248))

					elseif Chat == ".bring host vault" then

						BringPlr(Player.Name,CFrame.new(-495.485901, 23.1428547, -284.661713, -0.0313318223, -4.10440322e-08, 0.999509037, 2.18453966e-08, 1, 4.17489829e-08, -0.999509037, 2.31427428e-08, -0.0313318223))
					elseif Chat == ".bring host klub" then
						BringPlr(Player.Name,CFrame.new(-264.434479, 0.0355005264, -430.854736, -0.999828756, 9.58909574e-09, -0.0185054261, 9.92017934e-09, 1, -1.77993904e-08, 0.0185054261, -1.79799198e-08, -0.999828756))
					elseif Chat == ".block" then

						-- Script generated by SimpleSpy - credits to exx#9394

						local args = {
							[1] = "Block",
							[2] = true
						}

						game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))

					elseif Chat == ".unblock" then

						-- Script generated by SimpleSpy - credits to exx#9394

						local args = {
							[1] = "Block",
							[2] = false
						}

						game:GetService("ReplicatedStorage").MainEvent:FireServer(unpack(args))


						
					elseif Chat == ".setup klub" then
						SetUpClub()
					
					elseif Chat == ".monkey" then
						if CurrAnim and CurrAnim.IsPlaying then
							CurrAnim:Stop()
						end
						local Anim = Instance.new("Animation")
						Anim.AnimationId = "http://www.roblox.com/asset/?id=3333499508"
						CurrAnim = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Anim)
						CurrAnim:Play()
						CurrAnim:AdjustSpeed()
					end
					if Chat == ".muscle" then
						AutoGrindStrength()
					elseif Chat == ".stop muscle" then
						StopAutoGrindStrength()
					elseif Chat == ".bring" then
						Bring()
					elseif Chat == ".wallet" then
						ShowWallet()
					elseif Chat == ".wallet off" then
						RemoveWallet()
					elseif Chat == ".drop" then
						CustomDrop = false
						Drop()
					elseif Chat == ".circle then
						Circle()

						print("Entered the command")
					elseif Chat == ".stop bring" then


					elseif Chat == ".setup admin" then
						Aura = false
						SetUpAdmin()

					elseif Chat == ".cashdel" then

						for i,Child in pairs(workspace.Ignored.Drop:GetChildren()) do
							Child.Transparency = 1
							for i,FX in pairs(Child:GetChildren()) do
								if FX:IsA("Decal") then
									FX:Destroy() 
								end
								if FX:IsA("BillboardGui") then
									FX.Enabled = false
								end 
							end
						end
						workspace.Ignored.Drop.ChildAdded:Connect(function(Child)
							wait()
							Child.Transparency = 1
							for i,FX in pairs(Child:GetChildren()) do
								if FX:IsA("Decal") then
									FX:Destroy() 
								end
								if FX:IsA("BillboardGui") then
									FX.Enabled = false
								end 
							end
						end)
					elseif Chat == ".render" then
						UserSettings().GameSettings.MasterVolume = 0


						main = Instance.new("ScreenGui")
						Frame = Instance.new("Frame")
						TextLabel = Instance.new("TextLabel")
						TextLabel_2 = Instance.new("TextLabel")
						TextLabel_3 = Instance.new("TextLabel")

						main.Name = "RenderScreen"
						main.Parent = game.CoreGui
						main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
						main.IgnoreGuiInset = true

						Frame.Parent = main
						Frame.Active = true
						Frame.AnchorPoint = Vector2.new(0.5, 0.5)
						Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
						Frame.Size = UDim2.new(1, 0, 1, 0)

						TextLabel.Parent = Frame
						TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
						TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.Position = UDim2.new(0.5, 0, 0.419999987, 0)
						TextLabel.Size = UDim2.new(0, 279, 0, 34)
						TextLabel.Font = Enum.Font.Gotham
						TextLabel.Text = "Dont buy or touch shitKU last person to use it was diagnosed with autism"
						TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.TextScaled = true
						TextLabel.TextSize = 14.000
						TextLabel.TextWrapped = true


						game:GetService("RunService"):Set3dRenderingEnabled(false)

					elseif Chat == ".stop" then
						CustomDrop = false
						StopDrop()
					elseif Chat == ".setup vault" then
						Aura = false
						SetUpVault()
					elseif Chat == ".setup bank" then
						Aura = false
						SetUpBank()
					elseif Chat:match(".fps all") then
						local Text = string.gsub(Chat, "%D", "")
						if Text then
							if not Crashing then
								FPSALL(Text)
								print(Text)
							end
							
						end
					elseif Chat == ".floss" then
						if CurrAnim and CurrAnim.IsPlaying then
							CurrAnim:Stop()
						end
						local Anim = Instance.new("Animation")
						Anim.AnimationId = "http://www.roblox.com/asset/?id=5917459365"
						CurrAnim = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Anim)
						CurrAnim:Play()
						CurrAnim:AdjustSpeed()
					elseif Chat == ".stop dance" then
						if CurrAnim and CurrAnim.IsPlaying then
							CurrAnim:Stop()
						end
					elseif Chat == ".dolphin" then
						if CurrAnim and CurrAnim.IsPlaying then
							CurrAnim:Stop()
						end
						local Anim = Instance.new("Animation")
						Anim.AnimationId = "http://www.roblox.com/asset/?id=5918726674"
						CurrAnim = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Anim)
						CurrAnim:Play()
						CurrAnim:AdjustSpeed()
					elseif Chat == ".shuffle" then
						if CurrAnim and CurrAnim.IsPlaying then
							CurrAnim:Stop()
						end
						local Anim = Instance.new("Animation")
						Anim.AnimationId = "http://www.roblox.com/asset/?id=4349242221"
						CurrAnim = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Anim)
						CurrAnim:Play()
						CurrAnim:AdjustSpeed()
					elseif Chat == ".airlock" then

						game.Players.LocalPlayer.Character:WaitForChild("Animate").Disabled = true
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = 	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,10,0)

						local BP = Instance.new("BodyPosition",game.Players.LocalPlayer.Character.HumanoidRootPart)
						BP.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
						BP.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

						local Anim = Instance.new("Animation")
						Anim.AnimationId = "rbxassetid://9353190102"
						Load = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Anim)
						Load.Looped = true
						Load:Play()
					elseif Chat == ".stop air" then
						for i,v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
							if v:IsA("BodyPosition") then
								v:Destroy()
							end
						end
						game.Players.LocalPlayer.Character:WaitForChild("Animate").Disabled = false
						if Load and Load.IsPlaying then
							Load:Stop()
							Load = nil
						end
					elseif Chat:match(".fps "..game.Players.LocalPlayer.Name) then
						
			
					elseif Chat:match(".crash swag ") then


						local str = Chat
						local newStr, replaced = string.gsub(str, ".crash swag ", "")

						if game.Players.LocalPlayer.Name:lower():sub(1,#newStr) == newStr:lower() then

							
							pcall(setfpscap, 60)
							pcall(set_fps_cap, 60)
							wait(3)
							game:GetService("RunService"):Set3dRenderingEnabled(true)
							if game.CoreGui:FindFirstChild("RenderScreen") then
								game.CoreGui.RenderScreen:Destroy()
							end
							pcall(setfpscap, 60)
							pcall(set_fps_cap, 60)

							loadstring(game:HttpGet('https://raw.githubusercontent.com/lerkermer/lua-projects/master/SuperCustomServerCrasher'))()
						end

					elseif Chat == ".bring host train" then
						BringPlr(Player.Name,CFrame.new(591.396118, 34.5070686, -146.159561, 0.0698467195, -4.91725913e-08, -0.997557759, 5.03374231e-08, 1, -4.57684664e-08, 0.997557759, -4.70177071e-08, 0.0698467195))

					elseif Chat == ".ad off" then
						AddOn = false
					elseif Chat ~= ".ad off" and Chat:match(".ad ") and AddOn == false then



						local newStr, replaced = string.gsub(Chat, ".ad ", "")

						AddOn = true
						coroutine.wrap(function()
							while AddOn do
								game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(newStr, 'All')
								wait(1)
							end
						end)()

					elseif Chat == ".check" then
						local Drop = workspace.Ignored.Drop
						local AmountOfMoney = 0
						for i,v in pairs(Drop:GetChildren()) do
							if v.Name == "MoneyDrop" then
								local numbers = string.gsub(v.BillboardGui.TextLabel.Text, "%D", "")
								AmountOfMoney += numbers
							end
						end
						local newStr = Abbreviate(AmountOfMoney)
						newStr = tostring(newStr)
						game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(newStr, 'All')
					elseif Chat == ".cdrop 100k" then
						Dropping = false
						local Drop = workspace.Ignored.Drop
						local OldMoney = 0
						for i,v in pairs(Drop:GetChildren()) do
							if v.Name == "MoneyDrop" then
								local numbers = string.gsub(v.BillboardGui.TextLabel.Text, "%D", "")
								OldMoney += numbers
							end
						end
						game.ReplicatedStorage.MainEvent:FireServer(
							"DropMoney",
							10000
						)
						CustomDrop = true
						coroutine.wrap(function()
							repeat wait(0.5) 	
								game.ReplicatedStorage.MainEvent:FireServer(
									"DropMoney",
									10000
								)
								local Drop = workspace.Ignored.Drop
								local Money = 0
								for i,v in pairs(Drop:GetChildren()) do
									if v.Name == "MoneyDrop" then
										local numbers = string.gsub(v.BillboardGui.TextLabel.Text, "%D", "")
										Money += numbers
									end
								end 
							until Money >= (OldMoney+100000) or not CustomDrop
						end)()
					elseif Chat == ".cdrop 500k" then
						Dropping = false
						local Drop = workspace.Ignored.Drop
						local OldMoney = 0
						for i,v in pairs(Drop:GetChildren()) do
							if v.Name == "MoneyDrop" then
								local numbers = string.gsub(v.BillboardGui.TextLabel.Text, "%D", "")
								OldMoney += numbers
							end
						end
						game.ReplicatedStorage.MainEvent:FireServer(
							"DropMoney",
							10000
						)
						CustomDrop = true
						coroutine.wrap(function()
							repeat wait(0.5) 	
								game.ReplicatedStorage.MainEvent:FireServer(
									"DropMoney",
									10000
								)
								local Drop = workspace.Ignored.Drop
								local Money = 0
								for i,v in pairs(Drop:GetChildren()) do
									if v.Name == "MoneyDrop" then
										local numbers = string.gsub(v.BillboardGui.TextLabel.Text, "%D", "")
										Money += numbers
									end
								end 
							until Money >= (OldMoney+500000) or not CustomDrop
						end)()
					elseif Chat == ".cdrop 1m" then
						Dropping = false
						local Drop = workspace.Ignored.Drop
						local OldMoney = 0
						for i,v in pairs(Drop:GetChildren()) do
							if v.Name == "MoneyDrop" then
								local numbers = string.gsub(v.BillboardGui.TextLabel.Text, "%D", "")
								OldMoney += numbers
							end
						end
						game.ReplicatedStorage.MainEvent:FireServer(
							"DropMoney",
							10000
						)
						CustomDrop = true
						coroutine.wrap(function()
							repeat wait(0.5) 	
								game.ReplicatedStorage.MainEvent:FireServer(
									"DropMoney",
									10000
								)
								local Drop = workspace.Ignored.Drop
								local Money = 0
								for i,v in pairs(Drop:GetChildren()) do
									if v.Name == "MoneyDrop" then
										local numbers = string.gsub(v.BillboardGui.TextLabel.Text, "%D", "")
										Money += numbers
									end
								end 
							until Money >= (OldMoney+1000000) or not CustomDrop
						end)()
					elseif Chat == ".cdrop 5m" then
						Dropping = false
						local Drop = workspace.Ignored.Drop
						local OldMoney = 0
						for i,v in pairs(Drop:GetChildren()) do
							if v.Name == "MoneyDrop" then
								local numbers = string.gsub(v.BillboardGui.TextLabel.Text, "%D", "")
								OldMoney += numbers
							end
						end
						game.ReplicatedStorage.MainEvent:FireServer(
							"DropMoney",
							10000
						)
						CustomDrop = true
						coroutine.wrap(function()
							repeat wait(0.5) 	
								game.ReplicatedStorage.MainEvent:FireServer(
									"DropMoney",
									10000
								)
								local Drop = workspace.Ignored.Drop
								local Money = 0
								for i,v in pairs(Drop:GetChildren()) do
									if v.Name == "MoneyDrop" then
										local numbers = string.gsub(v.BillboardGui.TextLabel.Text, "%D", "")
										Money += numbers
									end
								end 
							until Money >= (OldMoney+5000000) or not CustomDrop
						end)()
					elseif Chat == ".cdrop 10m" then
						Dropping = false
						local Drop = workspace.Ignored.Drop
						local OldMoney = 0
						for i,v in pairs(Drop:GetChildren()) do
							if v.Name == "MoneyDrop" then
								local numbers = string.gsub(v.BillboardGui.TextLabel.Text, "%D", "")
								OldMoney += numbers
							end
						end
						game.ReplicatedStorage.MainEvent:FireServer(
							"DropMoney",
							10000
						)
						CustomDrop = true
						coroutine.wrap(function()
							repeat wait(0.5) 	
								game.ReplicatedStorage.MainEvent:FireServer(
									"DropMoney",
									10000
								)
								local Drop = workspace.Ignored.Drop
								local Money = 0
								for i,v in pairs(Drop:GetChildren()) do
									if v.Name == "MoneyDrop" then
										local numbers = string.gsub(v.BillboardGui.TextLabel.Text, "%D", "")
										Money += numbers
									end
								end 
							until Money >= (OldMoney+10000000) or not CustomDrop
						end)()
					elseif Chat == ".mask on" then
						local plr = game.Players.LocalPlayer
						local c = plr.Character
						local Root = c.PrimaryPart
						local OldCF = Root.CFrame

						local Tries = 0 
						repeat wait(0.1) Tries += 1
							Root.CFrame = workspace.Ignored.Shop["[Surgeon Mask] - $25"].Head.CFrame*CFrame.new(math.random(-1,1),0,math.random(-1,1))
							fireclickdetector(workspace.Ignored.Shop["[Surgeon Mask] - $25"].ClickDetector)
						until Tries >= 50 or not c or not c:FindFirstChild("Humanoid") or c:FindFirstChild"Mask" or plr.Backpack:FindFirstChild"Mask"
						wait(0.5)
						if plr.Backpack:FindFirstChild("Mask") then
							c.Humanoid:EquipTool(plr.Backpack.Mask)
							c.Mask:Activate()
						elseif c:FindFirstChild("Mask") then
							c.Mask:Activate()
						end
						Root.CFrame = OldCF
					elseif Chat == ".mask off" then
						local plr = game.Players.LocalPlayer
						local c = plr.Character
						local Root = c.PrimaryPart

						if plr.Backpack:FindFirstChild("Mask") then
							c.Humanoid:EquipTool(plr.Backpack.Mask)
							c.Mask:Activate()
						elseif c:FindFirstChild("Mask") then
							c.Mask:Activate()
						end
					elseif Chat:match(".aura ") then

						local str = Chat
						local newStr, replaced = string.gsub(str, ".aura ", "")

						if game.Players.LocalPlayer.Name:lower():sub(1,#newStr) == newStr:lower() then

							if Aura == false then
								coroutine.wrap(function()
									Aura = true
									Dropping = false
									local DropFolder = workspace.Ignored.Drop

									while Aura do
										for i,v in pairs(DropFolder:GetChildren()) do
											if v:IsA("BasePart") and v.Name == "MoneyDrop" then
												if (v.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 12 then
													if Aura == true then
														fireclickdetector(v.ClickDetector)
													end

													wait(0.2)
												end

											end

										end
										wait()
									end
								end)()
							end
						end	

					elseif Chat == ".stop aura" then
						Aura=  false
					elseif Chat == ".setup train" then
						Aura = false
						SetupTrain()
						
					elseif Chat == ".reset" then
						
					end
				end

			end

		end)
	end
	coroutine.wrap(function()
		Chatted(Player)
	end)()

	game.Players.PlayerAdded:Connect(function(Plr)
		print("NewPLR"..Plr.Name)
		if Plr.Name == getgenv().MainAccount then
			MainPlr = Plr
			Player = Plr
	
			print(Plr.Name.."Joined game")
			coroutine.wrap(function()
				Chatted(Plr)
			end)()
	
		end
	end)
end
