Config = {}
Config.Blip			= {sprite= 290, color = 30}
Config.MecanoBlip	= {sprite= 290, color = 20}
Config.Price		= 500

Config.Garages = {
	Garage_Airport = {	
		Pos = {x=-959.33, y=-3055.55, z=13.95},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = 'Garaje',
		HelpPrompt = "Presiona ~INPUT_PICKUP~ para abrir el garaje",
		Functionmenu = OpenMenuGarage,
		SpawnPoint = {
			Pos = {x=-977.29, y= -3017.25, z= 13.95},
			Heading = 57.24,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para salir con tu vehiculo",
			Functionmenu = ListVehiclesMenu,
		},
		DeletePoint = {
			Pos = {x=-1066.71, y=-2929.13, z=13.95},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para devolver tu vehiculo",
			Functionmenu = StockVehicleMenu,
		},
	},
	
	




	Garage_Paleto = {	
		Pos = {x=105.359, y=6613.586, z=32.3973},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = 'Garaje',
		HelpPrompt = "Presiona ~INPUT_PICKUP~ para abrir el garaje",
		Functionmenu = OpenMenuGarage,
		SpawnPoint = {
			Pos = {x=128.7822, y= 6622.9965, z= 31.7828},
			Heading = 160.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para salir con tu vehiculo",
			Functionmenu = ListVehiclesMenu,
		},
		DeletePoint = {
			Pos = {x=126.3572, y=6608.4150, z=31.8565},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para devolver tu vehiculo",
			Functionmenu = StockVehicleMenu,
		}, 	
	},
	Garage_Paleto_barcos = {	
		Pos = {x=-1612.17, y=5261.77, z=3.97},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = 'Garaje',
		HelpPrompt = "Presiona ~INPUT_PICKUP~ para abrir el garaje",
		Functionmenu = OpenMenuGarage,
		SpawnPoint = {
			Pos = {x=-1602.53, y= 5263.34, z= 0.7},
			Heading = 31.18,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para salir con tu vehiculo",
			Functionmenu = ListVehiclesMenu,
		},
		DeletePoint = {
			Pos = {x=-1558.17, y=5199.81, z=0.21},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para devolver tu vehiculo",
			Functionmenu = StockVehicleMenu,
		}, 	
	},
	Garage_SandyShore = {	
		Pos = {x=1694.571, y=3610.924, z=35.319},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = 'Garaje',
		HelpPrompt = "Presiona ~INPUT_PICKUP~ para abrir el garaje",
		Functionmenu = OpenMenuGarage,
		SpawnPoint = {
			Pos = {x=1713.492, y= 3598.938, z= 35.238},
			Heading = 160.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para salir con tu vehiculo",
			Functionmenu = ListVehiclesMenu,
		},
		DeletePoint = {
			Pos = {x = 1695.156,y = 3601.061,z = 35.530},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para devolver tu vehiculo",
			Functionmenu = StockVehicleMenu,
		},
	},
	
	Garage_Centre = {	
		Pos = {x=215.800, y=-810.057, z=30.727},
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Presiona ~INPUT_PICKUP~ para abrir el garaje",
		Functionmenu = OpenMenuGarage,
		SpawnPoint = {
			Pos = {x=229.700, y= -800.1149, z= 30.5722},
			Heading = 160.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para salir con tu vehiculo",
			Functionmenu = ListVehiclesMenu,
		},
		DeletePoint = {
			Pos = {x=215.124, y=-791.377, z=30.646},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para devolver tu vehiculo",
			Functionmenu = StockVehicleMenu,
		}, 	
	},
	 
	-- garaje_redskull = {	
	-- 	Pos = {x=484.11, y=-3137.22, z=6.07},
	-- 	Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
	-- 	Name = 'Garaje',
	-- 	HelpPrompt = "Presiona ~INPUT_PICKUP~ para abrir el garaje",
	-- 	Functionmenu = OpenMenuGarage,
	-- 	SpawnPoint = {
	-- 		Pos = {x=484.97, y= -3161.16, z= 6.07},
	-- 		Heading = 57.24,
	-- 		Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
	-- 		HelpPrompt = "Presiona ~INPUT_PICKUP~ para salir con tu vehiculo",
	-- 		Functionmenu = ListVehiclesMenu,
	-- 	},
	-- 	DeletePoint = {
	-- 		Pos = {x=495.98, y=-3160.52, z=6.07},
	-- 		Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
	-- 		HelpPrompt = "Presiona ~INPUT_PICKUP~ para devolver tu vehiculo",
	-- 		Functionmenu = StockVehicleMenu,
	-- 	},
	-- },	



	Garage_venise = {	
		Pos = {x = -798.93,y = -1418.51,z = 1.6 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Presiona ~INPUT_PICKUP~ para abrir el garaje",
		Functionmenu = OpenMenuGarage,
		SpawnPoint = {
			Pos = {x = -804.5,y = -1431.83,z = 0.6 },
			Heading = 212.26,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para salir con tu vehiculo",
			Functionmenu = ListVehiclesMenu,
		},
		DeletePoint = {
			Pos = {x = -790.6,y = -1442.44,z = 0.9 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para devolver tu vehiculo",
			Functionmenu = StockVehicleMenu,
		}, 	
	},	
	Garage_tequila = {	
		Pos = {x = -570.92272949219,y = 313.41049194336,z = 84.493560791016 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Presiona ~INPUT_PICKUP~ para abrir el garaje",
		Functionmenu = OpenMenuGarage,
		SpawnPoint = {
			Pos = {x = -569.47564697266,y = 323.53549194336,z = 84.474433898926 },
			Heading = 22.52,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para salir con tu vehiculo",
			Functionmenu = ListVehiclesMenu,
		},
		DeletePoint = {
			Pos = {x = -575.66,y = 331.27,z = 84.65 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para devolver tu vehiculo",
			Functionmenu = StockVehicleMenu,
		}, 	
	},		
	Garage_mirrorpark = {	
		Pos = {x = 1033.9229736328,y = -767.10662841797,z = 58.003326416016 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Presiona ~INPUT_PICKUP~ para abrir el garaje",
		Functionmenu = OpenMenuGarage,
		SpawnPoint = {
			Pos = {x = 1040.6834716797,y = -778.18170166016,z = 58.022853851318 },
			Heading = 359.92,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para salir con tu vehiculo",
			Functionmenu = ListVehiclesMenu,
		},
		DeletePoint = {
			Pos = {x = 1022.7816772461,y = -763.78955078125,z = 57.961227416992 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para devolver tu vehiculo",
			Functionmenu = StockVehicleMenu,
		}, 	
	},
	Garage_shandyshoreapt = {	
		Pos = {x = 1702.94,y = 3278.7,z = 41.15 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Presiona ~INPUT_PICKUP~ para abrir el garaje",
		Functionmenu = OpenMenuGarage,
		SpawnPoint = {
			Pos = {x = 1717.58,y = 3254.3,z = 41.13 },
			Heading = 104.62,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para salir con tu vehiculo",
			Functionmenu = ListVehiclesMenu,
		},
		DeletePoint = {
			Pos = {x = 1770.54,y = 3239.84,z = 42.13 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para devolver tu vehiculo",
			Functionmenu = StockVehicleMenu,
		}, 	
	},	
	--[[ Garage_Tournoi = {	
		Pos = {x = 3171.8381347656,y = -1667.3009033203,z = 6.4746117591858 },
		Marker = { w= 1.5, h= 1.0,r = 204, g = 204, b = 0},
		Name = 'Garage',
		HelpPrompt = "Appuyer sur ~INPUT_PICKUP~ pour ouvrir le garage",
		Functionmenu = OpenMenuGarage,
		SpawnPoint = {
			Pos = {x = 3164.1762695313,y = -1667.0953369141,z = 6.4746117591858 },
			Heading = 264.63,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Appuyer sur ~INPUT_PICKUP~ pour sortir votre véhicule",
			Functionmenu = ListVehiclesMenu,
		},
		DeletePoint = {
			Pos = {x = 3158.0983886719,y = -1661.5126953125,z = 7.0836601257324 },
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Appuyer sur ~INPUT_PICKUP~ pour rentrer votre véhicule",
			Functionmenu = StockVehicleMenu,
		}, 	
	},]]		
}

Config.GaragesMecano = {
	Bennys = {
		Name = 'Fourriere Externe',
		SpawnPoint = {
			Pos = {x = 477.729,y = -1888.856,z = 26.094},
			Heading = 303.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para salir con un vehiculo de empresa",
			Functionmenu = ListVehiclesFourriereMenu,
		},
		DeletePoint = {
			Pos = {x = 459.733,y = -1890.335,z = 25.776},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para guardar un vehiculo de empresa",
			Functionmenu = StockVehicleFourriereMenu,
		}, 	
	},		
	police = {
		Name = 'Fourriere Externe',
		SpawnPoint = {
			Pos = {x = 449.253,y = -1024.322,z = 28.57},
			Heading = 100.0,
			Marker = { w= 1.5, h= 1.0,r=0,g=255,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para salir con un vehiculo de empresa",
			Functionmenu = ListVehiclesFourriereMenu,
		},
		DeletePoint = {
			Pos = {x = 452.305,y = -996.752,z = 25.776},
			Marker = { w= 1.5, h= 1.0,r=255,g=0,b=0},
			HelpPrompt = "Presiona ~INPUT_PICKUP~ para guardar un vehiculo de empresa",
			Functionmenu = StockVehicleFourriereMenu,
		}, 

	},	
	--[[ Bennys2 = {
		Marker = 1,
		SpawnPoint = {
			Pos = {x=-190.455, y= -1290.654, z= 30.295},
			Color = {r=0,g=255,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		},
		DeletePoint = {
			Pos = {x=-190.379, y=-1284.667, z=30.233},
			Color = {r=255,g=0,b=0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 1
		}, 	
	},]]
}
