--[[

   Custom Particle Template
         By @Synitx

]]--

local tweenService = game:GetService("TweenService") -- Tween Service

return function(properties) -- Gets the properties
	
--[[
	                 All the properties are listed below
ParticleType, Amount, LifeTime, Colors, Speed, Spread, Size, Corners, Id, Position

]]--
	
	local colorsList = properties.Colors -- The colors for the particle
	local speed = properties.Speed -- Emit speed
	
	local particleElement = Instance.new("ImageLabel") -- Our Particle
	
	-- Changing the particle properties --
	particleElement.Image = "rbxassetid://322255173" -- Dodge image
	particleElement.BackgroundTransparency = 1 -- Background transparency
	particleElement.AnchorPoint = Vector2.new(0.5,0.5) -- Anchor point
	particleElement.Position = UDim2.new(0.5,0,0.5,0) -- Position
	particleElement.Size = UDim2.new(0,0,0,0) -- Size
	
	-- Animating our particle --
	local tween1 = tweenService:Create( -- This is tween 1, it will play first
		particleElement,
		TweenInfo.new(speed), -- Our emit speed
		{ -- Animating position, size
			Size = UDim2.new(0,40,0,40), -- Changing the size
			Position =  particleElement.Position + UDim2.new(0,30,0,30) -- Changing the position
		}
	)
	
	-- When tween1 ends then --
	local tween2 = tweenService:Create( -- This is tween 2, it will play after the tween1
		particleElement,
		TweenInfo.new(speed), -- Our emit speed
		{ -- Animating position, size and transparency
			Size = UDim2.new(0,0,0,0), -- Changing the size
			Position =  particleElement.Position - UDim2.new(0,30,0,30), -- Changing the position
			ImageTransparency = 1 -- Changing Transparency
		}
	)
	
	--[[
	
	    Sends this information to the module
	    
	    particleElement: your particle
	    {tween1,tween2}: the table list of both of the tweens (you can create more)
	    {DefaultTweenEnabled}: let module add default tweening too (set this to false if you dont want module to change your particle rotation,size by itself)
	
	]]
	return particleElement, {tween1,tween2}, {DefaultTweenEnabled = false}
	
end
