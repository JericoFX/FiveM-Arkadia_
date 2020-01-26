Config = {}
Config.Locale = 'en'

Config.MarkerType   = 0
Config.DrawDistance = 80.0
Config.MarkerSize   = {x = 1.2, y = 1.2, z = 0.7}
Config.MarkerColor  = {r = 255, g = 0, b = 204}

Config.BlipHospital = {
	Sprite = 403,
	Color = 2,
	Display = 2,
	Scale = 0.7
}

Config.Price = 0 -- Edit this to your liking.

Config.EnableUnemployedOnly = false -- If true it will only show Blips to Unemployed Players | false shows it to Everyone.
Config.EnableBlips = false -- If true then it will show blips | false does the Opposite.
Config.EnablePeds = false -- If true then it will add Peds on Markers | false does the Opposite.

Config.Locations = {
	{ x = 357.02, y = -1426.88, z = 31.50, heading = 142.71 }
}

Config.Zones = {}

for i=1, #Config.Locations, 1 do
	Config.Zones['Shop_' .. i] = {
		Pos   = Config.Locations[i],
		Size  = Config.MarkerSize,
		Color = Config.MarkerColor,
		Type  = Config.MarkerType
	}
end
