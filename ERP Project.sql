create database ERP
use ERP
create table Employees (
    Emp_id int primary key,
    first_name varchar(50),
    last_name varchar(50),
    dept_id int,
    job_title varchar(50),
    annual_salary int,
    date_joined date,
    phone_number varchar(20),
    foreign key (dept_id) references Departments(dept_id)
);

create table Departments (
    dept_id int primary key,
    dept_name varchar(50),
    dept_leader int,
    office_location varchar(50)
);

create table Financials (
    record_id int primary key,
    record_date date,
    Emp_id int,
    transaction_amount int,
    record_type varchar(50),
    details varchar(50),
    foreign key (Emp_id) references Employees(Emp_id)
);

create table Inventory (
    item_id int primary key,
    item_name varchar(50),
    item_category varchar(50),
    stock_quantity int,
    restock_threshold int,
    price_per_unit int,
    vendor_id int,
    storage_location varchar(50),
    foreign key (vendor_id) references vendors(vendor_id)
);

create table Sales (
    transaction_id int primary key ,
    transaction_date date,
    buyer_id int,
    item_id int,
    quantity_purchased int,
    total_price int,
    handled_by int,
    payment_type varchar(50),
    foreign key (buyer_id) references clients(buyer_id),
    foreign key (item_id) references Inventory(item_id),
    foreign key (handled_by) references Employees(Emp_id)
);

create table Procurement (
    order_id int primary key ,
    order_date date,
    vendor_id int,
    item_id int,
    ordered_quantity int,
    total_cost int,
    delivery_date date,
    order_status varchar(50),
    foreign key (vendor_id) references vendors(vendor_id),
    foreign key (item_id) references Inventory(item_id)
);

create table vendors (
    vendor_id int primary key,
    vendor_name varchar(50),
    representative_name varchar(50),
    contact_number varchar(50),
    email_address varchar(60)
);

create table clients (
    buyer_id int primary key ,
    buyer_name varchar(50),
    primary_contact varchar(50),
    contact_phone varchar(50),
    email varchar(60),
    billing_info varchar(50),
    shipping_info varchar(50)
);

select * from Departments
select * from Employees
select * from Financials
select * from Inventory
select * from Procurement
select * from Sales
select * from vendors
select * from Clients

INSERT INTO Departments (dept_id, dept_name, dept_leader, office_location) VALUES
(1, 'HR', 101, 'Building A'),
(2, 'Finance', 102, 'Building B'),
(3, 'IT', 103, 'Building C'),
(4, 'Sales', 104, 'Building D'),
(5, 'Marketing', 105, 'Building E');

INSERT INTO Employees (Emp_id, first_name, last_name, dept_id, job_title, annual_salary, date_joined, phone_number) VALUES
(1, 'John', 'Doe', 1, 'Manager', 75000, '2015-05-10', '123-456-7890'),
(2, 'Jane', 'Smith', 2, 'Accountant', 65000, '2017-08-15', '987-654-3210'),
(3, 'Alice', 'Johnson', 3, 'Developer', 80000, '2019-03-12', '456-789-1234'),
(4, 'Michael', 'Brown', 4, 'Sales Executive', 55000, '2020-01-10', '234-567-8901'),
(5, 'Emily', 'Clark', 5, 'Marketing Specialist', 60000, '2018-06-25', '345-678-9012'),
(6, 'Chris', 'Davis', 1, 'HR Assistant', 50000, '2021-03-19', '456-789-0123'),
(7, 'Sophia', 'Martinez', 2, 'Finance Analyst', 70000, '2019-11-08', '567-890-1234'),
(8, 'James', 'Garcia', 3, 'IT Support', 45000, '2022-02-15', '678-901-2345'),
(9, 'Olivia', 'Taylor', 4, 'Sales Manager', 80000, '2016-05-30', '789-012-3456'),
(10, 'Liam', 'Harris', 5, 'Content Creator', 55000, '2020-07-12', '890-123-4567'),
(11, 'Mason', 'Lee', 1, 'Recruiter', 52000, '2017-04-01', '901-234-5678'),
(12, 'Amelia', 'Hall', 2, 'Budget Planner', 63000, '2018-09-16', '012-345-6789'),
(13, 'Benjamin', 'Allen', 3, 'Network Engineer', 78000, '2019-01-20', '123-456-7890'),
(14, 'Charlotte', 'Young', 4, 'Sales Representative', 48000, '2021-06-05', '234-567-8901'),
(15, 'Ethan', 'King', 5, 'SEO Specialist', 60000, '2018-03-15', '345-678-9012'),
(16, 'Isabella', 'Scott', 1, 'HR Coordinator', 53000, '2019-08-10', '456-789-0123'),
(17, 'Alexander', 'Green', 2, 'Auditor', 72000, '2020-10-25', '567-890-1234'),
(18, 'Mia', 'Adams', 3, 'Software Engineer', 85000, '2021-12-30', '678-901-2345'),
(19, 'Lucas', 'Nelson', 4, 'Account Manager', 56000, '2022-05-18', '789-012-3456'),
(20, 'Ava', 'Baker', 5, 'Social Media Manager', 59000, '2018-11-22', '890-123-4567'),
(21, 'Daniel', 'Carter', 1, 'Training Specialist', 52000, '2020-02-27', '901-234-5678'),
(22, 'Harper', 'Mitchell', 2, 'Risk Manager', 74000, '2019-07-19', '012-345-6789'),
(23, 'Matthew', 'Perez', 3, 'Database Admin', 82000, '2021-01-14', '123-456-7890'),
(24, 'Ella', 'Roberts', 4, 'Sales Consultant', 46000, '2022-03-11', '234-567-8901'),
(25, 'Jack', 'Turner', 5, 'Marketing Analyst', 61000, '2018-05-05', '345-678-9012'),
(26, 'Victoria', 'Phillips', 1, 'HR Generalist', 54000, '2019-09-28', '456-789-0123'),
(27, 'Henry', 'Campbell', 2, 'Tax Specialist', 73000, '2020-08-12', '567-890-1234'),
(28, 'Chloe', 'Parker', 3, 'Web Developer', 77000, '2021-02-01', '678-901-2345'),
(29, 'Sebastian', 'Evans', 4, 'Sales Manager', 85000, '2016-10-10', '789-012-3456'),
(30, 'Grace', 'Edwards', 5, 'Creative Designer', 60000, '2017-03-25', '890-123-4567');


INSERT INTO Financials (record_id, record_date, Emp_id, transaction_amount, record_type, details) VALUES
(1, '2023-01-15', 1, 2000, 'Bonus', 'Performance bonus for Q4'),
(2, '2023-02-10', 2, 1500, 'Reimbursement', 'Travel expenses reimbursement'),
(3, '2023-03-12', 3, 500, 'Reimbursement', 'Team lunch reimbursement'),
(4, '2023-03-20', 4, 3000, 'Bonus', 'Performance bonus for Q1'),
(5, '2023-03-25', 5, 2000, 'Reimbursement', 'Travel expense for client visit'),
(6, '2023-04-01', 6, 1200, 'Reimbursement', 'Office supplies purchase'),
(7, '2023-04-15', 7, 1500, 'Bonus', 'Retention bonus'),
(8, '2023-04-22', 8, 400, 'Reimbursement', 'Taxi fare reimbursement'),
(9, '2023-05-01', 9, 3000, 'Bonus', 'Target achievement reward'),
(10, '2023-05-10', 10, 250, 'Reimbursement', 'Parking fees reimbursement'),
(11, '2023-05-15', 11, 500, 'Reimbursement', 'Business travel meal expenses'),
(12, '2023-05-20', 12, 700, 'Reimbursement', 'Hotel stay reimbursement'),
(13, '2023-05-25', 13, 2200, 'Bonus', 'Quarterly performance bonus'),
(14, '2023-06-01', 14, 1300, 'Reimbursement', 'Laptop repair expenses'),
(15, '2023-06-10', 15, 400, 'Reimbursement', 'Taxi fare for meeting'),
(16, '2023-06-15', 16, 1800, 'Bonus', 'Employee referral bonus'),
(17, '2023-06-22', 17, 900, 'Reimbursement', 'Professional certification reimbursement'),
(18, '2023-07-01', 18, 2600, 'Bonus', 'Sales incentive payout'),
(19, '2023-07-10', 19, 350, 'Reimbursement', 'Client gift reimbursement'),
(20, '2023-07-15', 20, 400, 'Reimbursement', 'Office snacks reimbursement'),
(21, '2023-07-20', 21, 3000, 'Bonus', 'End-of-project reward'),
(22, '2023-08-01', 22, 600, 'Reimbursement', 'Conference registration fee'),
(23, '2023-08-10', 23, 1200, 'Reimbursement', 'Employee training costs'),
(24, '2023-08-15', 24, 1000, 'Reimbursement', 'Office decoration costs'),
(25, '2023-08-20', 25, 2000, 'Bonus', 'Employee of the Month bonus'),
(26, '2023-09-01', 26, 500, 'Reimbursement', 'Printing and binding reimbursement'),
(27, '2023-09-10', 27, 900, 'Reimbursement', 'External workshop fee'),
(28, '2023-09-15', 28, 3500, 'Bonus', 'Year-end bonus'),
(29, '2023-09-20', 29, 800, 'Reimbursement', 'Marketing campaign costs'),
(30, '2023-09-25', 30, 1000, 'Reimbursement', 'Professional subscription fee');

INSERT INTO Inventory (item_id, item_name, item_category, stock_quantity, restock_threshold, price_per_unit, vendor_id, storage_location) VALUES
(1, 'Laptop', 'Electronics', 50, 10, 1200, 1, 'Warehouse A'),
(2, 'Desk Chair', 'Furniture', 200, 20, 150, 2, 'Warehouse B'),
(3, 'Mouse', 'Electronics', 150, 20, 25, 1, 'Warehouse A'),
(4, 'Keyboard', 'Electronics', 120, 15, 45, 1, 'Warehouse A'),
(5, 'Office Chair', 'Furniture', 50, 10, 180, 2, 'Warehouse B'),
(6, 'Desk', 'Furniture', 30, 5, 250, 2, 'Warehouse B'),
(7, 'Monitor', 'Electronics', 80, 10, 200, 1, 'Warehouse A'),
(8, 'Printer', 'Electronics', 20, 5, 400, 3, 'Warehouse C'),
(9, 'Projector', 'Electronics', 10, 3, 800, 3, 'Warehouse C'),
(10, 'Notebook', 'Stationery', 500, 100, 5, 4, 'Warehouse D'),
(11, 'Pen', 'Stationery', 1000, 200, 2, 4, 'Warehouse D'),
(12, 'Stapler', 'Stationery', 300, 50, 15, 4, 'Warehouse D'),
(13, 'Desk Lamp', 'Electronics', 60, 10, 50, 1, 'Warehouse A'),
(14, 'USB Cable', 'Electronics', 400, 50, 10, 1, 'Warehouse A'),
(15, 'Paper Ream', 'Stationery', 200, 50, 20, 4, 'Warehouse D'),
(16, 'File Cabinet', 'Furniture', 20, 3, 150, 2, 'Warehouse B'),
(17, 'Whiteboard', 'Furniture', 25, 5, 100, 2, 'Warehouse B'),
(18, 'Scanner', 'Electronics', 15, 3, 300, 3, 'Warehouse C'),
(19, 'Tablet', 'Electronics', 40, 5, 600, 3, 'Warehouse C'),
(20, 'Headset', 'Electronics', 100, 15, 75, 1, 'Warehouse A'),
(21, 'Water Bottle', 'Office Supplies', 300, 50, 10, 5, 'Warehouse E'),
(22, 'Coffee Machine', 'Appliances', 10, 2, 250, 5, 'Warehouse E'),
(23, 'Shredder', 'Electronics', 15, 2, 150, 3, 'Warehouse C'),
(24, 'Folder', 'Stationery', 800, 200, 3, 4, 'Warehouse D'),
(25, 'Sticky Notes', 'Stationery', 600, 100, 2, 4, 'Warehouse D'),
(26, 'Smartphone', 'Electronics', 50, 10, 500, 3, 'Warehouse C'),
(27, 'Camera', 'Electronics', 30, 5, 700, 3, 'Warehouse C'),
(28, 'Router', 'Electronics', 25, 5, 150, 3, 'Warehouse C'),
(29, 'Paper Clips', 'Stationery', 1000, 200, 1, 4, 'Warehouse D'),
(30, 'Charger', 'Electronics', 200, 30, 20, 1, 'Warehouse A');

INSERT INTO Sales (transaction_id, transaction_date, buyer_id, item_id, quantity_purchased, total_price, handled_by, payment_type) VALUES
(1, '2023-03-01', 1, 3, 2, 2400, 3, 'Credit Card'),
(2, '2023-03-05', 2, 2, 4, 600, 4, 'Cash'),
(3, '2023-04-01', 3, 1, 2, 2400, 4, 'Credit Card'),
(4, '2023-04-05', 4, 2, 5, 750, 5, 'Cash'),
(5, '2023-04-10', 5, 3, 10, 250, 6, 'Online'),
(6, '2023-04-15', 6, 4, 4, 180, 7, 'Debit Card'),
(7, '2023-04-20', 7, 5, 3, 540, 8, 'Credit Card'),
(8, '2023-04-25', 8, 6, 1, 250, 9, 'Online'),
(9, '2023-05-01', 9, 7, 2, 500, 10, 'Cash'),
(10, '2023-05-05', 10, 8, 3, 900, 11, 'Credit Card'),
(11, '2023-05-10', 11, 9, 6, 2400, 12, 'Debit Card'),
(12, '2023-05-15', 12, 10, 1, 400, 13, 'Online'),
(13, '2023-05-20', 13, 11, 8, 800, 14, 'Cash'),
(14, '2023-05-25', 14, 11, 12, 75, 15, 'Credit Card'),
(15, '2023-06-01', 15, 13, 20, 300, 16, 'Debit Card'),
(16, '2023-06-05', 16, 14, 6, 1200, 17, 'Online'),
(17, '2023-06-10', 17, 15, 10, 200, 18, 'Cash'),
(18, '2023-06-15', 18, 16, 5, 125, 19, 'Credit Card'),
(19, '2023-06-20', 19, 17, 1, 250, 20, 'Online'),
(20, '2023-06-25', 20, 18, 2, 600, 21, 'Debit Card'),
(21, '2023-07-01', 21, 19, 10, 3000, 22, 'Cash'),
(22, '2023-07-05', 22, 20, 1, 75, 23, 'Credit Card'),
(23, '2023-07-10', 23, 21, 2, 20, 24, 'Online'),
(24, '2023-07-15', 24, 22, 3, 750, 25, 'Debit Card'),
(25, '2023-07-20', 25, 23, 2, 400, 26, 'Cash'),
(26, '2023-07-25', 26, 24, 1, 150, 27, 'Credit Card'),
(27, '2023-08-01', 27, 25, 6, 90, 28, 'Online'),
(28, '2023-08-05', 28, 26, 8, 600, 1, 'Debit Card'),
(29, '2023-08-10', 29, 27, 10, 200, 2, 'Cash'),
(30, '2023-08-15', 30, 28, 4, 600, 3, 'Credit Card');

INSERT INTO Procurement (order_id, order_date, vendor_id, item_id, ordered_quantity, total_cost, delivery_date, order_status) VALUES
(1, '2023-02-01', 1, 1, 20, 24000, '2023-02-10', 'Delivered'),
(2, '2023-02-05', 2, 2, 50, 7500, '2023-02-15', 'Pending'),
(3, '2023-04-01', 1, 3, 50, 1250, '2023-04-05', 'Delivered'),
(4, '2023-04-03', 1, 4, 40, 1800, '2023-04-07', 'Delivered'),
(5, '2023-04-10', 2, 5, 20, 3600, '2023-04-14', 'Delivered'),
(6, '2023-04-15', 2, 6, 15, 3750, '2023-04-20', 'Delivered'),
(7, '2023-04-18', 1, 7, 25, 5000, '2023-04-23', 'Delivered'),
(8, '2023-04-22', 3, 8, 10, 4000, '2023-04-27', 'Delivered'),
(9, '2023-04-25', 3, 9, 5, 4000, '2023-04-30', 'Delivered'),
(10, '2023-05-01', 4, 10, 100, 500, '2023-05-06', 'Delivered'),
(11, '2023-05-05', 4, 11, 200, 400, '2023-05-10', 'Delivered'),
(12, '2023-05-08', 4, 12, 50, 750, '2023-05-13', 'Delivered'),
(13, '2023-05-12', 1, 13, 20, 1000, '2023-05-17', 'Delivered'),
(14, '2023-05-15', 1, 14, 150, 1500, '2023-05-20', 'Delivered'),
(15, '2023-07-18', 5, 1, 20, 24000, '2023-07-25', 'Pending'),
(16, '2023-07-20', 4, 2, 50, 7500, '2023-07-27', 'In Transit'),
(17, '2023-07-22', 3, 3, 30, 750, '2023-07-29', 'Delivered'),
(18, '2023-07-25', 2, 4, 40, 1800, '2023-07-30', 'In Transit'),
(19, '2023-07-28', 1, 5, 20, 3600, '2023-08-03', 'Pending'),
(20, '2023-08-01', 3, 6, 15, 3750, '2023-08-07', 'Delivered'),
(21, '2023-08-03', 2, 7, 25, 5000, '2023-08-10', 'Pending'),
(22, '2023-08-05', 1, 8, 10, 4000, '2023-08-12', 'In Transit'),
(23, '2023-08-08', 4, 9, 5, 4000, '2023-08-15', 'Delivered'),
(24, '2023-08-10', 5, 10, 100, 500, '2023-08-17', 'Delivered'),
(25, '2023-08-12', 4, 11, 200, 400, '2023-08-20', 'Pending'),
(26, '2023-08-15', 3, 12, 50, 750, '2023-08-22', 'In Transit'),
(27, '2023-08-18', 2, 13, 20, 1000, '2023-08-25', 'Delivered'),
(28, '2023-08-20', 5, 14, 150, 1500, '2023-08-28', 'In Transit'),
(29, '2023-08-23', 3, 15, 50, 1000, '2023-08-30', 'Pending'),
(30, '2023-07-15', 1, 30, 200, 4000, '2023-07-20', 'Delivered');

INSERT INTO vendors (vendor_id, vendor_name, representative_name, contact_number, email_address) VALUES
(1, 'Tech Supplies Inc.', 'Mark Spencer', '123-555-7890', 'mark.spencer@techsupplies.com'),
(2, 'Furniture Co.', 'Sarah Adams', '456-555-1234', 'sarah.adams@furnitureco.com'),
(3, 'Tech Supplies Inc.', 'Alice Green', '555-234-5678', 'alice.green@techsupplies.com'),
(4, 'Office EssentialsCo.', 'John Brown', '555-987-6543', 'john.brown@officeessentials.com'),
(5, 'Modern FurnitureLtd.', 'Emma Wilson', '555-678-4321', 'emma.wilson@modernfurniture.com'),
(6, 'Gadget Pros', 'Michael Davis', '555-345-6789', 'michael.davis@gadgetpros.com'),
(7, 'Stationery World', 'Sophia Martin', '555-456-7890', 'sophia.martin@stationeryworld.com'),
(8, 'Smart Electronics', 'Chris Lee', '555-567-8901', 'chris.lee@smartelectronics.com'),
(9, 'Tech Solutions', 'Olivia Clark', '555-678-9012', 'olivia.clark@premiumtech.com'),
(10, 'Office Comforts', 'Liam Scott', '555-789-0123', 'liam.scott@officecomforts.com'),
(11, 'Digital Solutions', 'Ella Hall', '555-890-1234', 'ella.hall@digitalsolutions.com'),
(12, 'Green Supplies', 'James Adams', '555-901-2345', 'james.adams@greensupplies.com'),
(13, 'Quick Supplies Ltd.', 'Ava Perez', '555-123-4567', 'ava.perez@quicksupplies.com'),
(14, 'Creative Supplies', 'Benjamin Evans', '555-234-5678', 'benjamin.evans@creativesupplies.com'),
(15, 'ProStation Supplies', 'Charlotte Turner', '555-345-6789', 'charlotte.turner@prostation.com'),
(16, 'Smart Solutions Ltd.', 'Henry Walker', '555-456-7890', 'henry.walker@smartsolutions.com'),
(17, 'Ultimate Comfort', 'Amelia Wright', '555-567-8901', 'amelia.wright@ultimatecomfort.com'),
(18, 'Tech Connect', 'Lucas Harris', '555-678-9012', 'lucas.harris@techconnect.com'),
(19, 'Office Masters', 'Mia Lewis', '555-789-0123', 'mia.lewis@officemasters.com'),
(20, 'High-Tech World', 'Ethan Young', '555-890-1234', 'ethan.young@hightechworld.com'),
(21, 'Furniture Experts', 'Isabella King', '555-901-2345', 'isabella.king@furnitureexperts.com'),
(22, 'Advanced Tech Ltd.', 'Alexander Hill', '555-123-4567', 'alexander.hill@advancedtech.com'),
(23, 'Prime Office Supplies', 'Emily Green', '555-234-5678', 'emily.green@primeoffice.com'),
(24, 'Stationery Unlimited', 'David Wright', '555-345-6789', 'david.wright@stationeryunlimited.com'),
(25, 'ErgoTech', 'Sophia Lee', '555-456-7890', 'sophia.lee@ergotech.com'),
(26, 'Innovative Solutions', 'Logan Baker', '555-567-8901', 'logan.baker@innovativesolutions.com'),
(27, 'Office Perfect', 'Harper Hall', '555-678-9012', 'harper.hall@officeperfect.com'),
(28, 'Dynamic Supplies', 'Mason Carter', '555-789-0123', 'mason.carter@dynamicsupplies.com'),
(29, 'Elite Office Supplies', 'Ella Scott', '555-890-1234', 'ella.scott@eliteoffice.com'),
(30, 'NextGen Tech', 'Aiden Parker', '555-901-2345', 'aiden.parker@nextgentech.com');

INSERT INTO clients (buyer_id, buyer_name, primary_contact, contact_phone, email, billing_info, shipping_info) VALUES
(1, 'Acme Corp.', 'Laura White', '321-555-6789', 'laura.white@acme.com', '123 Main St, City', '456 Elm St, City'),
(2, 'Global Industries', 'Tom Black', '654-555-4321', 'tom.black@global.com', '789 Pine St, City', '101 Oak St, City'),
(3, 'Bright Futures Ltd.', 'Alice Johnson', '555-223-3344', 'alice.johnson@brightfutures.com', '123 Elm St, Springfield', '456 Oak St, Springfield'),
(4, 'Global Enterprises', 'Michael Smith', '555-334-4455', 'michael.smith@globalenterprises.com', '789 Pine Ave, Centerville', '987 Cedar Ave, Centerville'),
(5, 'Tech Innovators', 'Emma Brown', '555-445-5566', 'emma.brown@techinnovators.com', '101 Main St, Metro City', '202 Market St, Metro City'),
(6, 'Creative Solutions', 'John White', '555-556-6677', 'john.white@creativesolutions.com', '303 High St, Uptown', '404 Maple St, Uptown'),
(7, 'NextGen Industries', 'Sophia Green', '555-667-7788', 'sophia.green@nextgenindustries.com', '505 Cherry Rd, Midtown', '606 Birch Rd, Midtown'),
(8, 'Innovative Designs', 'James Black', '555-778-8899', 'james.black@innovativedesigns.com', '707 Ash St, Rivertown', '808 Cypress St, Rivertown'),
(9, 'Visionary Ventures', 'Olivia Adams', '555-889-9900', 'olivia.adams@visionaryventures.com', '909 Walnut Ave, Lakeside', '1010 Hickory Ave, Lakeside'),
(10, 'Elite Solutions', 'Liam Martinez', '555-990-0011', 'liam.martinez@elitesolutions.com', '1111 Palm Dr, Bayview', '1212 Redwood Dr, Bayview'),
(11, 'Premier Partners', 'Emily Davis', '555-101-1122', 'emily.davis@premierpartners.com', '1313 Willow Ln, Parkland', '1414 Sycamore Ln, Parkland'),
(12, 'Dynamic Growth', 'Benjamin Clark', '555-212-2233', 'benjamin.clark@dynamicgrowth.com', '1515 Oakwood Blvd, Greenfield', '1616 Pinewood Blvd, Greenfield'),
(13, 'Pinnacle Strategies', 'Charlotte Harris', '555-323-3344', 'charlotte.harris@pinnaclestrategies.com', '1717 Maple Ct, Hillcrest', '1818 Birch Ct, Hillcrest'),
(14, 'Global Horizons', 'Henry Thompson', '555-434-4455', 'henry.thompson@globalhorizons.com', '1919 Elmwood Dr, Meadowvale', '2020 Cedarwood Dr, Meadowvale'),
(15, 'Next Level Corp.', 'Amelia Walker', '555-545-5566', 'amelia.walker@nextlevel.com', '2121 Aspen Ave, Clearview', '2222 Poplar Ave, Clearview'),
(16, 'Bright Ideas Inc.', 'Lucas Baker', '555-656-6677', 'lucas.baker@brightideas.com', '2323 Alder Dr, Riverbend', '2424 Beech Dr, Riverbend'),
(17, 'Strategic Insights', 'Mia Hill', '555-767-7788', 'mia.hill@strategicinsights.com', '2525 Laurel Ln, Seaside', '2626 Holly Ln, Seaside'),
(18, 'Core Connections', 'Ethan Lee', '555-878-8899', 'ethan.lee@coreconnections.com', '2727 Fir St, Summit', '2828 Spruce St, Summit'),
(19, 'Infinite Possibilities', 'Isabella Wright', '555-989-9900', 'isabella.wright@infinitepossibilities.com', '2929 Elm Ln, Harborview', '3030 Cedar Ln, Harborview'),
(20, 'Precision Systems', 'Alexander Young', '555-090-0011', 'alexander.young@precisionsystems.com', '3131 Ash Blvd, Vista', '3232 Cypress Blvd, Vista'),
(21, 'Blue Sky Ventures', 'Harper King', '555-111-2233', 'harper.king@blueskyventures.com', '3333 Maplewood Dr, Grandview', '3434 Birchwood Dr, Grandview'),
(22, 'Summit Enterprises', 'Mason Perez', '555-222-3344', 'mason.perez@summitent.com', '3535 Oakview Rd, Mountlake', '3636 Pineview Rd, Mountlake'),
(23, 'Vertex Solutions', 'Ella Carter', '555-333-4455', 'ella.carter@vertexsolutions.com', '3737 Redwood Ave, Rockridge', '3838 Palm Ave, Rockridge'),
(24, 'Pioneer Technologies', 'Logan Campbell', '555-444-5566', 'logan.campbell@pioneertechnologies.com', '3939 Willow Ct, Bayshore', '4040 Sycamore Ct, Bayshore'),
(25, 'Horizon Designs', 'Avery Anderson', '555-555-6677', 'avery.anderson@horizondesigns.com', '4141 Oakdale Blvd, Northlake', '4242 Pinehurst Blvd, Northlake'),
(26, 'Trailblazer Corp.', 'Levi Rodriguez', '555-666-7788', 'levi.rodriguez@trailblazer.com', '4343 Cedarway Dr, Riverview', '4444 Mapleway Dr, Riverview'),
(27, 'Bright Path Solutions', 'Scarlett Mitchell', '555-777-8899', 'scarlett.mitchell@brightpath.com', '4545 Birchfield Ln, Meadowbrook', '4646 Elmfield Ln, Meadowbrook'),
(28, 'Momentum Group', 'Hudson Scott', '555-888-9900', 'hudson.scott@momentumgroup.com', '4747 Firwood Blvd, Windmere', '4848 Sprucewood Blvd, Windmere'),
(29, 'Prime Innovations', 'Aria Green', '555-999-0011', 'aria.green@primeinnovations.com', '4949 Aspenwood Dr, Fairview', '5050 Beechwood Dr, Fairview'),
(30, 'Eclipse Solutions', 'Carter Torres', '555-000-1122', 'carter.torres@eclipsesolutions.com', '5151 Alderwood Ct, Shoreline', '5252 Hollywood Ct, Shoreline');


##------PROCEDURES---------##

--- 1---Financial Transactions Above a Certain Amount
select record_id,record_date,record_type,transaction_amount
from financials
where transaction_amount > 1200;

--- 2---Total Revenue Generated by Each Client
select c.buyer_name,sum(total_price) as Total_revenue
from clients c 
join sales s on 
c.buyer_id=s.buyer_id
group by c.buyer_name;


--- 3- Financial Transactions of a Specific Employee
select record_id,record_date,record_type,transaction_amount,details
from financials 
where Emp_id = 2; 

--- 4 ---Sales Made Using a Specific Payment Type
select transaction_id, total_price,transaction_date,payment_type
from sales
where payment_type = 'Cash';

--- 05---Procurement Orders by their status
select order_id,item_id,ordered_quantity,total_cost,delivery_date
from procurement
where order_status = 'pending';

--- 06---Total Sales Handled by an Employee
select first_name,last_name,sum(total_price) as Total_sales
from employees e 
join sales s on
e.Emp_id = s.handled_by
group by first_name,last_name;

--- 07---Employees in a Specific Department
select first_name,last_name,job_title
from employees
where dept_id=1;

--- 08---Inventory Items by Vendor
select item_name,item_category, v.vendor_name
from inventory i 
join vendors v on 
v.vendor_id = i.vendor_id;

--- 09---Sales Transactions for a Specific Client
select s.transaction_id,s.transaction_date,s.quantity_purchased,i.item_name,s.total_price
from sales s
join inventory i on 
s.item_id = i.item_id
where buyer_id = 15;

--- 10---Summary of Sales by Item
select i.item_name,sum(s.quantity_purchased) as Total_quantity_sold,sum(s.total_price)as Total_Revenue
from sales s
join inventory i on 
s.item_id = i.item_id
group by item_name;

