-- TriggerEvent('esx_policedog:openMenu') to open menu

Config = {
    Job = 'police',
    Command = 'policedog', -- set to false if you dont want to have a command
    Model = 351016938,
    TpDistance = 50.0,
    Sit = {
        dict = 'creatures@rottweiler@amb@world_dog_sitting@base',
        anim = 'base'
    },
    Drugs = {'weed', 'weed_pooch', 'coca', 'skladniki', 'weapon_shit', 'aditives', 'opium', 'opium_pooch', 'aceton', 'pseudoefedryna', 'cocaplant', 'cocaseed', 'coke', 'nevadito', 'coke_pooch', 'cocawithout', 'meth_pooch', 'meth'}, -- add all drugs here for the dog to detect
}

Strings = {
    ['not_police'] = 'Usted ~r~no ~s~es un oficial!',
    ['menu_title'] = 'Perro policía',
    ['take_out_remove'] = 'Sacar / quitar perro policía',
    ['deleted_dog'] = 'Retirado el perro policía',
    ['spawned_dog'] = 'Creó un perro policía',
    ['sit_stand'] = 'Hacer que el perro se siente / se pare',
    ['no_dog'] = "No tienes perro!",
    ['dog_dead'] = 'Tu perro esta muerto :/',
    ['search_drugs'] = 'Buscar el jugador más cercano para las drogas',
    ['no_drugs'] = 'No se encontraron drogas.', 
    ['drugs_found'] = 'Drogas encontradas',
    ['dog_too_far'] = 'El perro está muy lejos!',
    ['attack_closest'] = 'Ataca al jugador más cercano'
}