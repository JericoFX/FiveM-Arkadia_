Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 22
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = true
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.AvocatStations = {

  AVOCAT = {

    Blip = {
      Pos     = { x = 1040.23, y = -676.24, z = 56.79 },
      Sprite  = 76,
      Display = 4,
      Scale   = 1.0,
      Colour  = 75,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_STUNGUN',          price = 5000 },
    },

    AuthorizedVehicles = {
      { name = '17m760i', label = 'BMW' },
      { name = 'cls63', label = 'Mercedes' },
    },

    Cloakrooms = {
      { x = 1051.45, y = -662.18, z = 55.48 },
    },


    Armories = {
      { x = 1041.97, y = -668.98, z = 56.29 },
    },

    Vehicles = {
      {
        Spawner    = { x = 1040.28, y = -676.46, z = 55.79 },
        SpawnPoint = { x = 1017.99, y = -722.07, z = 56.64 },
        Heading    = 37.88,
      }
    },

    VehicleDeleters = {
      { x = 1014.85, y = -690.22, z = 55.81 },
    },

    BossActions = {
      { x = 1053.48, y = -669.94, z = 55.48 }
    },

  },

}
