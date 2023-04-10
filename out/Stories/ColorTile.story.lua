-- Compiled with roblox-ts v2.1.0
local TS = _G[script]
local Roact = TS.import(script, TS.getModule(script, "@rbxts", "roact").src)
local ColorTile = TS.import(script, script.Parent.Parent, "ColorTile").default
local Icons = TS.import(script, script.Parent.Parent, "Icons").Icons
local UIBase = TS.import(script, script.Parent.Parent, "UIBase").default
local DefaultTheme = TS.import(script, script.Parent, "DefaultTheme").default
return function(frame)
	local component = (Roact.createElement(UIBase, {
		Theme = DefaultTheme,
		AnchorPoint = Vector2.new(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		Size = UDim2.fromScale(0.4, 0.6),
	}, {
		Roact.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Top,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = UDim.new(0, 0),
		}),
		Roact.createElement(ColorTile, {
			Theme = DefaultTheme,
			Title = "Color",
			Color = DefaultTheme.Scheme.primary,
		}),
		Roact.createElement(ColorTile, {
			Theme = DefaultTheme,
			Title = "Color",
			Color = DefaultTheme.Scheme.secondary,
		}),
		Roact.createElement(ColorTile, {
			Theme = DefaultTheme,
			Title = "Color",
			Description = "Description",
			Color = DefaultTheme.Scheme.tertiary,
		}),
		Roact.createElement(ColorTile, {
			Theme = DefaultTheme,
			Title = "Color",
			Description = "Description",
			Icon = Icons.Palette,
			Color = DefaultTheme.Scheme.error,
		}),
		Roact.createElement(ColorTile, {
			Theme = DefaultTheme,
			Title = "Color",
			Icon = Icons.Palette,
			Color = DefaultTheme.Scheme.primaryContainer,
		}),
	}))
	local tree = Roact.mount(component, frame)
	return function()
		Roact.unmount(tree)
	end
end
