Config.Stations.davis = {

	Label = _U('davis-station-label'),
	Code = _U('davis-station-code'),
	--This value will only be used if Config.PriceOverride is set to nil
	Price = 15,

	BlipInfo = {
		Sprite = 480,
		Color = 4,
		Pos = {x = 115.87, y = -1724.59, z = 30.11}
	},

	Zones = {
		Ticket1 = {
			Pos = {x = 114.87, y = -1723.85, z = 29.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket2 = {
			Pos = {x = 115.82, y = -1724.66, z = 29.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket3 = {
			Pos = {x = 116.85, y = -1725.40, z = 29.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket4 = {
			Pos = {x = 117.74, y = -1726.13, z = 29.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket5 = {
			Pos = {x = 116.28, y = -1728.04, z = 29.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket6 = {
			Pos = {x = 115.29, y = -1727.25, z = 29.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket7 = {
			Pos = {x = 114.30, y = -1726.48, z = 29.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket8 = {
			Pos = {x = 113.43, y = -1725.63, z = 29.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Bench01 = {
			Pos ={x = 118.87, y = -1728.59, z = 30.00, h = 325.16},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench02 = {
			Pos ={x = 121.49, y = -1730.98, z = 30.00, h = 325.16},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench03 = {
			Pos ={x = 112.26, y = -1723.17, z = 30.00, h = 325.16},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench04 = {
			Pos ={x = 109.55, y = -1720.99, z = 30.00, h = 325.16},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Arrivals = {
			Pos ={x = 131.22, y = -1739.21, z = 30.11, h = 235.56},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'arrivals',
			Marker = 0,
			Text = nil
		}	
	}
}