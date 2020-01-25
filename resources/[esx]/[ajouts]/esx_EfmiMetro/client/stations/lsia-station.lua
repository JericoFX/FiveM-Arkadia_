Config.Stations.lsia = {

	Label = _U('lsia-station-label'),
	Code = _U('lsia-station-code'),
	--This value will only be used if Config.PriceOverride is set to nil
	Price = 15,

	BlipInfo = {
		Sprite = 480,
		Color = 4,
		Pos = {x = -1041.06, y = -2743.61, z = 13.00}
	},

	Zones = {
		Ticket1 = {
			Pos = {x = -1014.16, y = -2758.22, z = -0.20},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket2 = {
			Pos = {x = -1013.30, y = -2757.17, z = -0.20},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket3 = {
			Pos = {x = -1012.48, y = -2756.09, z = -0.20},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket4 = {
			Pos = {x = -1011.58, y = -2755.00, z = -0.20},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket5 = {
			Pos = {x = -1062.63, y = -2724.03, z = -0.20},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket6 = {
			Pos = {x = -1061.78, y = -2722.95, z = -0.20},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket7 = {
			Pos = {x = -1063.51, y = -2725.13, z = -0.20},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket8 = {
			Pos = {x = -1064.43, y = -2726.18, z = -0.20},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Bench01 = {
			Pos ={x = -1064.07, y = -2694.63, z = -7.50, h = 226.06},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench02 = {
			Pos ={x = -1069.36, y = -2700.93, z = -7.50, h = 226.06},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench03 = {
			Pos ={x = -1079.26, y = -2712.65, z = -7.50, h = 226.06},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench04 = {
			Pos ={x = -1080.34, y = -2713.93, z = -7.50, h = 226.06},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench05 = {
			Pos ={x = -1090.15, y = -2725.63, z = -7.50, h = 226.06},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench06 = {
			Pos ={x = -1091.31, y = -2727.01, z = -7.50, h = 226.06},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench07 = {
			Pos ={x = -1071.30, y = -2699.29, z = -7.50, h = 50.93},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench08 = {
			Pos ={x = -1066.00, y = -2692.99, z = -7.50, h = 50.93},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'bench',
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Arrivals = {
			Pos ={x = -1075.30, y = -2712.55, z = -7.41, h = 0.00},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'arrivals',
			Marker = 0,
			Text = nil
		}	
	}
}