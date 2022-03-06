local tweenService = game:GetService("TweenService")
local imageId = "rbxassetid://1381803268"

return function(properties)
	
	local speed = properties.Speed
	local position = properties.Position
	
	local particleElement = Instance.new("ImageLabel")
	particleElement.Image = imageId
	particleElement.Position = position
	particleElement.BackgroundTransparency = 1
	
	local oldSize = particleElement.Size
	
	local tween1 = tweenService:Create(particleElement,TweenInfo.new(speed),{
		Position = particleElement.Position + UDim2.new(0,0,0,30)
	})
	
	local tween2 = tweenService:Create(particleElement,TweenInfo.new(speed),{
		Position = particleElement.Position - UDim2.new(0,0,0,90),
		Size = UDim2.new(0,40,0,40)
	})
	
	local tween3 = tweenService:Create(particleElement,TweenInfo.new(speed),{
		Position = particleElement.Position + UDim2.new(0,0,0,100),
		Size = oldSize
	})
	
	local tween4 = tweenService:Create(particleElement,TweenInfo.new(speed),{
		Position = particleElement.Position - UDim2.new(0,0,0,90),
		ImageTransparency = 1
	})
	
	return particleElement, {tween1,tween2,tween3,tween4},{DefaultTweenEnabled = false}
end
