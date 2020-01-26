Config = {}
Config.Locale = "pl"
--You can add here buttons like inventory menu button. When player click this button, then action will be cancel.
Config.cancel_buttons = {289, 170, 168, 56}

options =
{
  ['seed_weed'] = {
        object = 'prop_weed_01',
        end_object = 'prop_weed_02',
        fail_msg = 'Desafortunadamente, tu planta se ha marchitado!',
        success_msg = '¡Felicidades, hiciste la cosecha de la planta!',
        start_msg = 'Comienzas a cultivar plantas.',
        success_item = 'weed',
        cops = 0,
        first_step = 2.35,
        steps = 7,
        cords = {
          {x = -427.05, y = 1575.25, z = 357, distance = 20.25},
          {x = 3283.86, y = 5182.46, z = 18.42, distance = 10.25},
          {x = 1198.05, y = -215.25, z = 55, distance = 20.25},
          {x = 706.05, y = 1269.25, z = 358, distance = 10.25},
        },
        animations_start = {
          {lib = 'amb@world_human_gardener_plant@male@enter', anim = 'enter', timeout = '2500'},
          {lib = 'amb@world_human_gardener_plant@male@idle_a', anim = 'idle_a', timeout = '2500'},
        },
        animations_end = {
          {lib = 'amb@world_human_gardener_plant@male@exit', anim ='exit', timeout = '2500'},
          {lib = 'amb@world_human_cop_idles@male@idle_a', anim ='idle_a', timeout = '2500'},
        },
        animations_step = {
          {lib = 'amb@world_human_gardener_plant@male@enter', anim = 'enter', timeout = '2500'},
          {lib = 'amb@world_human_gardener_plant@male@idle_a', anim ='idle_a', timeout = '18500'},
          {lib = 'amb@world_human_gardener_plant@male@exit', anim ='exit', timeout = '2500'},
        },
        grow = {
          2.24, 1.95, 1.65, 1.45, 1.20, 1.00
        },
        questions = {
            {
                title = 'Ves que tu planta brota, ¿qué haces?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Fertilizo la planta', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 1
            },
            {
                title = 'Aparecieron puntos amarillos en tu planta, ¿qué haces?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Fertilizo la planta ', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 2
            },
            {
                title = 'El polvo azul ha aparecido en las hojas de tu planta, ¿qué haces?',
                steps = {
                    {label = 'Rompo las hojas individuales', value = 1},
                    {label = 'Espolvorear las hojas con abono.', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 3
            },
            {
                title = 'Tus primeros cogollos aparecieron en tu planta, ¿qué haces?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Los rompo inmediatamente', value = 2},
                    {label = 'Fertilizo la planta', value = 3}
                },
                correct = 1
            },
            {
                title = 'Después de regar tu planta, empezaron a aparecer hojas extrañas, ¿qué haces?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Fertilizo la planta', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 2
            },
            {
                title = 'Tu pequeña planta está casi lista para ser cortada, ¿qué estás haciendo?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Fertilizo la planta ', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 1
            },
            {
                title = 'Tu planta está lista para la cosecha, lo que haces.?',
                steps = {
                    {label = 'Cortar con unas tijeras', value = 1, min = 5, max = 25},
                    {label = 'Recoger con las manos', value = 1, min = 10, max = 15},
                    {label = 'Cortar con la tijeras de podar', value = 1, min = 2, max = 40}
                },
                correct = 1
            },
        },
      },
  ['seed_opium'] = {
        object = 'prop_bush_med_02',
        end_object = 'prop_aloevera_01',
        fail_msg = 'Desafortunadamente, tu planta se ha marchitado!',
        success_msg = '¡Felicidades, hiciste la cosecha de la planta!',
        start_msg = 'Comienzas a cultivar plantas.',
        success_item = 'opium',
        cops = 0,
        first_step = 2.35,
        steps = 7,
        cords = {
          {x = 327.14, y = 6472.53, z = 29.99, distance = 20.25},
          {x = 1198.05, y = -215.25, z = 55, distance = 20.25},
          {x = 3135.23, y = 5361.15, z = 22.20, distance = 20.25},
		  {x = 1911.95, y = 4840.90, z = 46.32, distance = 20.25},
        },
        animations_start = {
          {lib = 'amb@world_human_gardener_plant@male@enter', anim = 'enter', timeout = '2500'},
          {lib = 'amb@world_human_gardener_plant@male@idle_a', anim = 'idle_a', timeout = '2500'},
        },
        animations_end = {
          {lib = 'amb@world_human_gardener_plant@male@exit', anim ='exit', timeout = '2500'},
          {lib = 'amb@world_human_cop_idles@male@idle_a', anim ='idle_a', timeout = '2500'},
        },
        animations_step = {
          {lib = 'amb@world_human_gardener_plant@male@enter', anim = 'enter', timeout = '2500'},
          {lib = 'amb@world_human_gardener_plant@male@idle_a', anim ='idle_a', timeout = '18500'},
          {lib = 'amb@world_human_gardener_plant@male@exit', anim ='exit', timeout = '2500'},
        },
        grow = {
          1.85, 1.75, 1.65, 1.45, 1.20, 1.00
        },
        questions = {
            {
                title = 'Ves que tu planta brota, ¿qué haces?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Fertilizo la planta', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 1
            },
            {
                title = 'Aparecieron puntos amarillos en tu planta, ¿qué haces?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Fertilizo la planta ', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 2
            },
            {
                title = 'El polvo azul ha aparecido en las hojas de tu planta, ¿qué haces?',
                steps = {
                    {label = 'Rompo las hojas individuales', value = 1},
                    {label = 'Espolvorear las hojas con abono.', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 3
            },
            {
                title = 'Tus primeros cogollos aparecieron en tu planta, ¿qué haces?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Los rompo inmediatamente', value = 2},
                    {label = 'Fertilizo la planta', value = 3}
                },
                correct = 1
            },
            {
                title = 'Después de regar tu planta, empezaron a aparecer hojas extrañas, ¿qué haces?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Fertilizo la planta', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 2
            },
            {
                title = 'Tu pequeña planta está casi lista para ser cortada, ¿qué estás haciendo?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Fertilizo la planta ', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 1
            },
            {
                title = 'Tu planta está lista para la cosecha, que haces?',
                steps = {
                    {label = 'Cortar con unas tijeras', value = 1, min = 5, max = 25},
                    {label = 'Recoger con las manos', value = 1, min = 10, max = 15},
                    {label = 'Cortar con la tijeras de podar', value = 1, min = 2, max = 40}
                },
                correct = 1
            },
        },
      },
  ['seed_coke'] = {
        object = 'prop_plant_fern_01b',
        end_object = 'prop_plant_01b',
        fail_msg = 'Desafortunadamente, tu planta se ha marchitado!',
        success_msg = '¡Felicidades, hiciste la cosecha de la planta!',
        start_msg = 'Comienzas a cultivar plantas.',
        success_item = 'coke',
        cops = 0,
        first_step = 2.35,
        steps = 7,
        cords = {
          {x = -103.82, y = 1910.29, z = 196.91, distance = 20.25},
          {x = 2489.62, y = 3734.16, z = 43.06, distance = 20.25},
          {x = 352.99, y = 6475.54, z = 2971, distance = 20.25},
		  {x = 3283.86, y = 5182.46, z = 18.42, distance = 20.25},
        },
        animations_start = {
          {lib = 'amb@world_human_gardener_plant@male@enter', anim = 'enter', timeout = '2500'},
          {lib = 'amb@world_human_gardener_plant@male@idle_a', anim = 'idle_a', timeout = '2500'},
        },
        animations_end = {
          {lib = 'amb@world_human_gardener_plant@male@exit', anim ='exit', timeout = '2500'},
          {lib = 'amb@world_human_cop_idles@male@idle_a', anim ='idle_a', timeout = '2500'},
        },
        animations_step = {
          {lib = 'amb@world_human_gardener_plant@male@enter', anim = 'enter', timeout = '2500'},
          {lib = 'amb@world_human_gardener_plant@male@idle_a', anim ='idle_a', timeout = '18500'},
          {lib = 'amb@world_human_gardener_plant@male@exit', anim ='exit', timeout = '2500'},
        },
        grow = {
          1.85, 1.75, 1.65, 1.45, 1.20, 1.00
        },
        questions = {
            {
                title = 'Ves que tu planta brota, ¿qué haces?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Fertilizo la planta', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 1
            },
            {
                title = 'Aparecieron puntos amarillos en tu planta, ¿qué haces?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Fertilizo la planta ', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 2
            },
            {
                title = 'El polvo azul ha aparecido en las hojas de tu planta, ¿qué haces?',
                steps = {
                    {label = 'Rompo las hojas individuales', value = 1},
                    {label = 'Espolvorear las hojas con abono.', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 3
            },
            {
                title = 'Tus primeros cogollos aparecieron en tu planta, ¿qué haces?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Los rompo inmediatamente', value = 2},
                    {label = 'Fertilizo la planta', value = 3}
                },
                correct = 1
            },
            {
                title = 'Después de regar tu planta, empezaron a aparecer hojas extrañas, ¿qué haces?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Fertilizo la planta', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 2
            },
            {
                title = 'Tu pequeña planta está casi lista para ser cortada, ¿qué estás haciendo?',
                steps = {
                    {label = 'Riego la planta', value = 1},
                    {label = 'Fertilizo la planta ', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 1
            },
            {
                title = 'Tu planta está lista para la cosecha, que haces?',
                steps = {
                    {label = 'Cortar con unas tijeras', value = 1, min = 5, max = 25},
                    {label = 'Recoger con las manos', value = 1, min = 10, max = 15},
                    {label = 'Cortar con la tijeras de podar', value = 1, min = 2, max = 40}
                },
                correct = 1
            },
        },
      },
  ['methylamine'] = {
        object = 'prop_barrel_02b',
        end_object = 'prop_barrel_01a',
        fail_msg = 'Desafortunadamente, tu planta se ha marchitado!',
        success_msg = '¡Felicidades, hiciste la cosecha de la planta!',
        start_msg = 'Comienzas a cultivar plantas.',
        success_item = 'meth',
        cops = 0,
        first_step = 2.35,
        steps = 7,
        cords = {
          {x = 1443.35, y = 6332.26, z = 23.98, distance = 5.25},
          {x = 2433.29, y = 4968.62, z = 42.34, distance = 20.25},
          {x = 2331.63, y = 2570.76, z = 46.68, distance = 5.25},
		  {x = 1391.87, y = 3606.00, z = 38.94, distance = 10.25},
        },
        animations_start = {
          {lib = 'amb@prop_human_bbq@male@enter', anim = 'enter', timeout = '2500'},
          {lib = 'amb@prop_human_bbq@male@idle_a', anim = 'idle_a', timeout = '2500'},
        },
        animations_end = {
          {lib = 'amb@prop_human_bbq@male@exit', anim ='exit', timeout = '2500'},
          {lib = 'amb@world_human_cop_idles@male@idle_a', anim ='idle_a', timeout = '2500'},
        },
        animations_step = {
          {lib = 'amb@prop_human_bbq@male@enter', anim = 'enter', timeout = '2500'},
          {lib = 'amb@prop_human_bbq@male@idle_a', anim ='idle_a', timeout = '18500'},
          {lib = 'amb@prop_human_bbq@male@exit', anim ='exit', timeout = '2500'},
        },
        grow = {
          1.00, 1.00, 1.00, 1.00, 1.00, 1.00
        },
        questions = {
            {
                title = 'Mezclas los productos quimicos, ¿qué haces?',
                steps = {
                    {label = 'Los bates hasta hacer polvo', value = 1},
                    {label = 'Lo pruebas para ver pureza', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 1
            },
            {
                title = 'Ya tienes el polvo quimico, ¿qué haces?',
                steps = {
                    {label = 'Lo meto al microonda', value = 1},
                    {label = 'Añado el efedrina', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 2
            },
            {
                title = 'Ya tienes el compuesto base, ¿qué haces?',
                steps = {
                    {label = 'Divido en tres partes', value = 1},
                    {label = 'Espolvorear azufre', value = 2},
                    {label = 'Poner acido yodhídrico', value = 3}
                },
                correct = 3
            },
            {
                title = 'Añades a la mezcla methylamina, ¿qué haces?',
                steps = {
                    {label = 'Reduccion con fósforo rojo', value = 1},
                    {label = 'La rompo inmediatamente', value = 2},
                    {label = 'Espero', value = 3}
                },
                correct = 1
            },
            {
                title = 'Has realizado la reduccion de efedrina, ¿qué haces?',
                steps = {
                    {label = 'Lo meto en bolsas', value = 1},
                    {label = 'Lo esparces para crear cristales', value = 2},
                    {label = 'Esperar', value = 3}
                },
                correct = 2
            },
            {
                title = 'Ya tienes tus laminas de meta, ¿qué haces?',
                steps = {
                    {label = 'Esperar que cristalice', value = 1},
                    {label = 'Lo meto en bolsas', value = 2},
                    {label = 'Lo pruebas', value = 3}
                },
                correct = 1
            },
            {
                title = 'Tu meta esta lista, que haces?',
                steps = {
                    {label = 'Romper cristal con martillo', value = 1, min = 5, max = 25},
                    {label = 'Romper cristal con las manos', value = 1, min = 10, max = 15},
                    {label = 'Tirar al suelo', value = 1, min = 2, max = 40}
                },
                correct = 1
            },
        },
	  },
}
