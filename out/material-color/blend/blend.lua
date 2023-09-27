-- Compiled with roblox-ts v2.1.1
local TS = require(game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("RuntimeLib"))
--[[
	*
	* @license
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
-- This file is automatically generated. Do not modify it.
local Int = TS.import(script, game:GetService("ReplicatedStorage"), "rbxts_include", "node_modules", "@rbxts", "ColourUtils").Int
local Cam16 = TS.import(script, game:GetService("ReplicatedStorage"), "Material-UI", "material-color", "hct", "cam16").Cam16
local Hct = TS.import(script, game:GetService("ReplicatedStorage"), "Material-UI", "material-color", "hct", "hct").Hct
local colorUtils = TS.import(script, game:GetService("ReplicatedStorage"), "Material-UI", "material-color", "utils", "color_utils")
local mathUtils = TS.import(script, game:GetService("ReplicatedStorage"), "Material-UI", "material-color", "utils", "math_utils")
-- libmonet is designed to have a consistent API across platforms
-- and modular components that can be moved around easily. Using a class as a
-- namespace facilitates this.
-- 
-- tslint:disable:class-as-namespace
--[[
	*
	* Functions for blending in HCT and CAM16.
]]
local Blend
do
	Blend = setmetatable({}, {
		__tostring = function()
			return "Blend"
		end,
	})
	Blend.__index = Blend
	function Blend.new(...)
		local self = setmetatable({}, Blend)
		return self:constructor(...) or self
	end
	function Blend:constructor()
	end
	function Blend:harmonize(designColor, sourceColor)
		local fromInt = Int.toInt(designColor)
		local fromHct = Hct:fromInt(fromInt)
		local toInt = Int.toInt(sourceColor)
		local toHct = Hct:fromInt(toInt)
		local differenceDegrees = mathUtils.differenceDegrees(fromHct:getHue(), toHct:getHue())
		local rotationDegrees = math.min(differenceDegrees * 0.5, 15.0)
		local outputHue = mathUtils.sanitizeDegreesDouble(fromHct:getHue() + rotationDegrees * mathUtils.rotationDirection(fromHct:getHue(), toHct:getHue()))
		local outputInt = Hct:from(outputHue, fromHct:getChroma(), fromHct:getTone()):toInt()
		return Int.fromInt(outputInt)
	end
	function Blend:hctHue(from, to, amount)
		local fromInt = Int.toInt(from)
		local ucs = Int.toInt(Blend:cam16Ucs(from, to, amount))
		local ucsCam = Cam16:fromInt(ucs)
		local fromCam = Cam16:fromInt(fromInt)
		local blended = Hct:from(ucsCam.hue, fromCam.chroma, colorUtils.lstarFromArgb(fromInt))
		local outputInt = blended:toInt()
		return Int.fromInt(outputInt)
	end
	function Blend:cam16Ucs(from, to, amount)
		local fromInt = Int.toInt(from)
		local toInt = Int.toInt(to)
		local fromCam = Cam16:fromInt(fromInt)
		local toCam = Cam16:fromInt(toInt)
		local fromJ = fromCam.jstar
		local fromA = fromCam.astar
		local fromB = fromCam.bstar
		local toJ = toCam.jstar
		local toA = toCam.astar
		local toB = toCam.bstar
		local jstar = fromJ + (toJ - fromJ) * amount
		local astar = fromA + (toA - fromA) * amount
		local bstar = fromB + (toB - fromB) * amount
		local outputInt = Cam16:fromUcs(jstar, astar, bstar):toInt()
		return Int.fromInt(outputInt)
	end
end
return {
	Blend = Blend,
}
