Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.EnableMoneyWash            = false
Config.MaxInService               = -1
Config.Locale = 'en'

Config.RedSkullStations = {

  RedSkull = {

    --Blip = {
   --   Pos     = { x = -1512.95, y = 122.51, z = 55.67 },
    --  Sprite  = 378,
    --  Display = 4,
     -- Scale   = 1.2,
    --  Colour  = 34,
   -- },

    AuthorizedWeapons = {	  
      { name = 'WEAPON_FIREEXTINGUISHER',     price = 50 },
	},

	  AuthorizedVehicles = {
	  	  { name = 'bati',    label = 'Moto deportiva (Bati)' },
		  { name = 'rumpo3',  label = 'Furgoneta todoterreno' },
		  { name = 'manchez',      label = 'Todoterreno' },
		  { name = 'contender',   label = '4X4' },
		  { name = 'sultanrs',   label = 'Sultan RS' },
	  },

    Cloakrooms = {
      { x = -1510.78, y = 102.67, z = 52.24},    },

    Armories = {
      { x = -1519.25, y = 112.51, z = 50.03 },
    },

    Vehicles = {
      {
        Spawner    = { x = -2668.75, y = 1300.9, z = 146.24 },
        SpawnPoint = { x = -2668.06, y = 1304.97, z = 147.12 },
        Heading    = 251.86,
      }
    },
	
	Helicopters = {
      {
        Spawner    = { x = -1543.48, y = 106.33, z = 56.78 },
        SpawnPoint = { x = -1547.34, y = 105.79, z = 56.78 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = -1543.48, y = 1309.86, z = 145.67 },
    },

    BossActions = {
      { x = -1545.0, y = 137.31, z = 55.97 }
    },

  },

}
