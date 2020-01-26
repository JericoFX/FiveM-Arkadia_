Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'es'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(-456.5, 6001.92, 31.34),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(-450.56, 6011.03, 31.72)
		},

		Armories = {
			vector3(-448.24, 6007.86, 31.72)
		},

		Vehicles = {
            {
                Spawner = vector3(-480.78, 6022.5, 31.34),
                InsideShop = vector3(228.5, -993.5, -99.5),
                SpawnPoints = {
                    { coords = vector3(-472.46, 6017.09, 31.34), heading = 90.0, radius = 6.0 },
                    { coords = vector3(-467.97, 6012.46, 31.34), heading = 90.0, radius = 6.0 },
                    { coords = vector3(-459.52, 6004.47, 31.34), heading = 90.0, radius = 6.0 },
                    { coords = vector3(-451.55, 5994.65, 31.34), heading = 90.0, radius = 6.0 }
                }
            },

            -- {
            --     Spawner = vector3(473.3, -1018.8, 28.0),
            --     InsideShop = vector3(228.5, -993.5, -99.0),
            --     SpawnPoints = {
            --         { coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0 },
            --         { coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0 }
            --     }
            -- }
        },

		Helicopters = {
			{
				Spawner = vector3(-484.47, 6004.46, 31.28),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(-475.35, 5988.67, 31.34), heading = 92.6, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(464.37, -1008.55, 34.93)
		}

	}

}

Config.AuthorizedWeapons = {
	recruit = {
		{ weapon = 'WEAPON_COMBATPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10 },
		{ weapon = 'WEAPON_NIGHTSTICK', price = 10 },
		{ weapon = 'WEAPON_STUNGUN', price = 10 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 10 }
	},

	officer = {
		{ weapon = 'WEAPON_COMBATPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10 },
		{ weapon = 'WEAPON_NIGHTSTICK', price = 10 },
		{ weapon = 'WEAPON_SMG', price = 10 },
		{ weapon = 'WEAPON_STUNGUN', price = 10 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 10 }
	},

	sergeant = {
		{ weapon = 'WEAPON_COMBATPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10 },
		{ weapon = 'WEAPON_CARBINERIFLE', price = 10 },
		{ weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 10 },
		{ weapon = 'WEAPON_NIGHTSTICK', price = 10 },
		{ weapon = 'WEAPON_SMG', price = 10 },
		{ weapon = 'WEAPON_STUNGUN', price = 10 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 10 }
	},

	intendent = {
		{ weapon = 'WEAPON_COMBATPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10 },
		{ weapon = 'WEAPON_CARBINERIFLE', price = 10 },
		{ weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 10 },
		{ weapon = 'WEAPON_NIGHTSTICK', price = 10 },
		{ weapon = 'WEAPON_SMG', price = 10 },
		{ weapon = 'WEAPON_STUNGUN', price = 10 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 10 }
	},

	lieutenant = {
		{ weapon = 'WEAPON_COMBATPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10 },
		{ weapon = 'WEAPON_CARBINERIFLE', price = 10 },
		{ weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 10 },
		{ weapon = 'WEAPON_NIGHTSTICK', price = 10 },
		{ weapon = 'WEAPON_SMG', price = 10 },
		{ weapon = 'WEAPON_STUNGUN', price = 10 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 10 }
	},

	chef = {
		{ weapon = 'WEAPON_COMBATPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10 },
		{ weapon = 'WEAPON_CARBINERIFLE', price = 10 },
		{ weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 10 },
		{ weapon = 'WEAPON_NIGHTSTICK', price = 10 },
		{ weapon = 'WEAPON_SMG', price = 10 },
		{ weapon = 'WEAPON_STUNGUN', price = 10 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 10 }
	},

	boss = {
		{ weapon = 'WEAPON_COMBATPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10 },
		{ weapon = 'WEAPON_HEAVYSNIPER', price = 10 },
		{ weapon = 'WEAPON_CARBINERIFLE', price = 10 },
		{ weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 10 },
		{ weapon = 'WEAPON_NIGHTSTICK', price = 10 },
		{ weapon = 'WEAPON_SMG', price = 10 },
		{ weapon = 'WEAPON_STUNGUN', price = 10 },
		{ weapon = 'WEAPON_FLASHLIGHT', price = 10 }
	}
}

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'crown8', label = 'Coche recluta', price = 1 },
	    { model = 'pdimpala', label = 'Coche Patrulla', price = 1 },
		{ model = 'policeb', label = 'Moto de Policia', price = 1 },
		{ model = 'riot', label = 'Furgon', price = 1 },
		{ model = 'policet', label = 'Coche Vagon', price = 1 },
		{ model = 'pdfpiu', label = 'Coche Todoterreno', price = 1 },
		{ model = 'police3', label = 'Coche Patrulla Police 3', price = 1 },
		{ model = 'police', label = 'Coche Patrulla Clasico', price = 1 },
		{ model = 'sheriff2', label = 'Coche Patrulla Sheriff 4X4', price = 1 },
		{ model = 'pranger', label = 'Coche Patrulla Forestal 4X4', price = 1 },
		{ model = 'pbus', label = 'Autobus de prision', price = 1 },
		{ model = 'police4', label = 'Coche FBI', price = 1 },
		{ model = 'fbi2', label = 'Coche FBI 4X4 Secreta', price = 1 }
	},

	recruit = {
	
	},

	officer = {
	    { model = 'crown8', label = 'Coche recluta', price = 100 }
	},

	sergeant = {
	    { model = 'crown8', label = 'Coche recluta', price = 100 }
	},

	intendent = {
		{ model = 'crown8', label = 'Coche recluta', price = 100 }
	},

	lieutenant = {
	    { model = 'crown8', label = 'Coche recluta', price = 100 }
	},

	chef = {
		{ model = 'crown8', label = 'Coche recluta', price = 100 }
		
	},

	boss = {
		{ model = 'crown8', label = 'Coche recluta', price = 100 }
	
	}
}

Config.AuthorizedHelicopters = {
	recruit = {},

	officer = {},

	sergeant = {
		{ model = 'polmav', label = 'Policia Maverick', livery = 0, price = 100 }
	},

	intendent = {},

	lieutenant = {
		{ model = 'polmav', label = 'Policia Maverick', livery = 0, price = 100 }
	},

	chef = {
		{ model = 'polmav', label = 'Policia Maverick', livery = 0, price = 100 }
	},

	boss = {
		{ model = 'polmav', label = 'Policia Maverick', livery = 0, price = 100 }
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	recruit_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	officer_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 1,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 1,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	intendent_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	lieutenant_wear = { -- currently the same as intendent_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	chef_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	boss_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 11,  ['bproof_2'] = 1
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 1
		}
	},
	gilet_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1
		}
	}

}