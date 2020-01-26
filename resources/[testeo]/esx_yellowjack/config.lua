Config                            = {}
Config.DrawDistance               = 100.0

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableHelicopters          = false
Config.EnableMoneyWash            = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.MissCraft                  = 10 -- %


Config.AuthorizedVehicles = {
    { name = 'speedo4',  label = 'Speedo' },
}

--Config.Blips = {
    
   -- Blip = {
   --   Pos     = { x = -1386.306, y = -627.525, z = 30.819 },
   --   Sprite  = 60,
    --  Display = 4,
    --  Scale   = 1.2,
     -- Colour  = 27,
   -- },

--}

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = 1990.22, y = 3052.05, z = 46.22 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 255, g = 187, b = 255 },
        Type  = 27,
    },
	
    Vaults = {
        Pos   = { x = 1993.71, y = 3059.36, z = 100.05 },
        Size  = { x = 1.5, y = 1.5, z = 1.5 },
        Color = { r = 30, g = 144, b = 255 },
        Type  = 23,
    },

    Fridge = {
        Pos   = { x = 1982.32, y = 3052.69, z = 46.22 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 248, g = 248, b = 255 },
        Type  = 23,
    },
	
    Vehicles = {
        Pos          = { x = 1996.68, y = 3038.38, z = 46.03 },
        SpawnPoint   = { x = 1986.3, y = 3032.61, z = 46.06 },
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 255, g = 255, b = 0 },
        Type         = 23,
        Heading      = 179.93,
    },

    VehicleDeleters = {
        Pos   = { x = 1989.72, y = 3038.93, z = 46.05 },
        Size  = { x = 3.0, y = 3.0, z = 0.2 },
        Color = { r = 255, g = 255, b = 0 },
        Type  = 1,
    },

    BossActions = {
        Pos   = { x = 1994.37, y = 3046.1, z = 46.22 },
        Size  = { x = 1.5, y = 1.5, z = 1.5 },
        Color = { r = 0, g = 100, b = 0 },
        Type  = 1,
    },

-----------------------
-------- SHOPS --------

    Flacons = {
        Pos   = { x = 1165.75, y = 2714.4, z = 37.16 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 0, b = 0 },
        Type  = 23,
        Items = {
            { name = 'jager',     label = _U('jager'),   price = 100 },
            { name = 'vodka',      label = _U('vodka'),   price = 100 },
            { name = 'rhum',       label = _U('rhum'),    price = 100 },
            { name = 'whisky',     label = _U('whisky'),  price = 100 },
            { name = 'tequila',    label = _U('tequila'), price = 100 },
			{ name = 'absinthe',   label = _U('absinthe'), price = 100 },
			{ name = 'beer',       label = _U('beer'), price = 50 },
			{ name = 'champagne',  label = _U('champagne'), price = 200 },
			{ name = 'gintonic',   label = _U('gintonic'), price = 100 },
			{ name = 'mojito',     label = _U('mojito'), price = 50 },
            { name = 'martini',    label = _U('martini'), price = 100 }
        },
    },

    NoAlcool = {
        Pos   = { x = 1704.44, y = 4917.91, z = 41.06 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 110, b = 0 },
        Type  = 23,
        Items = {
            { name = 'soda',        label = _U('soda'),     price = 10 },
            { name = 'jusfruit',    label = _U('jusfruit'), price = 10 },
            { name = 'icetea',      label = _U('icetea'),   price = 5 },
            { name = 'energy',      label = _U('energy'),   price = 25 },
            { name = 'drpepper',    label = _U('drpepper'), price = 10 },
            { name = 'cocacola',    label = _U('cocacola'), price = 10 },
            { name = 'coffe',       label = _U('coffe'), price = 10 },
            { name = 'milk',       label = _U('milk'), price = 5 },
            { name = 'powerade',       label = _U('powerade'), price = 25 },
            { name = 'proteinshake',       label = _U('proteinshake'), price = 25 },
            { name = 'water',       label = _U('water'), price = 2 },
            { name = 'limonade',    label = _U('limonade'), price = 10 }
        },
    },
}
    --[[Apero = {
        Pos   = { x = -3249.72, y = 1001.39, z = 11.83 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 142, g = 125, b = 76 },
        Type  = 23,
        Items = {
            { name = 'bolcacahuetes',   label = _U('bolcacahuetes'),    price = 15 },
            { name = 'bolnoixcajou',    label = _U('bolanacardos'),     price = 15 },
            { name = 'bolpistache',     label = _U('bolpistacho'),      price = 15 },
            { name = 'bolchips',        label = _U('bolchips'),         price = 15 },
            { name = 'saucisson',       label = _U('salchichon'),        price = 25 },
            { name = 'bread',           label = _U('pan'),               price = 5 },
            { name = 'chips',           label = _U('chips'),  price = 15 },
            { name = 'chocolate',       label = _U('chocolatina'),       price = 10 },
            { name = 'cupcake',         label = _U('magdalena'),       price = 10 },
            { name = 'hamburger',       label = _U('hamburguesa'),       price = 10 },
            { name = 'sandwich',        label = _U('sandwich'),       price = 25 },
            { name = 'sportlunch',      label = _U('sportlunch'),       price = 25 },
            { name = 'grapperaisin',    label = _U('racimouvas'),      price = 5 }
        },
    },

    Ice = {
        Pos   = { x = 1731.82, y = 6421.48, z = 34.04 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 255, g = 255, b = 255 },
        Type  = 23,
        Items = {
            { name = 'ice',     label = _U('hielo'),      price = 2 },
            { name = 'cigarett',     label = _U('tabaco'),      price = 5 },
            { name = 'drill',     label = _U('taladro'),      price = 50 },
            { name = 'dildo',     label = _U('consolador'),      price = 100 },
            { name = 'dildo2',     label = _U('dildo2'),      price = 100 },
            { name = 'scratchoff',     label = _U('scratchoff'),      price = 100 },
            { name = 'menthe',  label = _U('menta'),   price = 2 }
        },
    },

}--]]


-----------------------
----- TELEPORTERS -----


-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
  barman_outfit = {
    male = {
        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
        ['torso_1'] = 40,   ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 40,
        ['pants_1'] = 28,   ['pants_2'] = 2,
        ['shoes_1'] = 38,   ['shoes_2'] = 4,
        ['chain_1'] = 118,  ['chain_2'] = 0
    },
    female = {
        ['tshirt_1'] = 3,   ['tshirt_2'] = 0,
        ['torso_1'] = 8,    ['torso_2'] = 2,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 5,
        ['pants_1'] = 44,   ['pants_2'] = 4,
        ['shoes_1'] = 0,    ['shoes_2'] = 0,
        ['chain_1'] = 0,    ['chain_2'] = 2
    }
  },
  dancer_outfit_1 = {
    male = {
        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
        ['torso_1'] = 15,   ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 40,
        ['pants_1'] = 61,   ['pants_2'] = 9,
        ['shoes_1'] = 16,   ['shoes_2'] = 9,
        ['chain_1'] = 118,  ['chain_2'] = 0
    },
    female = {
        ['tshirt_1'] = 3,   ['tshirt_2'] = 0,
        ['torso_1'] = 22,   ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 4,
        ['pants_1'] = 22,   ['pants_2'] = 0,
        ['shoes_1'] = 18,   ['shoes_2'] = 0,
        ['chain_1'] = 61,   ['chain_2'] = 1
    }
  },
  dancer_outfit_2 = {
    male = {
        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
        ['torso_1'] = 62,   ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 14,
        ['pants_1'] = 4,    ['pants_2'] = 0,
        ['shoes_1'] = 34,   ['shoes_2'] = 0,
        ['chain_1'] = 118,  ['chain_2'] = 0
    },
    female = {
        ['tshirt_1'] = 3,   ['tshirt_2'] = 0,
        ['torso_1'] = 22,   ['torso_2'] = 2,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 4,
        ['pants_1'] = 20,   ['pants_2'] = 2,
        ['shoes_1'] = 18,   ['shoes_2'] = 2,
        ['chain_1'] = 0,    ['chain_2'] = 0
    }
  },
  dancer_outfit_3 = {
    male = {
        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
        ['torso_1'] = 15,   ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 15,
        ['pants_1'] = 4,    ['pants_2'] = 0,
        ['shoes_1'] = 34,   ['shoes_2'] = 0,
        ['chain_1'] = 118,  ['chain_2'] = 0
    },
    female = {
        ['tshirt_1'] = 3,   ['tshirt_2'] = 0,
        ['torso_1'] = 22,   ['torso_2'] = 1,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 15,
        ['pants_1'] = 19,   ['pants_2'] = 1,
        ['shoes_1'] = 19,   ['shoes_2'] = 3,
        ['chain_1'] = 0,    ['chain_2'] = 0
    }
  }
}
