Config = {}

Config.Locale = 'en'

Config.Delays = {
	WeedProcessing = 1000 * 1
}

Config.DrugDealerItems = {
	marijuana = 250
}
Config.CallCops           = true -- Set to true if you want cops to be alerted when chopping is in progress
Config.CallCopsPercent    = 2 -- (min1) if 1 then cops will be called every time=100%, 2=50%, 3=33%, 4=25%, 5=20%.
Config.tarlablip = false

Config.LicenseEnable = false -- enable processing licenses? The player will be required to buy a license in order to process drugs. Requires esx_license
Config.LicensePrices = {
	weed_processing = {label = _U('license_weed'), price = 60000}
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.CircleZones2 ={
WeedField = {coords = vector3(2037.44, 4909.71, 41.68), name = _U('blip_weedfield'), color = 0, sprite = 496, radius = 100},
}
Config.CircleZones = {
	WeedProcessing = {coords = vector3(2328.9, 2571.37, 46.68), name = _U('blip_weedprocessing'), color = 25, sprite = 496, radius = -1},
	DrugDealer = {coords = vector3(1127.87, -1993.56, 32.06), name = _U('blip_drugdealer'), color = 1, sprite = 496, radius = -1},
}