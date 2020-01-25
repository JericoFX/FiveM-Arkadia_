Config.Stations.lsiaparking = {

	Label = _U('lsiaparking-station-label'),
	Code = _U('lsiaparking-station-code'),
	--This value will only be used if Config.PriceOverride is set to nil
	Price = 15,

	BlipInfo = {
		Sprite = 480,
		Color = 4,
		Pos = {x = -950.32, y = -2337.15, z = 5.01}
	},

	Zones = {
		Ticket1 = {
			Pos = {x = -909.65, y = -2354.07, z = -4.60},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket2 = {
			Pos = {x = -909.19, y = -2352.73, z = -4.60},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket3 = {
			Pos = {x = -908.73, y = -2351.45, z = -4.60},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket4 = {
			Pos = {x = -908.20, y = -2350.17, z = -4.60},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket5 = {
			Pos = {x = -906.27, y = -2319.83, z = -4.60},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket6 = {
			Pos = {x = -905.75, y = -2318.55, z = -4.60},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket7 = {
			Pos = {x = -905.29, y = -2317.31, z = -4.60},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket8 = {
			Pos = {x = -904.85, y = -2315.95, z = -4.60},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Bench01 = {
			Pos ={x = -891.56, y = -2337.99, z = -12.00, h = 71.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench02 = {
			Pos ={x = -894.38, y = -2345.73, z = -12.00, h = 71.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench03 = {
			Pos ={x = -891.99, y = -2346.59, z = -12.00, h = 253.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench04 = {
			Pos ={x = -889.17, y = -2338.85, z = -12.00, h = 253.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench05 = {
			Pos ={x = -886.29, y = -2323.66, z = -12.00, h = 70.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench06 = {
			Pos ={x = -885.68, y = -2321.99, z = -12.00, h = 70.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench07 = {
			Pos ={x = -880.46, y = -2307.66, z = -12.00, h = 70.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench08 = {
			Pos ={x = -879.87, y = -2306.03, z = -12.00, h = 70.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},


		Arrivals = {
			Pos ={x = -895.85, y = -2340.88, z = -11.73, h = 305.22},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'arrivals',
			Marker = 0,
			Text = nil
		}	
	}
}