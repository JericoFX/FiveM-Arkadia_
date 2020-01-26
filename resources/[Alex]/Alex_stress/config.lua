Config = {}
--Estrés de normal
Config.IsNormalActive = true
Config.StressPerSeconds = 3
Config.SecondsForStress = 350

--Estrés después de revivir
Config.StressAfterRevive = 0

--Estrés conduciendo
Config.IsSpeedActive = true
Config.SpeedNeededToBeStressed = 150
Config.SecondsToBeDamagedBySpeed = 50
Config.DamageForSpeed = 1

--Estrés Disparando
Config.IsShootsActive = true
Config.ShootsNeeded = 5
Config.DamageForShooting = 1

Config.ShakeMultiplierEffect = 10

--Zonas de estrés
Config.StressZones = {
    {
        name = 'Garaje',
        x = 227.08,
        y = -791.05,
        z = 36.67,
        radio = 35.0,
        stressPerSeconds = 7,
        seconds = 45
    },
	{
        name = 'sedemafiabatumonohuevo',
        x = -1520.1,
        y = 127.52,
        z = 50.05,
        radio = 90.0,
        stressPerSeconds = 7,
        seconds = 45
    }
}

--Zonas de relax
Config.RelaxZones = {
    {
        name = 'Mecanico',
        x = -372.29,
        y = -123.01,
        z = 38.68,
        radio = 35.0,
        stressPerSeconds = 7,
        seconds = 80
    },
	{
        name = 'SedeMafiadeltontodevellom',
        x = -1877.04,
        y = 2081.34,
        z = 141.24,
        radio = 5.0,
        stressPerSeconds = 7,
        seconds = 80
    },
	{
        name = 'sedemafiosabatumonohuevo',
        x = -1469.5,
        y = 178.47,
        z = 54.56,
        radio = 35.0,
        stressPerSeconds = 7,
        seconds = 80
    },
	{
        name = 'badulake',
        x = -711.99,
        y = -918.43,
        z = 19.01,
        radio = 35.0,
        stressPerSeconds = 7,
        seconds = 80
    },
	{
        name = 'Mecanico1',
        x = -327.03,
        y = -144.25,
        z = 39.06,
        radio = 5.0,
        stressPerSeconds = 25,
        seconds = 15
    },
	{
        name = 'Playa',
        x = -2390.09,
        y = -654.63,
        z = 10.48,
        radio = 350.0,
        stressPerSeconds = 7,
        seconds = 45
    }
}