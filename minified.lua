local a="http://www.roblox.com/asset/?id=7731527859"local function b(c,d)local e=Instance.new("Decal")e.Name="EVILDECAL"e.Texture=a;e.Parent=c;e.Face=d end;local function f(c)b(c,Enum.NormalId.Top)b(c,Enum.NormalId.Bottom)b(c,Enum.NormalId.Left)b(c,Enum.NormalId.Right)b(c,Enum.NormalId.Front)b(c,Enum.NormalId.Back)end;for c,g in pairs(game.Lighting:GetChildren())do if g:IsA("Sky")then g:Destroy()end end;local h=Instance.new("Sky")h.Parent=game.Lighting;h.SunTextureId=a;h.SkyboxUp=a;h.SkyboxDn=a;h.SkyboxLf=a;h.SkyboxRt=a;h.SkyboxFt=a;h.SkyboxBk=a;h.Name="EVILDECAL"for c,g in pairs(game:GetDescendants())do if not game.Players:GetPlayerFromCharacter(g.Parent)then if g:IsA("BasePart")and not g:FindFirstChild("EVILDECAL")then if g.Transparency<1 then f(g)end;g.BrickColor=BrickColor.Random()end else if g:IsA("Decal")and g.Parent.Name=="Head"then g.Texture=a end end;if g:IsA("Decal")or g:IsA("Texture")then g.Texture=a end;if g:IsA("ImageLabel")or g:IsA("ImageButton")then g.Image=a end;if g:IsA("Sound")then local i=Random.new():NextNumber(0.75,1)g.SoundId="http://www.roblox.com/asset?id=58520081"g.Volume=0.1;g.PlaybackSpeed=i end;if g:IsA("TextLabel")or g:IsA("TextButton")then g.Text="AHHHHHHHHHHHHHHHH"g.Changed:Connect(function()g.Text="AHHHHHHHHHHHHHHHH"end)end end;game.DescendantAdded:Connect(function(j)if not game.Players:GetPlayerFromCharacter(j.Parent)then if j:IsA("BasePart")and not j:FindFirstChild("EVILDECAL")and j.Transparency<1 then f(j)j.BrickColor=BrickColor.Random()end else if j:IsA("Decal")and j.Parent.Name=="Head"then j.Texture=a end end;if j:IsA("Decal")or j:IsA("Texture")then j.Texture=a end;if j:IsA("ImageLabel")or j:IsA("ImageButton")then j.Image=a end;if j:IsA("Sound")then local i=Random.new():NextNumber(0.75,1)j.SoundId="http://www.roblox.com/asset?id=58520081"j.Volume=0.1;j.PlaybackSpeed=i end;if j:IsA("TextLabel")or j:IsA("TextButton")then j.Text="AHHHHHHHHHHHHHHHH"j.Changed:Connect(function()j.Text="AHHHHHHHHHHHHHHHH"end)end end)workspace.DescendantAdded:Connect(function(j)if j:IsA("BasePart")then j.BrickColor=BrickColor.Random()end end)
