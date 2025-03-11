-- 1. Выбрать компьютеры, которые используются сотрудниками определенного отдела. Вывести информацию о ИТ-номере компьютера, местоположении компьютера и сотруднике, который работает за компьютером.
SELECT computers.num_it, location.building, location.room, users.last_name, users.first_name, users.middle_name, departments.name
FROM computers, location, users, user_computer, departments
WHERE users.department_id = 101 
AND user_computer.user_id = users.user_id 
AND user_computer.computer_id = computers.computer_id 
AND computers.location_id = location.location_id
AND users.department_id = departments.department_id;

-- 2. Составить цепочку подключения компьютера к локальной сети. Вывести имя патч-панели, номер и имя порта патч-панели, имя коммутатора и номер порта коммутатора.
SELECT computers.num_it, patch_panels.name, port_patch_panel.port_pp_id, port_patch_panel.name, switches.name, port_switch.port_switch_id
FROM computers, patch_panels, port_patch_panel, switches, port_switch
WHERE computers.num_it = 'K001' 
AND port_patch_panel.computer_id = computers.computer_id 
AND port_patch_panel.pp_id = patch_panels.pp_id 
AND port_switch.port_pp_id = port_patch_panel.port_pp_id
AND port_switch.pp_id = port_patch_panel.pp_id
AND port_switch.switch_id = switches.switch_id;

-- 3. Выбрать все компьютеры  с определенным процессором. Вывести ИТ-номер и местоположение компьютера.
SELECT computers.num_it, location.building, location.room
FROM computers 
JOIN processor ON computers.processor_id = processor.processor_id
JOIN location ON computers.location_id = location.location_id
WHERE processor.name = 'Intel Core i3-10105';

-- 4. Найти все установленные печатные устройства с их местоположением и моделью, где используется определенный картридж. Отсортировать по модели печатного устройства.
SELECT print_dev.num_it, print_model.name, location.building, location.room
FROM print_dev 
JOIN print_model ON print_dev.model_id = print_model.model_id
JOIN location ON print_dev.location_id = location.location_id
WHERE print_model.cartridge = 'CF259A'
ORDER BY print_model.name;

-- 5. Показать информацию по портам определенного коммутатора. Вывести номер порта коммутатора, его статус, подключенный порт и имя патч-панели, подключенное устройство.

SELECT port_switch.port_switch_id, port_switch.status, patch_panels.name, port_patch_panel.port_pp_id, port_patch_panel.name, computers.num_it, print_dev.num_it
FROM switches, port_switch 
LEFT JOIN port_patch_panel ON port_switch.port_pp_id = port_patch_panel.port_pp_id AND port_switch.pp_id = port_patch_panel.pp_id
LEFT JOIN patch_panels ON port_patch_panel.pp_id = patch_panels.pp_id
LEFT JOIN computers ON port_patch_panel.computer_id = computers.computer_id
LEFT JOIN print_dev ON port_patch_panel.print_dev_id = print_dev.print_dev_id
WHERE switches.name = 'b8.a111.r1.c3560_1' AND port_switch.switch_id = switches.switch_id

-- 6. Найти устройства (мониторы, оргтехнику), подключенные к компьютеру.
SELECT computers.num_it AS computers, monitors.num_it AS monitor, print_dev.num_it AS print
FROM computers
LEFT JOIN monitors ON computers.computer_id = monitors.computer_id
LEFT JOIN print_dev ON computers.computer_id = print_dev.computer_id
WHERE computers.num_it = 'K026'

-- 7. Посчитать количество оргтехники, установленной в организации, сгруппировав ее по типу.
SELECT print_type, COUNT(*)
FROM (SELECT print_model.type 
FROM print_dev
JOIN print_model ON print_dev.model_id = print_model.model_id) AS print_type GROUP BY print_type

