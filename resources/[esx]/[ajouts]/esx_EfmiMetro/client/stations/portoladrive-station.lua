Config.Stations.portoladrive = {

	Label = _U('portoladrive-station-label'),
	Code = _U('portoladrive-station-code'),
	--This value will only be used if Config.PriceOverride is set to nil
	Price = 15,

	BlipInfo = {
		Sprite = 480,
		Color = 4,
		Pos = {x = -825.98, y = -112.76, z = 50.00}
	},

	Zones = {
		Ticket1 = {
			Pos = {x = -850.82, y = -132.42, z = 27.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket2 = {
			Pos = {x = -850.16, y = -133.58, z = 27.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket3 = {
			Pos = {x = -849.49, y = -134.74, z = 27.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket4 = {
			Pos = {x = -848.80, y = -135.94, z = 27.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket5 = {
			Pos = {x = -835.55, y = -124.84, z = 27.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket6 = {
			Pos = {x = -834.34, y = -124.14, z = 27.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket7 = {
			Pos = {x = -833.20, y = -123.48, z = 27.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket8 = {
			Pos = {x = -831.93, y = -122.74, z = 27.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Bench01 = {
			Pos ={x = -843.12, y = -152.25, z = 20.00, h = 31.04},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench02 = {
			Pos ={x = -836.02, y = -148.15, z = 20.00, h = 31.04},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench03 = {
			Pos ={x = -822.71, y = -140.53, z = 20.00, h = 31.04},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench04 = {
			Pos ={x = -821.22, y = -139.67, z = 20.00, h = 31.04},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench05 = {
			Pos ={x = -804.94, y = -132.00, z = 20.00, h = 31.04},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench06 = {
			Pos ={x = -806.47, y = -131.15, z = 20.00, h = 31.04},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench07 = {
			Pos ={x = -834.72, y = -150.33, z = 20.00, h = 208.44},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench08 = {
			Pos ={x = -841.87, y = -154.46, z = 20.00, h = 208.44},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Arrivals = {
			Pos ={x = -834.88, y = -153.71, z = 20.00, h = 307.83},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'arrivals',
			Marker = 0,
			Text = nil
		}	
	}
}