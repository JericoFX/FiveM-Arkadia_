Config = {}
Config.Locale = 'en'

Config.DoorList = {

	--
	-- Mission Row First Floor
	--
	

	-- Entrance Doors
	{
		objName = 'v_ilev_ph_door01',
		objCoords  = {x = 434.747, y = -980.618, z = 30.839},
		textCoords = {x = 434.747, y = -981.50, z = 31.50},
		authorizedJobs = {'police','offpolice'},
		locked = false,
		distance = 5.0
	},
	--- {
	--- 	objName = 'prop_gate_military_01',
	--- 	objCoords  = {x = 410.078, y = -1025.588, z = 28.39},
	--- 	textCoords = {x = 412.078, y = -1025.588, z = 30.39},
	--- 	authorizedJobs = {'police','offpolice'},
	--- 	locked = true,
	--- 	distance = 15.0
	--- },
	--- {
	--- 	objName = 'v_ilev_staffdoor',
	--- 	objCoords  = {x = 424.0972, y = -998.866, z = 30.867},
	--- 	textCoords = {x = 424.0972, y = -998.866, z = 30.867},
	--- 	authorizedJobs = {'police','offpolice'},
	--- 	locked = true,
		--- distance = 1.3
	--- },
	{
		objName = 'v_ilev_ph_door002',
		objCoords  = {x = 434.747, y = -983.215, z = 30.839},
		textCoords = {x = 434.747, y = -982.50, z = 31.50},
		authorizedJobs = {'police','offpolice'},
		locked = false,
		distance = 5.0
	},

	-- To locker room & roof
	{
		objName = 'v_ilev_ph_gendoor004',
		objCoords  = {x = 449.698, y = -986.469, z = 30.689},
		textCoords = {x = 450.104, y = -986.388, z = 31.739},
		authorizedJobs = {'police','offpolice'},
		locked = true
	},

	-- Rooftop
	{
		objName = 'v_ilev_gtdoor02',
		objCoords  = {x = 464.361, y = -984.678, z = 43.834},
		textCoords = {x = 464.361, y = -984.050, z = 44.834},
		authorizedJobs = {'police','offpolice'},
		locked = true
	},

	-- Hallway to roof
	{
		objName = 'v_ilev_arm_secdoor',
		objCoords  = {x = 461.286, y = -985.320, z = 30.839},
		textCoords = {x = 461.50, y = -986.00, z = 31.50},
		authorizedJobs = {'police','offpolice'},
		locked = true
	},

	-- Armory
	
 -- Captain Office
	{
		objName = 'v_ilev_ph_gendoor002',
		objCoords  = {x = 447.238, y = -980.630, z = 30.689},
		textCoords = {x = 447.200, y = -980.010, z = 31.739},
		authorizedJobs = {'police','offpolice'},
		locked = true
	},

	-- To downstairs (double doors)
	{
		objName = 'v_ilev_ph_gendoor005',
		objCoords  = {x = 443.97, y = -989.033, z = 30.6896},
		textCoords = {x = 444.020, y = -989.445, z = 31.739},
		authorizedJobs = {'police','offpolice'},
		locked = true,
		distance = 3.0
	},

	{
		objName = 'v_ilev_ph_gendoor005',
		objCoords  = {x = 445.37, y = -988.705, z = 30.6896},
		textCoords = {x = 445.350, y = -989.445, z = 31.739},
		authorizedJobs = {'police','offpolice'},
		locked = true,
		distance = 3.0
	},

	-- 
	-- Mission Row Cells
	--

	-- Main Cells
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 463.815, y = -992.686, z = 24.9149},
		textCoords = {x = 463.30, y = -992.686, z = 25.10},
		authorizedJobs = {'police','offpolice'},
		locked = true
	},
	
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 481.94, y = -991.35, z = 24.91},
		textCoords = {x = 481.94, y = -991.35, z = 24.91},
		authorizedJobs = {'police','offpolice'},
		locked = true
	},
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 481.72, y = -988.72, z = 24.91},
		textCoords = {x = 481.72, y = -988.72, z = 24.91},
		authorizedJobs = {'police','offpolice'},
		locked = true
	},
	{
        objName = 'v_ilev_gtdoor',
        objCoords  = {x = 467.93, y = -996.65, z = 24.91},
        textCoords = {x = 467.93, y = -996.65, z = 24.91},
        authorizedJobs = {'police','offpolice'},
        locked = true,
        distance = 2
    },
	{
        objName = 'v_ilev_gtdoor',
        objCoords  = {x = 476.51, y = -996.65, z = 24.91},
        textCoords = {x = 476.51, y = -996.65, z = 24.91},
        authorizedJobs = {'police','offpolice'},
        locked = true,
        distance = 2
    },
	{
        objName = 'v_ilev_gtdoor',
        objCoords  = {x = 480.71, y = -996.65, z = 24.91},
        textCoords = {x = 480.71, y = -996.65, z = 24.91},
        authorizedJobs = {'police','offpolice'},
        locked = true,
        distance = 2
    },
	{
        objName = 'v_ilev_gtdoor',
        objCoords  = {x = 472.25, y = -996.65, z = 24.91},
        textCoords = {x = 472.25, y = -996.65, z = 24.91},
        authorizedJobs = {'police','offpolice'},
        locked = true,
        distance = 2
    },
	-- Cell 1
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.381, y = -993.651, z = 24.914},
		textCoords = {x = 461.806, y = -993.308, z = 25.064},
		authorizedJobs = {'police','offpolice'},
		locked = true
	},

	-- Cell 2
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.331, y = -998.152, z = 24.914},
		textCoords = {x = 461.806, y = -998.800, z = 25.064},
		authorizedJobs = {'police','offpolice'},
		locked = true
	},

	-- Cell 3
	{
		objName = 'v_ilev_ph_cellgate',
		objCoords  = {x = 462.704, y = -1001.92, z = 24.9149},
		textCoords = {x = 461.806, y = -1002.450, z = 25.064},
		authorizedJobs = {'police','offpolice'},
		locked = true
	},

	-- To Back
	{
        objName = 'v_ilev_gtdoor',
        objCoords  = {x = 463.478, y = -1003.538, z = 25.005},
        textCoords = {x = 464.00, y = -1003.50, z = 25.50},
        authorizedJobs = {'police','offpolice'},
        locked = true
    },
 
	{
		objName = 'v_ilev_gtdoor',
		objCoords  = {x = 452.6, y = -982.7, z = 30.6},
		textCoords = {x = 453.0, y = -982.6, z = 31.1},
		authorizedJobs = {'police','offpolice'},
		locked = true
	},

	--
	-- Mission Row Back
	-- INTERROGATORIAS
	 {
        objName = 'v_ilev_gtdoor',
        objCoords  = {x = 480.8, y = -1003.29, z = 24.91},
        textCoords = {x = 480.8, y = -1003.29, z = 24.91},
        authorizedJobs = {'police','offpolice'},
        locked = true,
        distance = 2
    },
	{
        objName = 'v_ilev_gtdoor',
        objCoords  = {x = 476.33, y = -1003.29, z = 24.91},
        textCoords = {x = 476.33, y = -1003.29, z = 24.91},
        authorizedJobs = {'police','offpolice'},
        locked = true,
        distance = 2
    },
	{
        objName = 'v_ilev_gtdoor',
        objCoords  = {x = 472.22, y = -1003.29, z = 24.91},
        textCoords = {x = 472.22, y = -1003.29, z = 24.91},
        authorizedJobs = {'police','offpolice'},
        locked = true,
        distance = 2
    },
	-- Back (double doors)
	{
		objName = 'v_ilev_rc_door2',
		objCoords  = {x = 467.371, y = -1014.452, z = 26.536},
		textCoords = {x = 468.09, y = -1014.452, z = 27.1362},
		authorizedJobs = {'police','offpolice'},
		locked = true,
		distance = 4
	},
	{
        objName = 'v_ilev_gtdoor',
        objCoords  = {x = 467.81, y = -1003.29, z = 24.91},
        textCoords = {x = 467.81, y = -1003.29, z = 24.91},
        authorizedJobs = {'police','offpolice'},
        locked = true,
        distance = 2
    },

	{
		objName = 'v_ilev_rc_door2',
		objCoords  = {x = 469.967, y = -1014.452, z = 26.536},
		textCoords = {x = 469.35, y = -1014.452, z = 27.136},
		authorizedJobs = {'police','offpolice'},
		locked = true,
		distance = 4
	},

	-- Back Gate
	{
		objName = 'hei_prop_station_gate',
		objCoords  = {x = 488.894, y = -1017.210, z = 27.146},
		textCoords = {x = 488.894, y = -1020.210, z = 30.00},
		authorizedJobs = {'police','offpolice'},
		locked = true,
		distance = 14,
		size = 2
	},
	-- APARCAMIENTO
    {
        objName = 'v_ilev_gtdoor',
        objCoords  = {x = 446.21, y = -999.04, z = 30.7},
        textCoords = {x = 447.31, y = -999.04, z = 30.7},
        authorizedJobs = {'police','offpolice'},
        locked = true,
        distance = 2.5
    },
 
    {
        objName = 'v_ilev_gtdoor',
        objCoords  = {x = 445.56, y = -999.04, z = 30.7},
        textCoords = {x = 444.66, y = -999.04, z = 30.7},
        authorizedJobs = {'police','offpolice'},
        locked = true,
        distance = 2.5
    },
  --- ESCALERAS LATERAL 
  {
        objName = 'v_ilev_ph_gendoor006',
        objCoords  = {x = 443.15, y = -992.80, z = 30.7},
        textCoords = {x = 443.15, y = -992.80, z = 30.7},
        authorizedJobs = {'police','offpolice'},
        locked = true,
        distance = 1
    },
 
    {
        objName = 'v_ilev_ph_gendoor006',
        objCoords  = {x = 443.15, y = -993.70, z = 30.7},
        textCoords = {x = 443.15, y = -993.70, z = 30.7},
        authorizedJobs = {'police','offpolice'},
        locked = true,
        distance = 1
    },
	--
	-- Sandy Shores
	--

	-- Entrance
	{
		objName = 'v_ilev_shrfdoor',
		objCoords  = {x = 1855.105, y = 3683.516, z = 34.266},
		textCoords = {x = 1855.105, y = 3683.516, z = 35.00},
		authorizedJobs = {'police','offpolice'},
		locked = false
	},

	--
	-- Paleto Bay
	--

	-- Entrance (double doors)
	{
		objName = 'v_ilev_shrf2door',
		objCoords  = {x = -443.14, y = 6015.685, z = 31.716},
		textCoords = {x = -443.14, y = 6015.685, z = 32.00},
		authorizedJobs = {'police','offpolice'},
		locked = false,
		distance = 2.5
	},

	{
		objName = 'v_ilev_shrf2door',
		objCoords  = {x = -443.951, y = 6016.622, z = 31.716},
		textCoords = {x = -443.951, y = 6016.622, z = 32.00},
		authorizedJobs = {'police','offpolice'},
		locked = false,
		distance = 2.5
	},

	--
	-- Bolingbroke Penitentiary
	--

	-- Entrance (Two big gates)
	{
		objName = 'prop_gate_prison_01',
		objCoords  = {x = 1844.998, y = 2604.810, z = 44.638},
		textCoords = {x = 1844.998, y = 2608.50, z = 48.00},
		authorizedJobs = {'police','offpolice'},
		locked = true,
		distance = 12,
		size = 2
	},

	{
		objName = 'prop_gate_prison_01',
		objCoords  = {x = 1818.542, y = 2604.812, z = 44.611},
		textCoords = {x = 1818.542, y = 2608.40, z = 48.00},
		authorizedJobs = {'police','offpolice'},
		locked = true,
		distance = 12,
		size = 2
	},

	{
		objName = 'v_ilev_roc_door4',
		objCoords  = {x = -6.35, y = 2604.812, z = 44.611},
		textCoords = {x = 1818.542, y = 2608.40, z = 48.00},
		authorizedJobs = {'police','offpolice'},
		locked = true,
		distance = 12,
		size = 2
	},

	{
		objName = 'v_ilev_roc_door4',
		objCoords  = {x = 1818.542, y = 2604.812, z = 44.611},
		textCoords = {x = 1818.542, y = 2608.40, z = 48.00},
		authorizedJobs = {'police','offpolice'},
		locked = true,
		distance = 12,
		size = 2
	},

	--Mecánico
	{
		objName = 'prop_com_ls_door_01',
		objCoords  = {x = -356.09, y = -134.77, z = 40.01},
		textCoords = {x = -356.09, y = -135.77, z = 41.01},
		authorizedJobs = {'mechanic','offmechanic'},
		locked = false,
		distance = 25.5
	},

	--TAXIS
		--LATERAL
	--[[{
		objName = 'v_ilev_gtdoor02',
		objCoords  = {x = -1042.51, y = -240.69, z = 38.11},
		textCoords = {x = -1042.51, y = -239.69, z = 38.11},
		authorizedJobs = {'taxi','offtaxi'},
		locked = true,
		distance = 2.5
	},]]--

	--PRINCIPAL
	{
		objName = 'v_ilev_fb_doorshortr',
		objCoords  = {x = -1045.51, y = -229.35, z = 39.43},
		textCoords = {x = -1045.51, y = -229.75, z = 39.43},
		authorizedJobs = {'taxi','offtaxi'},
		locked = false,
		distance = 5.9
	},
	--PRINCIPAL 2
	{
		objName = 'v_ilev_fb_doorshortl',
		objCoords  = {x = -1045.51, y = -232.35, z = 39.43},
		textCoords = {x = -1045.48, y = -231.35, z = 39.43},
		authorizedJobs = {'taxi','offtaxi'},
		locked = false,
		distance = 5.9
	},

	--TRASERA 1
	{
		objName = 'v_ilev_fb_door01',
		objCoords  = {x = -1083.62, y = -260.41, z = 38.18},
		textCoords = {x = -1083.62, y = -260.21, z = 38.18},
		authorizedJobs = {'taxi','offtaxi'},
		locked = false,
		distance = 2.5
	},
	--TRASERA 2
	{
		objName = 'v_ilev_fb_door02',
		objCoords  = {x = -1081.62, y = -260.41, z = 38.18},
		textCoords = {x = -1081.62, y = -259.71, z = 38.18},
		authorizedJobs = {'taxi','offtaxi'},
		locked = false,
		distance = 2.5
	},
	-- LATERAL TAXI 
	{
		objName = 'v_ilev_gtdoor02',
		objCoords  = {x = -1042.51, y = -240.69, z = 38.11},
		textCoords = {x = -1042.51, y = -240.69, z = 38.11},
		authorizedJobs = {'taxi','offtaxi'},
		locked = true,
		distance = 2.5
	},
	--BENNYS
		--PRINCI
	{
		objName = 'lr_prop_supermod_door_01',
		objCoords  = {x = -205.68, y = -1310.68, z = 30.29},
		textCoords = {x = -205.68, y = -1310.68, z = 32.29},
		authorizedJobs = {'mechanic','offmechanic'},
		locked = false,
		distance = 50.5
	},
	-- VANILA DELANTERA
	{
		objName = 'prop_strip_door_01',
		objCoords  = {x = 127.95, y = -1298.50, z = 29.41},
		textCoords = {x = 127.95, y = -1298.50, z = 29.41},
		authorizedJobs = { 'unicorn' },
		locked = true,
		distance = 2.5
	},
	-- VANILA INTERIOR
	{
		objName = 'v_ilev_door_orangesolid',
		objCoords  = {x = 113.98, y = -1297.43, z = 29.41},
		textCoords = {x = 113.98, y = -1297.43, z = 29.41},
		authorizedJobs = { 'unicorn' },
		locked = true,
		distance = 2.5
	},
		-- VANILA TRASERA 95.323188781738,-1285.0803222656,29.277654647827
	{
		objName = 'prop_magenta_door',
		objCoords  = {x = 96.091, y = -1284.854, z = 29.43},
		textCoords = {x = 96.091, y = -1284.854, z = 29.43},
		authorizedJobs = { 'unicorn' },
		locked = true,
		distance = 2.5
	},
		-- BAHAMAS ENTRADA
	{
		objName = 'v_ilev_ph_gendoor006',
		objCoords  = {x = -1393.50, y = -591.15, z = 30.46},
		textCoords = {x = -1393.50, y = -591.15, z = 30.46},
		authorizedJobs = { 'bahama_mamas' },
		locked = true,
		distance = 2.5
	},
	
	{
		objName = 'v_ilev_ph_gendoor006',
		objCoords  = {x = -1391.50, y = -592.73, z = 30.32},
		textCoords = {x = -1391.50, y = -592.73, z = 30.32},
		authorizedJobs = { 'bahama_mamas' },
		locked = true,
		distance = 2.5
	},
		-- TEKILALA DELANTERA
	{
		objName = 'v_ilev_roc_door4',
		objCoords  = {x = -566.17, y = 276.62, z = 83.26},
		textCoords = {x = -566.17, y = 276.62, z = 83.26},
		authorizedJobs = { 'tequilala' },
		locked = false,
		distance = 2.5
	},
		-- TEKILALA TRASERA
	{
		objName = 'v_ilev_roc_door4',
		objCoords  = {x = -561,2866, y = 293,5044, z = 87,77851}, 
		textCoords = {x = -561,2866, y = 293,5044, z = 87,77851},
		authorizedJobs = { 'tequilala' },
		locked = false,
		distance = 2.5
	},
	-- TEKILALA ZONA BAJA
	{
		objName = 'v_ilev_roc_door2',
		objCoords  = {x = -569.79, y = 293.77, z = 79.32},
		textCoords = {x = -569.79, y = 293.77, z = 79.32},
		authorizedJobs = { 'tequilala' },
		locked = false,
		distance = 2.5
	},
	-- YELLOW JACK
	{
		objName = 'v_corp_hicksdoor',
		objCoords  = {x = 1991.10, y = 3053.10, z = 47.36},
		textCoords = {x = 1991.10, y = 3053.10, z = 47.36},
		authorizedJobs = { 'yellowjack' },
		locked = false,
		distance = 2.5
	},
	-------------------GOLPES-----------------------
	-- BANCO CENTRAL ROBO---
	{
	objName = 'hei_v_ilev_bk_gate2_pris',
	objCoords  = {x = 261.99899291992, y = 221.50576782227, z = 106.68346405029},
	textCoords = {x = 261.99899291992, y = 221.50576782227, z = 107.68346405029},
	authorizedJobs = {'police','offpolice'},
	locked = true,
	distance = 12,
	size = 2
	},
	
	--TAXIS PUERTA DE ORDENADORES PARA ATRACO
	{
		objName = 'v_ilev_door_orangesolid',
		objCoords  = {x = -1055.958, y = -236.4251, z = 44.171},
		textCoords = {x = -1055.958, y = -236.4251, z = 44.171},
		authorizedJobs = {'taxi','offtaxi'},
		locked = true,
		distance = 2.5
	},
	------HOSPITAL PILLBOX 
	{
		objName = 'v_ilev_cor_firedoor',
		objCoords  = {x = 342.1784, y = -570.3473, z = 28.81897},
		textCoords = {x = 341.98, y = -571.01, z = 29.3},
		authorizedJobs = {'ambulance','offambulance'},
		locked = true,
		distance = 2.5
	},
	{
		objName = 'v_ilev_cor_firedoor',
		objCoords  = {x = 341.392, y = -572.507173, z = 28.81897},
		textCoords = {x = 341.64, y = -571.85, z = 29.3},
		authorizedJobs = {'ambulance','offambulance'},
		locked = true,
		distance = 2.5
	},
	{
		objName = 'hei_prop_heist_cutscene_doorc_r',
		objCoords  = {x = 321.0088, y = -559.9609, z = 28.88031},
		textCoords = {x = 320.44, y = -560.28, z = 29.3},
		authorizedJobs = {'ambulance','offambulance'},
		locked = true,
		distance = 2.5
	},
	{
		objName = 'hei_prop_heist_cutscene_doorc_r',
		objCoords  = {x = 318.7677, y = -561.0198, z = 28.88031},
		textCoords = {x = 319.37, y = -560.71, z = 29.3},
		authorizedJobs = {'ambulance','offambulance'},
		locked = true,
		distance = 2.5
	},
	{
		objName = 'v_ilev_cor_firedoor',
		objCoords  = {x = 333.7885, y = -593.4055, z = 28.80277},
		textCoords = {x = 334.1, y = -592.72, z = 29.3},
		authorizedJobs = {'ambulance','offambulance'},
		locked = true,
		distance = 2.5
	},
	{
		objName = 'v_ilev_cor_firedoor',
		objCoords  = {x = 334.5754, y = -591.2445, z =28.80277},
		textCoords = {x = 334.37, y = -591.79, z = 29.3},
		authorizedJobs = {'ambulance','offambulance'},
		locked = true,
		distance = 2.5
	},
	{
		objName = 'v_ilev_cor_firedoorwide',
		objCoords  = {x = 337.2274, y = -584.0469, z =28.81494},
		textCoords = {x = 337.5, y = -583.28, z = 29.3},
		authorizedJobs = {'ambulance','offambulance'},
		locked = true,
		distance = 2.5
	}
}