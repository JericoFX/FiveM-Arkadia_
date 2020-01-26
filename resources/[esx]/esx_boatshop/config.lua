Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 120, g = 120, b = 240 }
Config.EnableOwnedVehicles        = true
Config.ResellPercentage           = 75

Config.Locale                     = 'es'

Config.LicenseEnable = true -- Require people to own a Boating License when buying Vehicles? Requires esx_license
Config.LicensePrice  = 1000

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {

	ShopEntering = { -- Marker for Accessing Shop
		Pos   = { x = -737.89, y = -1340.91, z = 0.57 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 1
	},

	ShopInside = { -- Marker for Viewing Vehicles
		Pos     = { x = -1715.12, y = -1443.04, z = -0.35 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 31.75,
		Type    = -1
	},

	ShopOutside = { -- Marker for Purchasing Vehicles
		Pos     = { x = -717.7, y = -1346.0, z = -0.50},
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 140.23,
		Type    = -1
	},

	ResellVehicle = { -- Marker for Selling Vehicles
		Pos   = { x = -725.38537597656, y = -1327.8604736328, z = -0.47477427124977 },
		Size  = { x = 3.0, y = 3.0, z = 1.0 },
		Type  = 1
	}

}
