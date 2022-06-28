--[[

	Name: GameBetterifier9000
	Description: Makes games better
	Author: unexp

]]--

--[[ Variables ]]--
local evilImage = "http://www.roblox.com/asset/?id=7731527859"

--[[ Functions ]]--
local function AddEvilDecal(i, face)
	local evilDecal = Instance.new("Decal")
	evilDecal.Name = "EVILDECAL"
	evilDecal.Texture = evilImage
	evilDecal.Parent = i
	evilDecal.Face = face
end
local function AddDecalToAllFaces(i)
	AddEvilDecal(i, Enum.NormalId.Top)
	AddEvilDecal(i, Enum.NormalId.Bottom)
	AddEvilDecal(i, Enum.NormalId.Left)
	AddEvilDecal(i, Enum.NormalId.Right)
	AddEvilDecal(i, Enum.NormalId.Front)
	AddEvilDecal(i, Enum.NormalId.Back)
end

--[[ Begin script ]]--
for i, v in pairs(game.Lighting:GetChildren()) do
	if v:IsA("Sky") then
		v:Destroy()
	end
end
local newsky = Instance.new("Sky")
newsky.Parent = game.Lighting
newsky.SunTextureId = evilImage
newsky.SkyboxUp = evilImage
newsky.SkyboxDn = evilImage
newsky.SkyboxLf = evilImage
newsky.SkyboxRt = evilImage
newsky.SkyboxFt = evilImage
newsky.SkyboxBk = evilImage
newsky.Name = "EVILDECAL"
for i, v in pairs(game:GetDescendants()) do
	if not game.Players:GetPlayerFromCharacter(v.Parent) then
		if v:IsA("BasePart") and not v:FindFirstChild("EVILDECAL") then
			if v.Transparency < 1 then
				AddDecalToAllFaces(v)
			end
			v.BrickColor = BrickColor.Random()
		end
	else
		if v:IsA("Decal") and v.Parent.Name == "Head" then
			v.Texture = evilImage
		end
	end
	if v:IsA("Decal") or v:IsA("Texture") then
		v.Texture = evilImage
	end
	if v:IsA("ImageLabel") or v:IsA("ImageButton") then
		v.Image = evilImage
	end
	if v:IsA("Sound") then
		local randomSpeed = Random.new():NextNumber(0.75, 1)
		v.SoundId = "http://www.roblox.com/asset?id=58520081"
		v.Volume = 0.1
		v.PlaybackSpeed = randomSpeed
	end
	if v:IsA("TextLabel") or v:IsA("TextButton") then
		v.Text = "AHHHHHHHHHHHHHHHH"
		v.Changed:Connect(function()
			v.Text = "AHHHHHHHHHHHHHHHH"
		end)
	end
end
game.DescendantAdded:Connect(function(descendant)
	if not game.Players:GetPlayerFromCharacter(descendant.Parent) then
		if descendant:IsA("BasePart") and not descendant:FindFirstChild("EVILDECAL") and descendant.Transparency < 1 then
			AddDecalToAllFaces(descendant)
			descendant.BrickColor = BrickColor.Random()
		end
	else
		if descendant:IsA("Decal") and descendant.Parent.Name == "Head" then
			descendant.Texture = evilImage
		end
	end
	if descendant:IsA("Decal") or descendant:IsA("Texture") then
		descendant.Texture = evilImage
	end
	if descendant:IsA("ImageLabel") or descendant:IsA("ImageButton") then
		descendant.Image = evilImage
	end
	if descendant:IsA("Sound") then
		local randomSpeed = Random.new():NextNumber(0.75, 1)
		descendant.SoundId = "http://www.roblox.com/asset?id=58520081"
		descendant.Volume = 0.1
		descendant.PlaybackSpeed = randomSpeed
	end
	if descendant:IsA("TextLabel") or descendant:IsA("TextButton") then
		descendant.Text = "AHHHHHHHHHHHHHHHH"
		descendant.Changed:Connect(function()
			descendant.Text = "AHHHHHHHHHHHHHHHH"
		end)
	end
end)

-- to make colors randomize every time they enter workspace
workspace.DescendantAdded:Connect(function(descendant)
  if descendant:IsA("BasePart") then
    descendant.BrickColor = BrickColor.Random()
  end
end)
