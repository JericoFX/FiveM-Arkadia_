SET @job_name = 'yellowjack';
SET @society_name = 'society_yellowjack';
SET @job_Name_Caps = 'YellowJack';



INSERT INTO `addon_account` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1),
  ('society_yellowjack_fridge', 'Yellowjack (frigo)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `jobs` (name, label, whitelisted) VALUES
  (@job_name, @job_Name_Caps, 1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  (@job_name, 0, 'barman', 'Camarero', 300, '{}', '{}'),
  (@job_name, 1, 'dancer', 'Metre', 300, '{}', '{}'),
  (@job_name, 2, 'viceboss', 'Gerente', 500, '{}', '{}'),
  (@job_name, 3, 'boss', 'Jefe', 600, '{}', '{}')
;

