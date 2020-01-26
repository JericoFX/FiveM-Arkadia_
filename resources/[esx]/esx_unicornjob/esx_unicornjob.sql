SET @job_name = 'unicorn';
SET @society_name = 'society_unicorn';
SET @job_Name_Caps = 'Galaxy';



INSERT INTO `addon_account` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1),
  ('society_unicorn_fridge', 'Vanilla (frigorifico)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `jobs` (name, label, whitelisted) VALUES
  (@job_name, @job_Name_Caps, 1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  (@job_name, 0, 'segurança', 'Segurança', 300, '{}', '{}'),
  (@job_name, 1, 'barman', 'Barman', 300, '{}', '{}'),
  (@job_name, 2, 'boss', 'Patrão', 600, '{}', '{}')
;

INSERT INTO `items` (`name`, `label`, `limit`) VALUES  
    ('jager', 'Jägermeister', 5),
    ('vodka', 'Vodka', 5),
    ('rhum', 'Rum', 5),
    ('whisky', 'Whisky', 5),
    ('tequila', 'Tequila', 5),
    ('martini', 'Martini branco', 5),
    ('soda', 'Soda', 5),
    ('jusfruit', 'Sumo de frutos', 5),
    ('icetea', 'Ice Tea', 5),
    ('energy', 'Energy Drink', 5),
    ('drpepper', 'Dr. Pepper', 5),
    ('limonade', 'Limonade', 5),
    ('saucisson', 'Salsicha', 5),
    ('grapperaisin', 'Uvas', 5),
    ('golem', 'Golem', 5),
    ('whiskycoca', 'Whisky-coca', 5),
    ('vodkaenergy', 'Vodka-energy', 5),
    ('vodkafruit', 'Vodka de frutas', 5),
    ('rhumfruit', 'Rum de frutas', 5),
    ('rhumcoca', 'Rum-coca', 5),
    ('mojito', 'Mojito', 5),
;
