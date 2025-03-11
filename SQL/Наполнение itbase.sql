-- Добавление информации в таблицу depatments
INSERT INTO departments (department_id, name, head)
VALUES
	(101, 'Дирекция', 'Завидов И.Н.'),
	(102, 'Отдел кадров', 'Богданов А.С.'),
	(103, 'Юридический отдел', 'Вострикова В.П.'),
	(105, 'Бухгалтерия', 'Симонова С.К.'),
	(106, 'Отдел безопасности', 'Павлюков В.Г.');
	
-- Добавление информации в таблицу users
INSERT INTO users (user_id, last_name, first_name, middle_name, department_id, domain_name, comment)
VALUES
	(1, 'Завидов', 'Иван', 'Николаевич', 101, 'zavidov_in', NULL),
	(2, 'Богданов', 'Александр', 'Сергеевич', 102, 'bogdanova_as', NULL),
	(3, 'Вострикова', 'Валентина', 'Петровна', 103, 'vostrikova_vp', NULL),
	(4, 'Симонова', 'Светлана', 'Константиновна', 105, 'simonova_sk', NULL),
	(5, 'Павлюков', 'Виталий', 'Георгиевич', 106, 'pavlyukov_vg', NULL),
	(6, 'Смирнова', 'Ксения', 'Васильевна', 101, 'smirnova_kv', 'В отпуске до 01.01.2024'),
	(7, 'Конин', 'Всеволод', 'Борисович', 101, 'konin_vb', NULL),
	(8, 'Милюков', 'Анатолий', 'Александрович', 106, 'milyukov_aa', NULL),
	(9, 'Шелехова', 'Маргарита', 'Осиповна', 102, 'shelehova_mo', NULL),
	(10, 'Якутина', 'Альбина', 'Васильевна', 105, 'yakutina_av', NULL);
	
-- Добавление информации в таблицу location
INSERT INTO location (location_id, building, room)
VALUES
	(1, 'Корпус 8', '111'),
	(2, 'Корпус 8', '225'),
	(3, 'Корпус 8', '227'),
	(4, 'Корпус 8', '303'),
	(5, 'Корпус 8', '318'),
	(6, 'Корпус 15', '101'),
	(7, 'Корпус 15', '426'),
	(8, 'Корпус 15', '429'),
	(9, 'Корпус 15', '430'),
	(10, 'Корпус 15', '430а');

-- Добавление информации в таблицу motherboard
INSERT INTO motherboard (motherboard_id, name)
VALUES
	(1, 'ASUS PRIME H510M-R'),
	(2, 'MSI PRO B660M-E DDR4');

-- Добавление информации в таблицу processor
INSERT INTO processor (processor_id, name)
VALUES
	(1, 'Intel Core i3-10105'),
	(2, 'Intel Core i5-11400'),
	(3, 'Intel Core i5-12400'),
	(4, 'Intel Core i7-13700');

-- Добавление информации в таблицу ram
INSERT INTO ram (ram_id, name, capacity)
VALUES
	(1, 'Kingston ValueRAM (KVR26N19S6/4)', 4096),
	(2, 'Kingston ValueRAM (KVR26N19S8/8)', 8192),
	(3, 'Kingston FURY Beast Black (KF432C16BB1/16)', 16384);
	
-- Добавление информации в таблицу store
INSERT INTO store (store_id, name, type, capacity)
VALUES
	(1, 'Samsung 870 EVO (MZ-77E500BW)', 'SSD', 500),
	(2, 'Samsung 970 EVO Plus (MZ-V7S500BW)', 'SSD M.2', 500),
	(3, 'Seagate BarraCuda (ST1000DM010)', 'HDD', 1000);

-- Добавление информации в таблицу ethernet_card
INSERT INTO ethernet_card (ethernet_card_id, name)
VALUES
	(1, 'Asus Ethernet'),
	(2, 'MSI Ethernet'),
	(3, 'D-Link DFE-560FX');

-- Добавление информации в таблицу os_computer
INSERT INTO os_computer (os_id, name, bit_os)
VALUES
	(1, 'Windows 10', 64),
	(2, 'Windows 7', 64),
	(3, 'Windows 7', 32);

-- Добавление информации в таблицу computers
INSERT INTO computers (computer_id, num_it, location_id, password, os_id, motherboard_id, processor_id, ram1, ram2, ram3, ram4, store1, store2, store3, store4, ethernet1, type_ethernet1, mac1, ethernet2, type_ethernet2, mac2, video_card, comment)
VALUES
	(1, 'K001', 2, 'frtb7NR!op', 1, 2, 4, 3, 3, NULL, NULL, 2, 3, NULL, NULL, 2, 'встроенная', '00:26:EB:8F:15:AC', NULL, NULL, NULL, NULL, NULL),
	(2, 'K003', 3, 'Ugev91W@gq', 1, 1, 1, 1, 1, NULL, NULL, 3, NULL, NULL, NULL, 1, 'встроенная', '00:FE:DA:89:5D:7A', NULL, NULL, NULL, NULL, NULL),
	(3, 'K025', 3, '1m.ULBe5ek', 3, 1, 1, 1, NULL, NULL, NULL, 3, NULL, NULL, NULL, 1, 'встроенная', '00:FE:CA:3F:79:E5', NULL, NULL, NULL, NULL, 'В план обновления'),
	(4, 'K026', 4, 'GDMY59!fw6', 2, 1, 1, 2, NULL, NULL, NULL, 3, NULL, NULL, NULL, 1, 'встроенная', '00:FE:DF:5A:F1:45', 3, 'внешняя', '84:38:35:4D:CA:F4', NULL, 'Встроенная сетевая карта не работает'),
	(5, 'K027', 5, 'I$x1fNN9?V', 1, 2, 3, 3, NULL, NULL, NULL, 1, 3, NULL, NULL, 2, 'встроенная', '00:26:EB:9A:35:C7', NULL, NULL, NULL, NULL, NULL),
	(6, 'K053', 7, '@581FO1e0b', 1, 2, 4, 3, 3, NULL, NULL, 2, 1, NULL, NULL, 2, 'встроенная', '00:26:5F:6C:AC:87', NULL, NULL, NULL, 'MSI AMD Radeon RX 6400 AERO ITX', NULL),
	(7, 'K055', 8, 'TBU6ik:p@5', 1, 1, 2, 2, 2, NULL, NULL, 3, 3, NULL, NULL, 1, 'встроенная', 'FD:82:3A:7F:DC:BE', NULL, NULL, NULL, NULL, NULL),
	(8, 'K062', 9, '+uvSxphF66', 1, 1, 1, 2, NULL, NULL, NULL, 3, NULL, NULL, NULL, 1, 'встроенная', 'AB:23:E7:DD:8A:AC', NULL, NULL, NULL, NULL, NULL),
	(9, 'K063', 10, 'Agz^1:wO8F', 1, 1, 1, 2, NULL, NULL, NULL, 3, NULL, NULL, NULL, 1, 'встроенная', 'AB:23:E7:DF:78:F4', NULL, NULL, NULL, NULL, NULL),
	(10, 'K064', 10, '8F#wQt?HvQ', 1, 1, 1, 2, NULL, NULL, NULL, 3, NULL, NULL, NULL, 1, 'встроенная', 'AB:23:E7:AB:77:B5', NULL, NULL, NULL, NULL, NULL);

-- Добавление информации в таблицу monitor_model
INSERT INTO monitor_model (model_id, name, diagonal, resolution)
VALUES
	(1, 'AOC 24E1Q', 23.8, '1920x1080'),
	(2, 'AOC U2790PQU', 27, '3840x2160'),
	(3, 'Samsung SyncMaster 943N', 19, '1280x1024');

-- Добавление информации в таблицу monitors
INSERT INTO monitors (monitor_id, num_it, model_id, location_id, computer_id, comment)
VALUES
	(1, 'M001', 1, 2, 1, NULL),
	(2, 'M002', 1, 2, 1, NULL),
	(3, 'M003', 1, 3, 2, NULL),
	(4, 'M022', 3, 3, 3, 'В план обновления'),
	(5, 'M024', 3, 4, 4, 'В план обновления'),
	(6, 'M027', 2, 5, 5, NULL),
	(7, 'M050', 2, 7, 6, NULL),
	(8, 'M051', 2, 7, 6, NULL),
	(9, 'M056', 1, 8, 7, NULL),
	(10, 'M062', 1, 9, 8, NULL),
	(11, 'M063', 1, 10, 9, NULL),
	(12, 'M064', 1, 10, 10, NULL);

-- Добавление информации в таблицу print_model
INSERT INTO print_model (model_id, name, type, cartridge)
VALUES
	(1, 'Canon i-SENSYS MF453dw', 'МФУ', '057H'),
	(2, 'HP LaserJet Pro M404dn', 'Принтер', 'CF259A'),
	(3, 'HP LaserJet Pro M428fdn', 'МФУ', 'CF259A'),
	(4, 'Brother DCP-L2540DN', 'МФУ', 'TN-2375'),
	(5, 'CanoScan LiDE 400', 'Сканер', NULL);
	
-- Добавление информации в таблицу print_dev
INSERT INTO print_dev (print_dev_id, num_it, model_id, location_id, connection, computer_id, mac_address, ip_address, comment)
VALUES
	(1, 'F001', 1, 2, 'Сетевое', NULL, 'F4:63:AC:32:FA:BC', '192.168.0.25', NULL),
	(2, 'F003', 1, 3, 'Сетевое', NULL, 'F4:63:AF:88:9F:C4', '192.168.0.26', NULL),
	(3, 'F004', 4, 4, 'Локальное', 4, NULL, NULL, NULL),
	(4, 'P001', 2, 5, 'Локальное', 5, NULL, NULL, NULL),
	(5, 'S001', 5, 5, 'Локальное', 5, NULL, NULL, NULL),
	(6, 'F010', 3, 7, 'Сетевое', NULL, 'F8:92:A5:77:6B:CC', '192.168.1.25', NULL),
	(7, 'F013', 4, 8, 'Локальное', 7, NULL, NULL, 'Необходимо заменить фотобарабан'),
	(8, 'P005', 2, 9, 'Локальное', 8, NULL, NULL, NULL),
	(9, 'F023', 1, 10, 'Сетевое', NULL, 'A3:BF:AA:57:3A:FD', '192.168.1.26', NULL);

-- Добавление информации в таблицу user_computer
INSERT INTO user_computer (user_id, computer_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 4),
	(4, 5),
	(5, 7),
	(6, 8),
	(7, 9),
	(8, 6),
	(9, 3),
	(10, 10);

-- Добавление информации в таблицу switches
INSERT INTO switches (switch_id, name, model, ports_count, location_id, ip_address)
VALUES
	(1, 'b8.a111.r1.c3560_1', 'c3650', 24, 1, '192.168.0.1'),
	(2, 'b15.a101.r1.c3560_1', 'c3650', 24, 6, '192.168.1.1');

-- Добавление информации в таблицу patch_panels
INSERT INTO patch_panels (pp_id, name, ports_count, location_id)
VALUES
	(1, 'b8.a111.r1.1k', 12, 1),
	(2, 'b15.a101.r1.1k', 12, 6);

-- Добавление информации в таблицу port_patch_panel
INSERT INTO port_patch_panel (port_pp_id, pp_id, name, computer_id, print_dev_id)
VALUES
	(01, 1, '111', NULL, NULL),
	(02, 1, '225/1', 1, NULL),
	(03, 1, '225/2', NULL, 1),
	(04, 1, '227/1', 2, NULL),
	(05, 1, '227/2', NULL, 2),
	(06, 1, '227/3', 3, NULL),
	(07, 1, '303/1', NULL, NULL),
	(08, 1, '303/2', 4, NULL),
	(09, 1, '318/1', NULL, NULL),
	(10, 1, '318/2', 5, NULL),
	(11, 1, '318/3', NULL, NULL),
	(12, 1, '318/4', NULL, NULL),
	(01, 2, '101', NULL, NULL),
	(02, 2, '426/1', NULL, 6),
	(03, 2, '426/2', 6, NULL),
	(04, 2, '426/3', NULL, NULL),
	(05, 2, '429/1', 7, NULL),
	(06, 2, '429/2', NULL, NULL),
	(07, 2, '430/1', NULL, NULL),
	(08, 2, '430/2', NULL, NULL),
	(09, 2, '430/3', 8, NULL),
	(10, 2, '430а/1', 10, NULL),
	(11, 2, '430а/2', 9, NULL),
	(12, 2, '430а/3', NULL, 9);

-- Добавление информации в таблицу port_switch
INSERT INTO port_switch (port_switch_id, switch_id, status, port_pp_id, pp_id)
VALUES
	(01, 1, false, NULL, NULL),
	(02, 1, true, 2, 1),
	(03, 1, true, 3, 1),
	(04, 1, true, 4, 1),
	(05, 1, true, 5, 1),
	(06, 1, false, NULL, NULL),
	(07, 1, false, NULL, NULL),
	(08, 1, true, 6, 1),
	(09, 1, false, NULL, NULL),
	(10, 1, false, NULL, NULL),
	(11, 1, true, 8, 1),
	(12, 1, false, NULL, NULL),
	(13, 1, false, NULL, NULL),
	(14, 1, true, 10, 1),
	(15, 1, false, NULL, NULL),
	(16, 1, false, NULL, NULL),
	(17, 1, false, NULL, NULL),
	(18, 1, false, NULL, NULL),
	(19, 1, false, NULL, NULL),
	(20, 1, false, NULL, NULL),
	(21, 1, false, NULL, NULL),
	(22, 1, false, NULL, NULL),
	(23, 1, false, NULL, NULL),
	(24, 1, false, NULL, NULL),
	(01, 2, true, 2, 2),
	(02, 2, true, 3, 2),
	(03, 2, false, NULL, NULL),
	(04, 2, false, NULL, NULL),
	(05, 2, true, 5, 2),
	(06, 2, true, 9, 2),
	(07, 2, false, NULL, NULL),
	(08, 2, false, NULL, NULL),
	(09, 2, false, NULL, NULL),
	(10, 2, false, NULL, NULL),
	(11, 2, false, NULL, NULL),
	(12, 2, false, NULL, NULL),
	(13, 2, false, NULL, NULL),
	(14, 2, false, NULL, NULL),
	(15, 2, true, 10, 2),
	(16, 2, false, NULL, NULL),
	(17, 2, false, NULL, NULL),
	(18, 2, false, NULL, NULL),
	(19, 2, false, NULL, NULL),
	(20, 2, true, 11, 2),
	(21, 2, true, 12, 2),
	(22, 2, false, NULL, NULL),
	(23, 2, false, NULL, NULL),
	(24, 2, false, NULL, NULL);