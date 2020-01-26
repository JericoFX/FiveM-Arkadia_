SET @job_name = 'tekquilala';
SET @society_name = 'society_tequilala';
SET @job_Name_Caps = 'Tequila la';



INSERT INTO `addon_account` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1),
  ('society_tekilala_fridge', 'Tequila (frigo)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `jobs` (name, label, whitelisted) VALUES
  (@job_name, @job_Name_Caps, 1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  (@job_name, 0, 'barman', 'Barman', 300, '{}', '{}'),
  (@job_name, 1, 'dancer', 'Bailarin', 300, '{}', '{}'),
  (@job_name, 2, 'viceboss', 'Seguridad', 500, '{}', '{}'),
  (@job_name, 3, 'boss', 'Jefe', 600, '{}', '{}')
;

INSERT INTO `items` (`name`, `label`, `limit`) VALUES  
    ('jager', 'Jägermeister', 5),
    ('vodka', 'Vodka', 5),
    ('rhum', 'Ron', 5),
    ('whisky', 'Whisky', 5),
    ('tequila', 'Tequila', 5),
    ('martini', 'Martini blanco', 5),
    ('soda', 'Soda', 5),
    ('jusfruit', 'Jugo de frutas', 5),
    ('icetea', 'Ice Tea', 5),
    ('energy', 'Energy Drink', 5),
    ('drpepper', 'Dr. Pepper', 5),
    ('limonade', 'Limonada', 5),
    ('bolcacahuetes', 'Cacahuetes', 5),
    ('bolnoixcajou', 'Tazón de anacardos', 5),
    ('bolpistache', 'Tazón de pistachos', 5),
    ('bolchips', 'Tazón de papas fritas', 5),
    ('saucisson', 'salchicha', 5),
    ('grapperaisin', 'Racimo de uvas', 5),
    ('jagerbomb', 'Jägerbomb', 5),
    ('golem', 'Golem', 5),
    ('whiskycoca', 'Whisky-coca', 5),
    ('vodkaenergy', 'Vodka-energy', 5),
    ('vodkafruit', 'Jugo de vodka y frutas', 5),
    ('rhumfruit', 'Jugo de ron y fruta', 5),
    ('teqpaf', "Teq'paf", 5),
    ('rhumcoca', 'Ron con cola', 5),
    ('mojito', 'Mojito', 5),
    ('ice', 'Hielo', 5),
    ('mixapero', 'Mezcla de aperitivo', 3),
    ('metreshooter', 'Medidor de tirador', 3),
    ('jagercerbere', 'Jäger Cerbère', 3),
    ('menthe', 'Hoja de menta', 10)
;
