Config.Stations.littleseoul = {

	Label = _U('littleseoul-station-label'),
	Code = _U('littleseoul-station-code'),
	--This value will only be used if Config.PriceOverride is set to nil
	Price = 17,

	BlipInfo = {
		Sprite = 480,
		Color = 4,
		Pos = {x = -491.22, y = -697.96, z = 33.24},
		Name = 'Little Seoulin Metroasema'
	},

	Zones = {
		Ticket1 = {
			Pos = {x = -464.86, y = -701.21, z = 19.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket2 = {
			Pos = {x = -464.86, y = -702.54, z = 19.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket3 = {
			Pos = {x = -464.86, y = -704.00, z = 19.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket4 = {
			Pos = {x = -464.86, y = -705.30, z = 19.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket5 = {
			Pos = {x = -490.48, y = -694.32, z = 19.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket6 = {
			Pos = {x = -491.93, y = -694.42, z = 19.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket7 = {
			Pos = {x = -493.30, y = -694.40, z = 19.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Ticket8 = {
			Pos = {x = -494.65, y = -694.33, z = 19.00},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "ticket",
			Marker = 1,
			Text = nil
		},

		Bench1 = {
			Pos ={x = -478.61, y = -674.37, z = 11.00, h = 181.52},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench2 = {
			Pos ={x = -478.53, y = -671.83, z = 11.00, h = 2.62},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench3 = {
			Pos ={x = -470.22, y = -671.83, z = 11.00, h = 11.41},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench4 = {
			Pos ={x = -512.56, y = -674.35, z = 11.00, h = 184.18},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench5 = {
			Pos ={x = -510.79, y = -674.35, z = 11.00, h = 184.18},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench6 = {
			Pos ={x = -495.50, y = -674.35, z = 11.00, h = 184.18},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench7 = {
			Pos ={x = -493.95, y = -674.35, z = 11.00, h = 184.18},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Bench8 = {
			Pos ={x = -470.37, y = -674.35, z = 11.00, h = 184.18},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = "bench",
			Marker = 0,
			Text = _U('sit-on-bench') .. ' ' .. '[E]'
		},

		Arrivals = {
			Pos ={x = -479.56, y = -669.55, z = 11.81, h = 116.05},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 204, b = 0},
			Type = 'arrivals',
			Marker = 0,
			Text = nil
		},

		FastTravel01 = {
			Pos ={x = -491.22, y = -697.96, z = 32.00, h = 1.91},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 0, b = 204},
			Type = 'fast-travel',
			Marker = 1,
			Text = nil,
			TargetPos = {x = -468.72, y = -710.38, z = 19.00, h = 11.09}
		},

		FastTravel02 = {
			Pos = {x = -468.72, y = -710.38, z = 19.00, h = 11.09},
			Size = {x = 1.0, y = 1.0, z = 1.0},
			Color = {r = 204, g = 0, b = 204},
			Type = 'fast-travel',
			Marker = 1,
			Text = nil,
			TargetPos = {x = -491.22, y = -697.96, z = 31.50, h = 1.91}
		}
	}
}