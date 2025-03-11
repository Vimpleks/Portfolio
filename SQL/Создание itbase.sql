-- Создание базы данных ITBASE
CREATE DATABASE ITBASE;

-- Создание таблицы depatments
CREATE TABLE departments (
department_id INTEGER PRIMARY KEY,
name VARCHAR(300) NOT NULL UNIQUE, 
head VARCHAR(100)
);

-- Создание таблицы users
CREATE TABLE users (
user_id INTEGER PRIMARY KEY,
last_name VARCHAR(100) NOT NULL,
first_name VARCHAR(100) NOT NULL,
middle_name VARCHAR(100) NOT NULL,
department_id INTEGER REFERENCES departments(department_id) NOT NULL,
domain_name VARCHAR(100) UNIQUE,
comment	TEXT
);

-- Создание таблицы location
CREATE TABLE location (
location_id INTEGER PRIMARY KEY,
building VARCHAR(100) NOT NULL,
room VARCHAR(100) NOT NULL
);

-- Создание таблицы motherboard
CREATE TABLE motherboard (
motherboard_id INTEGER PRIMARY KEY,
name VARCHAR(100) NOT NULL UNIQUE
);

-- Создание таблицы processor
CREATE TABLE processor (
processor_id INTEGER PRIMARY KEY,
name VARCHAR(100) NOT NULL UNIQUE
);

-- Создание таблицы ram
CREATE TABLE ram (
ram_id INTEGER PRIMARY KEY,
name VARCHAR(100) NOT NULL UNIQUE,
capacity INTEGER NOT NULL
);

-- Создание таблицы store
CREATE TABLE store (
store_id INTEGER PRIMARY KEY,
name VARCHAR(100) NOT NULL UNIQUE,
type VARCHAR(100) NOT NULL,
capacity INTEGER NOT NULL
);

-- Создание таблицы ethernet_card
CREATE TABLE ethernet_card (
ethernet_card_id INTEGER PRIMARY KEY,
name VARCHAR(100) NOT NULL UNIQUE
);

-- Создание таблицы os_computer
CREATE TABLE os_computer (
os_id INTEGER PRIMARY KEY,
name VARCHAR(100) NOT NULL,
bit_os INTEGER NOT NULL
);

-- Создание таблицы computers
CREATE TABLE computers (
computer_id INTEGER PRIMARY KEY,
num_it VARCHAR(20) NOT NULL UNIQUE,
location_id INTEGER REFERENCES location(location_id) NOT NULL,
password VARCHAR(20) NOT NULL UNIQUE,
os_id INTEGER REFERENCES os_computer(os_id) NOT NULL,
motherboard_id INTEGER REFERENCES motherboard(motherboard_id) NOT NULL,
processor_id INTEGER REFERENCES processor(processor_id) NOT NULL,
ram1 INTEGER REFERENCES ram(ram_id) NOT NULL,
ram2 INTEGER REFERENCES ram(ram_id),
ram3 INTEGER REFERENCES ram(ram_id),
ram4 INTEGER REFERENCES ram(ram_id),
store1 INTEGER REFERENCES store(store_id) NOT NULL,
store2 INTEGER REFERENCES store(store_id),
store3 INTEGER REFERENCES store(store_id),
store4 INTEGER REFERENCES store(store_id),
ethernet1 INTEGER REFERENCES ethernet_card(ethernet_card_id) NOT NULL,
type_ethernet1 VARCHAR(100) NOT NULL,
mac1 VARCHAR(30) NOT NULL,
ethernet2 INTEGER REFERENCES ethernet_card(ethernet_card_id),
type_ethernet2 VARCHAR(100),
mac2 VARCHAR(30),
video_card VARCHAR(100),
comment	TEXT
);

-- Создание таблицы monitor_model
CREATE TABLE monitor_model (
model_id INTEGER PRIMARY KEY,
name VARCHAR(100) NOT NULL UNIQUE,
diagonal REAL NOT NULL,
resolution VARCHAR(100) NOT NULL
);

-- Создание таблицы monitors
CREATE TABLE monitors (
monitor_id INTEGER PRIMARY KEY,
num_it VARCHAR(20) NOT NULL UNIQUE,
model_id INTEGER REFERENCES monitor_model(model_id) NOT NULL,
location_id INTEGER REFERENCES location(location_id) NOT NULL,
computer_id INTEGER REFERENCES computers(computer_id),
comment	TEXT
);

-- Создание таблицы print_model
CREATE TABLE print_model (
model_id INTEGER PRIMARY KEY,
name VARCHAR(100) NOT NULL UNIQUE,
type VARCHAR(100) NOT NULL,
cartridge VARCHAR(100)
);

-- Создание таблицы print_dev
CREATE TABLE print_dev (
print_dev_id INTEGER PRIMARY KEY,
num_it VARCHAR(20) NOT NULL UNIQUE,
model_id INTEGER REFERENCES print_model(model_id) NOT NULL,
location_id INTEGER REFERENCES location(location_id) NOT NULL,
connection VARCHAR(20) NOT NULL,
computer_id INTEGER REFERENCES computers(computer_id),
mac_address VARCHAR(30),
ip_address VARCHAR(20),
comment	TEXT
);

-- Создание таблицы user_computer
CREATE TABLE user_computer (
id_us SERIAL PRIMARY KEY,
user_id INTEGER REFERENCES users(user_id) NOT NULL,
computer_id INTEGER REFERENCES computers(computer_id) NOT NULL
);

-- Создание таблицы switches
CREATE TABLE switches (
switch_id INTEGER PRIMARY KEY,
name VARCHAR(100) NOT NULL UNIQUE,
model VARCHAR(100) NOT NULL,
ports_count INTEGER NOT NULL,
location_id INTEGER REFERENCES location(location_id) NOT NULL,
ip_address VARCHAR(20)
);

-- Создание таблицы patch_panels
CREATE TABLE patch_panels (
pp_id INTEGER PRIMARY KEY,
name VARCHAR(100) NOT NULL UNIQUE,
ports_count INTEGER NOT NULL,
location_id INTEGER REFERENCES location(location_id) NOT NULL
);

-- Создание таблицы port_patch_panel
CREATE TABLE port_patch_panel (
port_pp_id INTEGER NOT NULL,
pp_id INTEGER NOT NULL,
name VARCHAR(100),
computer_id INTEGER REFERENCES computers(computer_id) UNIQUE,
print_dev_id INTEGER REFERENCES print_dev(print_dev_id) UNIQUE,
PRIMARY KEY (port_pp_id, pp_id)
);

-- Создание таблицы port_switch
CREATE TABLE port_switch (
port_switch_id INTEGER NOT NULL,
switch_id INTEGER NOT NULL,
status BOOLEAN NOT NULL,
port_pp_id INTEGER,
pp_id INTEGER,
PRIMARY KEY (port_switch_id, switch_id),
FOREIGN KEY (port_pp_id, pp_id) REFERENCES port_patch_panel(port_pp_id, pp_id)
);














