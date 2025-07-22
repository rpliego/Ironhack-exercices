INSERT INTO Cars (vin, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Azul'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Rojo'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'Blanco'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Plata'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gris'),
('DAM41UDN3CHU2WVF7', 'Volvo', 'V60 Cross Country', 2019, 'Gris');

INSERT INTO Clients (name, phone, email, address, city, state_province, country, postal_code) VALUES
('Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'España', '28045'),
('Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'Estados Unidos', '33130'),
('Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'París', 'Île-de-France', 'Francia', '75008');

INSERT INTO Salespersons (name, store) VALUES
('Petey Cruiser', 'Madrid'),
('Anna Sthesia', 'Barcelona'),
('Paul Molive', 'Berlín'),
('Gail Forcewind', 'París'),
('Paige Turner', 'Mimia'),
('Bob Frapples', 'Ciudad de México'),
('Walter Melon', 'Ámsterdam'),
('Shonda Leer', 'São Paulo');

INSERT INTO Invoices (invoice_date, vin, client_id, staff_id) VALUES
('2018-08-22', 'ZM8G7BEUQZ97IH46V', 2, 4),
('2018-12-31', 'HKNDGS7CU31E9Z7JW', 1, 6),
('2019-01-22', 'RKXVNNIHLVVZOUB4M', 3, 8);