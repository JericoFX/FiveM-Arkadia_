INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('poolcleaner', 'Limpiador de piscinas', 0);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('poolcleaner', 0, 'interim', 'empleado', 400, '{}', '{}');

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('contrat', 'Factura', 100, 0, 1);
