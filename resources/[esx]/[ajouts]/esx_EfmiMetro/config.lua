Config = {}
Config.DrawDistance = {}
Config.Stations = {}

--===General===--
Config.Locale = 'en'
Config.ShowWaitTimerToPlayer = true

--When this is not nil it will overwrite all station prices to equal set value.
Config.PriceOverride = 30

--Minimum train wait time on the station in minutes.
Config.TrainFrequency = 0.2 --min
Config.TravelTime = 8 --sec || Min: 4

--Train Hopping: Player being able to travel without a ticket
Config.TrainHoppingEnabled = true 
Config.TrainHoppingFine = 1500 
Config.TrainHoppingFineChance = 70 --%

--===Graphical===--

--Wait for train text colour
Config.TrainTimerTextColour = { r = 255, b = 255, g = 255, a = 255}
Config.TrainArrivedTextColour = { r = 0, b = 0, g = 255, a = 255}
Config.NoTicketTextColour = { r = 255, b = 0, g = 0, a = 255}

Config.DrawTicketMachineZones = true
--Shows a notification when player approaches ticket machine
Config.ShowTicketMachinePressNotification = true

--Blips
Config.StationBlipScale = 0.8

--Zones
Config.DrawDistance.Zone = 100
Config.DrawDistance.Text = 2