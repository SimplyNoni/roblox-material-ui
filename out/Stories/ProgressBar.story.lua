-- Compiled with roblox-ts v2.1.1
local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"))
local Roact = TS.import(script, game:GetService("ReplicatedStorage"), "rbxts_include", "node_modules", "@rbxts", "RoactTS")
local ProgressBar = TS.import(script, game:GetService("ReplicatedStorage"), "Material-UI", "ProgressBar").default
local ColorScheme = TS.import(script, game:GetService("ReplicatedStorage"), "Material-UI", "types").ColorScheme
local DefaultTheme = TS.import(script, game:GetService("ReplicatedStorage"), "Material-UI", "Stories", "DefaultTheme").default
local Component
do
	Component = Roact.Component:extend("Component")
	function Component:init()
		self.state = {
			Value = 50,
		}
	end
	function Component:render()
		return Roact.createFragment({
			Roact.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				Padding = UDim.new(0, 24),
			}),
			Roact.createElement(ProgressBar, {
				Size = UDim2.new(0.5, 0, 0, 20),
				Value = self.state.Value,
				ColorScheme = ColorScheme.Primary,
				Label = "Progress Bar",
				ShowValue = true,
				Theme = DefaultTheme,
			}),
			Roact.createElement(ProgressBar, {
				Size = UDim2.new(0.5, 0, 0, 20),
				Value = self.state.Value,
				ColorScheme = ColorScheme.Secondary,
				Label = "Progress Bar",
				ShowValue = true,
				Theme = DefaultTheme,
			}),
			Roact.createElement(ProgressBar, {
				Size = UDim2.new(0.5, 0, 0, 20),
				Value = self.state.Value,
				ColorScheme = ColorScheme.Tertiary,
				Label = "Progress Bar",
				ShowValue = true,
				Theme = DefaultTheme,
			}),
			Roact.createElement(ProgressBar, {
				Size = UDim2.new(0.5, 0, 0, 20),
				Value = self.state.Value,
				ColorScheme = ColorScheme.Error,
				Label = "Progress Bar",
				ShowValue = true,
				Theme = DefaultTheme,
			}),
		})
	end
	function Component:didMount()
		task.spawn(function()
			task.wait(3)
			self:setState({
				Value = 100,
			})
			task.wait(3)
			self:setState({
				Value = 50,
			})
			task.wait(3)
			self:setState({
				Value = 5,
			})
		end)
	end
end
return function(frame)
	local tree = Roact.mount(Roact.createElement(Component), frame)
	return function()
		Roact.unmount(tree)
	end
end
