-- Compiled with roblox-ts v2.1.1
local TS = _G[script]
--[[
	*
	* Copyright 2021 Google LLC
	*
	* Licensed under the Apache License, Version 2.0 (the "License");
	* you may not use this file except in compliance with the License.
	* You may obtain a copy of the License at
	*
	*      http://www.apache.org/licenses/LICENSE-2.0
	*
	* Unless required by applicable law or agreed to in writing, software
	* distributed under the License is distributed on an "AS IS" BASIS,
	* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	* See the License for the specific language governing permissions and
	* limitations under the License.
]]
local CorePalette = TS.import(script, script, "palettes", "core_palette").CorePalette
--[[
	*
	* Represents a Material color scheme, a mapping of color roles to colors.
]]
local Scheme
do
	Scheme = setmetatable({}, {
		__tostring = function()
			return "Scheme"
		end,
	})
	Scheme.__index = Scheme
	function Scheme.new(...)
		local self = setmetatable({}, Scheme)
		return self:constructor(...) or self
	end
	function Scheme:constructor(Colors)
		self.Colors = Colors
	end
	function Scheme:light(color3)
		local core = CorePalette:of(color3)
		return Scheme.new({
			primary = core.a1:tone(40),
			onPrimary = core.a1:tone(100),
			primaryContainer = core.a1:tone(90),
			onPrimaryContainer = core.a1:tone(10),
			secondary = core.a2:tone(40),
			onSecondary = core.a2:tone(100),
			secondaryContainer = core.a2:tone(90),
			onSecondaryContainer = core.a2:tone(10),
			tertiary = core.a3:tone(40),
			onTertiary = core.a3:tone(100),
			tertiaryContainer = core.a3:tone(90),
			onTertiaryContainer = core.a3:tone(10),
			error = core.error:tone(40),
			onError = core.error:tone(100),
			errorContainer = core.error:tone(90),
			onErrorContainer = core.error:tone(10),
			background = core.n1:tone(99),
			onBackground = core.n1:tone(10),
			surface = core.n1:tone(99),
			onSurface = core.n1:tone(10),
			surfaceVariant = core.n2:tone(90),
			onSurfaceVariant = core.n2:tone(30),
			outline = core.n2:tone(50),
			shadow = core.n1:tone(0),
			inverseSurface = core.n1:tone(20),
			inverseOnSurface = core.n1:tone(95),
			inversePrimary = core.a1:tone(80),
		})
	end
	function Scheme:dark(color3)
		local core = CorePalette:of(color3)
		return Scheme.new({
			primary = core.a1:tone(80),
			onPrimary = core.a1:tone(20),
			primaryContainer = core.a1:tone(30),
			onPrimaryContainer = core.a1:tone(90),
			secondary = core.a2:tone(80),
			onSecondary = core.a2:tone(20),
			secondaryContainer = core.a2:tone(30),
			onSecondaryContainer = core.a2:tone(90),
			tertiary = core.a3:tone(80),
			onTertiary = core.a3:tone(20),
			tertiaryContainer = core.a3:tone(30),
			onTertiaryContainer = core.a3:tone(90),
			error = core.error:tone(80),
			onError = core.error:tone(20),
			errorContainer = core.error:tone(30),
			onErrorContainer = core.error:tone(80),
			background = core.n1:tone(10),
			onBackground = core.n1:tone(90),
			surface = core.n1:tone(10),
			onSurface = core.n1:tone(90),
			surfaceVariant = core.n2:tone(30),
			onSurfaceVariant = core.n2:tone(80),
			outline = core.n2:tone(60),
			shadow = core.n1:tone(0),
			inverseSurface = core.n1:tone(90),
			inverseOnSurface = core.n1:tone(20),
			inversePrimary = core.a1:tone(40),
		})
	end
end
local CustomColorGroup
do
	CustomColorGroup = setmetatable({}, {
		__tostring = function()
			return "CustomColorGroup"
		end,
	})
	CustomColorGroup.__index = CustomColorGroup
	function CustomColorGroup.new(...)
		local self = setmetatable({}, CustomColorGroup)
		return self:constructor(...) or self
	end
	function CustomColorGroup:constructor(Colors)
		self.Colors = Colors
	end
	function CustomColorGroup:light(color3)
		local core = CorePalette:of(color3)
		local tones = core.a1
		return CustomColorGroup.new({
			color = tones:tone(40),
			onColor = tones:tone(100),
			colorContainer = tones:tone(90),
			onColorContainer = tones:tone(10),
		})
	end
	function CustomColorGroup:dark(color3)
		local core = CorePalette:of(color3)
		local tones = core.a1
		return CustomColorGroup.new({
			color = tones:tone(80),
			onColor = tones:tone(20),
			colorContainer = tones:tone(30),
			onColorContainer = tones:tone(90),
		})
	end
end
return {
	default = Scheme,
	CustomColorGroup = CustomColorGroup,
}
