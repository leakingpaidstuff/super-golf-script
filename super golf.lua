balls = game:GetService("Workspace").GameAssets.Balls
repeat wait() until balls:FindFirstChild(game.Players.LocalPlayer.Name)
plr = game.Players.LocalPlayer
plr = game:GetService("Workspace").GameAssets.Ignore.BallVisuals:FindFirstChild(plr.Name.."-Skin").Color.Ball


function fire(power)
   plr = game.Players.LocalPlayer
   plr = game:GetService("Workspace").GameAssets.Ignore.BallVisuals:FindFirstChild(plr.Name.."-Skin").Color.Ball
   for i, child in ipairs(plr.Parent:GetChildren()) do if child.Name == "Fake" then child:Destroy() end end
   part = Instance.new("Part")
   part.Parent = plr.Parent
   part.Shape = Enum.PartType.Ball
   part.Name = "Fake"
   part.Size = plr.Size
   part.CFrame = plr.CFrame
   plr.CanCollide = false
   part.CanCollide = true
   part.Anchored = false
   camera = workspace.CurrentCamera
   part.Velocity = (camera.CFrame.lookVector) * power
   delay(5,function()part:Destroy()end)
end
mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:connect(function(key)
   if key == "K" or key == 'k' then
       fire(tonumber(game.Players.LocalPlayer.PlayerGui.MainGui.Game.BallMechanics.Shoot.PowerBarContainer.PowerBar.Appearance.Bar.Power.Text)*1.5)  
   end
end)
