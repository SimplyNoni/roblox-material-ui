-- Compiled with roblox-ts v2.1.1
local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"))
local Roact = TS.import(script, game:GetService("ReplicatedStorage"), "rbxts_include", "node_modules", "@rbxts", "RoactTS")
local FilledButton = TS.import(script, game:GetService("ReplicatedStorage"), "Material-UI", "Buttons").FilledButton
local Icons = TS.import(script, game:GetService("ReplicatedStorage"), "Material-UI", "Icons").Icons
local UIBase = TS.import(script, game:GetService("ReplicatedStorage"), "Material-UI", "UIBase").default
local DefaultTheme = TS.import(script, game:GetService("ReplicatedStorage"), "Material-UI", "Stories", "DefaultTheme").default
return function(frame)
	local Tree = Roact.mount(Roact.createElement(UIBase, {
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromScale(0.3, 0.55),
		Theme = DefaultTheme,
	}, {
		Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, 20),
		}),
		Roact.createElement(FilledButton, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			AutomaticSize = true,
			Text = "AutomaticSize Button",
			Pressed = function()
				print("a")
			end,
			Theme = DefaultTheme,
		}),
		Roact.createElement(FilledButton, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			AutomaticSize = true,
			Text = "AutomaticSize Button w/ Icon",
			Icon = Icons.DarkTheme,
			Pressed = function()
				print("a")
			end,
			Theme = DefaultTheme,
		}),
		Roact.createElement(FilledButton, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			Size = UDim2.new(0.75, 0, 0, 35),
			Text = "Custom Size Button",
			Pressed = function()
				print("a")
			end,
			Theme = DefaultTheme,
		}),
		Roact.createElement(FilledButton, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			AutomaticSize = true,
			Text = "Disabled Button",
			Disabled = true,
			Pressed = function()
				print("a")
			end,
			Theme = DefaultTheme,
		}),
		Roact.createElement(FilledButton, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
			AutomaticSize = true,
			Text = "Disabled Button w/ Icon",
			Disabled = true,
			Icon = Icons.DarkTheme,
			Pressed = function()
				print("a")
			end,
			Theme = DefaultTheme,
		}),
	}), frame)
	return function()
		Roact.unmount(Tree)
	end
end
