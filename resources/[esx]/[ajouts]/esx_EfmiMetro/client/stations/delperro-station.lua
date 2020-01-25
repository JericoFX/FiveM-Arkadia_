Config.Stations.delperro = {

	Label = _U('delperro-station-label'),
	Code = _('delperro-station-code'),
	--This value will only be used if Config.PriceOverride is set to nil
	Price = 17,

	BlipInfo = {
		Sprite = 480,
		Color = 4,
		Pos = {x = -1368.22, y = -528.96, z = 30.31},
		Name = 'Del Perron Metroasema'
	},

	Zones = {
		Ticket1 = {
			Pos = {x = -1342.88, y = -505.54, z = 22.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket2 = {
			Pos = {x = -1342.27, y = -506.68, z = 22.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket3 = {
			Pos = {x = -1341.54, y = -507.83, z = 22.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket4 = {
			Pos = {x = -1340.82, y = -509.11, z = 22.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket5 = {
			Pos = {x = -1364.76, y = -484.44, z = 22.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket6 = {
			Pos = {x = -1365.45, y = -483.27, z = 22.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket7 = {
			Pos = {x = -1366.21, y = -482.03, z = 22.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket8 = {
			Pos = {x = -1366.82, y = -480.87, z = 22.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Bench1 = {
			Pos ={x = -1335.13, y = -490.73, z = 15.00, h = 306.12},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench2 = {
			Pos ={x = -1339.25, y = -483.63, z = 15.00, h = 306.12},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench3 = {
			Pos ={x = -1341.44, y = -484.91, z = 15.00, h = 121.97},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench4 = {
			Pos ={x = -1337.36, y = -491.98, z = 15.00, h = 121.97},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench5 = {
			Pos ={x = -1349.10, y = -471.55, z = 15.00, h = 121.97},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench6 = {
			Pos ={x = -1349.90, y = -470.55, z = 15.00, h = 121.97},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench7 = {
			Pos ={x = -1357.59, y = -456.84, z = 15.00, h = 121.97},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench8 = {
			Pos ={x = -1358.43, y = -455.39, z = 15.00, h = 121.97},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},


		Arrivals = {
			Pos ={x = -1336.48, y = -483.26, z = 15.05, h = 34.79},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'arrivals',
			Marker = 0,
			Text = nil
		}
	}
}