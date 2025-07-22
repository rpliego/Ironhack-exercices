CREATE TABLE clients(
	client_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30),
    phone VARCHAR(20),
    email VARCHAR(50),
    address VARCHAR(100),
    city VARCHAR(50),
    state_province VARCHAR(50),
    country VARCHAR(30),
    postal_code VARCHAR(20)
);

CREATE TABLE Cars (
    vin VARCHAR(17) PRIMARY KEY,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year INT,
    color VARCHAR(30)
);

CREATE TABLE Salespersons (
    staff_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    store VARCHAR(100)
);

CREATE TABLE Invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    invoice_date DATE,
    vin VARCHAR(17),
    client_id INT,
    staff_id INT,
    FOREIGN KEY (vin) REFERENCES Cars(vin),
    FOREIGN KEY (client_id) REFERENCES Clients(client_id),
    FOREIGN KEY (staff_id) REFERENCES Salespersons(staff_id)
);
