Config.Stations.burton = {

	Label = _U('burton-station-label'),
	Code = _U('burton-station-code'),
	--This value will only be used if Config.PriceOverride is set to nil
	Price = 15,

	BlipInfo = {
		Sprite = 480,
		Color = 4,
		Pos = {x = -244.46, y = -334.29, z = 30.00}
	},

	Zones = {
		Ticket1 = {
			Pos = {x = -278.40, y = -303.03, z = 17.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket2 = {
			Pos = {x = -279.64, y = -303.71, z = 17.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket3 = {
			Pos = {x = -280.84, y = -304.27, z = 17.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket4 = {
			Pos = {x = -282.10, y = -304.77, z = 17.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket5 = {
			Pos = {x = -273.41, y = -319.87, z = 17.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket6 = {
			Pos = {x = -273.41, y = -321.17, z = 17.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket7 = {
			Pos = {x = -273.41, y = -322.64, z = 17.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket8 = {
			Pos = {x = -273.41, y = -324.04, z = 17.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Bench01 = {
			Pos ={x = -293.36, y = -299.64, z = 10.00, h = 271.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench02 = {
			Pos ={x = -293.36, y = -307.87, z = 10.00, h = 271.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench03 = {
			Pos ={x = -293.38, y = -323.09, z = 10.00, h = 271.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench04 = {
			Pos ={x = -293.38, y = -324.85, z = 10.00, h = 271.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench05 = {
			Pos ={x = -293.38, y = -340.10, z = 10.00, h = 271.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench06 = {
			Pos ={x = -293.35, y = -341.78, z = 10.00, h = 271.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench07 = {
			Pos ={x = -295.91, y = -307.83, z = 10.00, h = 96.18},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench08 = {
			Pos ={x = -295.91, y = -299.67, z = 10.00, h = 96.18},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},


		Arrivals = {
			Pos ={x = -298.42, y = -302.11, z = 10.00, h = 187.30},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'arrivals',
			Marker = 0,
			Text = nil
		}	
	}
}