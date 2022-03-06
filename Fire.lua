local tweenService = game:GetService("TweenService")
local particleId = script.Name

return function(properties)
	
	local speed = properties.Speed
	local colors = properties.Colors
	
	local particleElement = Instance.new("ImageLabel")
	particleElement.Image = "rbxassetid://6119272027"
	particleElement.BackgroundTransparency = 1
	particleElement.ImageColor3 = colors[2]
	particleElement.Position += UDim2.new(0,math.random(-40,40),0,0)
	
	local particleTween = tweenService:Create(
		particleElement,
		TweenInfo.new(speed),
		{
			ImageColor3 = colors[math.random(1,#colors)]
		}
	)
	
	return particleElement, particleTween, {DefaultTweenEnabled = true}
	
end
