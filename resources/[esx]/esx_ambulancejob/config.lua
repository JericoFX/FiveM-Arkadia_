Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

Config.ReviveReward               = 100  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'es'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 5 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 10 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = true
Config.RemoveItemsAfterRPDeath    = true

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 5000

Config.RespawnPoint = { coords = vector3(338.27, -1393.60, 32.52), heading = 271.54}

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(338.27, -1393.60, 32.52),
			sprite = 61,
			scale  = 1.2,
			color  = 2
		},

		AmbulanceActions = {
			vector3(376.64, -1432.91, 32.51)
		},
				
		
		Pharmacies = {
			vector3(377.71, -1398.96, 32.51)
		},

		Vehicles = {
			{
				Spawner = vector3(377.45, -1445.29, 29.43),
				InsideShop = vector3(446.7, -1355.6, 43.5),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(383.84, -1450.38, 29.39), heading = 264.32, radius = 4.0 },
					{ coords = vector3(383.84, -1450.38, 29.39), heading = 264.32, radius = 4.0 },
					{ coords = vector3(383.84, -1450.38, 29.39), heading = 264.32, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(316.98, -1453.72, 46.51),
				InsideShop = vector3(305.6, -1419.7, 41.5),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(313.58, -1465.07, 46.51), heading = 157.14, radius = 10.0 },
					{ coords = vector3(313.58, -1465.07, 46.51), heading = 142.7, radius = 10.0 }
				}
			}
		},

		FastTravels = {


			{
				From = vector3(247.3, -1371.5, 23.5),
				To = { coords = vector3(333.1, -1434.9, 45.5), heading = 138.6 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(335.5, -1432.0, 45.50),
				To = { coords = vector3(249.1, -1369.6, 23.5), heading = 0.0 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			}
		},

		FastTravelsPrompt = {
			{
				From = vector3(237.4, -1373.8, 26.0),
				To = { coords = vector3(251.9, -1363.3, 38.5), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			},

			{
				From = vector3(256.5, -1357.7, 36.0),
				To = { coords = vector3(235.4, -1372.8, 26.3), heading = 0.0 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
				Prompt = _U('fast_travel')
			}
		}

	}
}

Config.AuthorizedVehicles = {

	ambulance = {
		{ model = 'ambulance', label = 'Ambulancia', price = 100},
		{ model = 'safta', label = 'Todoterreno', price = 100},
		{ model = 'firetruk', label = 'Camión de bomberos', price = 100},
		{ model = 'merems', label = 'Ambulancia mercedes', price = 100}
	},

	doctor = {
		{ model = 'ambulance', label = 'Ambulancia', price = 100},
		{ model = 'safta', label = 'Todoterreno', price = 100},
		{ model = 'merems', label = 'Ambulancia mercedes', price = 100}
	},

	chief_doctor = {
		{ model = 'ambulance', label = 'Ambulancia', price = 100},
		{ model = 'safta', label = 'Todoterreno', price = 100},
		{ model = 'merems', label = 'Ambulancia mercedes', price = 100}
	},

	special = {
		{ model = 'ambulance', label = 'Ambulancia', price = 100},
		{ model = 'dodgeEMS', label = 'dodge EMS', price = 100},
		{ model = 'safta', label = 'Todoterreno', price = 100},
		{ model = 'merems', label = 'Ambulancia mercedes', price = 100}
	},


	boss = {
		{ model = 'ambulance', label = 'Ambulancia', price = 100},
		{ model = 'dodgeEMS', label = 'dodge EMS', price = 100},
		{ model = 'safta', label = 'Todoterreno', price = 100},
		{ model = 'merems', label = 'Ambulancia mercedes', price = 100}
	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {
		{ model = 'swift2', label = 'Helicoptero EMS', price = 5000 }
	},

	chief_doctor = {
		{ model = 'swift2', label = 'Helicoptero EMS', price = 5000 }
	},

	special = {
		{ model = 'swift2', label = 'Helicoptero EMS', price = 5000 }
	},

	boss = {
		{ model = 'swift2', label = 'Helicoptero EMS', price = 5000 }
	}

}
