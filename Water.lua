local tweenService = game:GetService("TweenService")
local particleId = script.Name

return function(properties)

	local speed = properties.Speed
	local colors = { Color3.fromRGB(111, 149, 255) } 


	local particleElement = Instance.new("Frame")
	particleElement.BackgroundColor3 = colors[math.random(1,#colors)]
	particleElement.Position = properties.Position
	
	local randomX = math.random(-70,70) 
	local particleTween = tweenService:Create(
		particleElement,
		TweenInfo.new(speed),
		{
			Position = particleElement.Position + UDim2.new(0,randomX,0,math.random(-50,-20)),
			Rotation = math.random(0,360)
		}
	)
	
	local particleTween2 = tweenService:Create(
		particleElement,
		TweenInfo.new(speed),
		{
			Position = particleElement.Position + UDim2.new(0,randomX,0,150),
			Size = UDim2.new(0,0,0,0),
			Rotation = math.random(0,360)
		}
	)

	return particleElement, {particleTween,particleTween2}, {DefaultTweenEnabled = false}

end
