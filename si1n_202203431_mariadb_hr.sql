CREATE ROLE eduardo_kuster;
CREATE DATABASE uvv;

CREATE TABLE cargos (
                id_cargo VARCHAR(10) NOT NULL,
                cargo VARCHAR(35) NOT NULL,
                salario_minimo DECIMAL(8,2),
                salario_maximo DECIMAL(8,2));

ALTER TABLE cargos ADD CONSTRAINT PRIMARY KEY (id_cargo);
INSERT INTO cargos VALUES
('AD_PRES', 'President', 20080, 40000);
INSERT INTO cargos VALUES
('AD_VP', 'Administration Vice President', 15000, 30000);
INSERT INTO cargos VALUES
('AD_ASST', 'Administration Assistant', 3000, 6000);
INSERT INTO cargos VALUES
('FI_MGR', 'Finance Manager', 8200, 16000);
INSERT INTO cargos VALUES
('FI_ACCOUNT', 'Accountant', 4200, 9000);
INSERT INTO cargos VALUES
('AC_MGR', 'Accounting Manager', 8200, 16000);
INSERT INTO cargos VALUES
('AC_ACCOUNT', 'Public Accountant', 4200, 9000);
INSERT INTO cargos VALUES
('SA_MAN', 'Sales Manager', 10000, 20080);
INSERT INTO cargos VALUES
('SA_REP', 'Sales Representative', 6000, 12008);
INSERT INTO cargos VALUES
('PU_MAN', 'Purchasing Manager', 8000, 15000);
INSERT INTO cargos VALUES
('PU_CLERK', 'Purchasing Clerk', 2500, 5500);
INSERT INTO cargos VALUES
('ST_MAN', 'Stock Manager', 5500, 8500);
INSERT INTO cargos VALUES
('ST_CLERK', 'Stock Clerk', 2008, 5000);
INSERT INTO cargos VALUES
('SH_CLERK', 'Shipping Clerk', 2500, 5500);
INSERT INTO cargos VALUES
('IT_PROG', 'Programmer', 4000, 10000);
INSERT INTO cargos VALUES
('MK_MAN', 'Marketing Manager', 9000, 15000);
INSERT INTO cargos VALUES
('MK_REP', 'Marketing Representative', 4000, 9000);
INSERT INTO cargos VALUES
('HR_REP', 'Human Resources Representative', 4000, 9000);
INSERT INTO cargos VALUES
('PR_REP', 'Public Relations Representative', 4500, 10500);


CREATE UNIQUE INDEX ak_cargo
 ON cargos
 ( cargo );

CREATE TABLE regioes (
                id_regiao INT NOT NULL,
                nome VARCHAR(25) NOT NULL);

ALTER TABLE regioes ADD CONSTRAINT PRIMARY KEY (id_regiao);
INSERT INTO regioes VALUES
(1, 'Europe');
INSERT INTO regioes VALUES
(2, 'Americas');
INSERT INTO regioes VALUES
(3, 'Asia');
INSERT INTO regioes VALUES
(4, 'Middle East and Africa');

CREATE UNIQUE INDEX ak_nome
 ON regioes
 ( nome );

CREATE TABLE paises (
                id_pais CHAR(2) NOT NULL,
                id_regiao INT,
                nome VARCHAR(50) NOT NULL);

ALTER TABLE paises ADD CONSTRAINT PRIMARY KEY (id_pais);
INSERT INTO paises VALUES
('AR', 2, 'Argentina');
INSERT INTO paises VALUES
('AU', 3, 'Australia');
INSERT INTO paises VALUES
('BE', 1, 'Belgium');
INSERT INTO paises VALUES
('BR', 2, 'Brazil');
INSERT INTO paises VALUES
('CA', 2, 'Canada');
INSERT INTO paises VALUES
('CH', 1, 'Switzerland');
INSERT INTO paises VALUES
('CN', 3, 'China');
INSERT INTO paises VALUES
('DE', 1, 'Germany');
INSERT INTO paises VALUES
('DK', 1, 'Denmark');
INSERT INTO paises VALUES
('EG', 4, 'Egypt');
INSERT INTO paises VALUES
('FR', 1, 'France');
INSERT INTO paises VALUES
('IL', 4, 'Israel');
INSERT INTO paises VALUES
('IN', 3, 'India');
INSERT INTO paises VALUES
('IT', 1, 'Italy');
INSERT INTO paises VALUES
('JP', 3, 'Japan');
INSERT INTO paises VALUES
('KW', 4, 'Kuwait');
INSERT INTO paises VALUES
('ML', 3, 'Malaysia');
INSERT INTO paises VALUES
('MX', 2, 'Mexico');
INSERT INTO paises VALUES
('NG', 4, 'Nigeria');
INSERT INTO paises VALUES
('NL', 1, 'Netherlands');
INSERT INTO paises VALUES
('SG', 3, 'Singapore');
INSERT INTO paises VALUES
('UK', 1, 'United Kingdom');
INSERT INTO paises VALUES
('US', 2, 'United States of America');
INSERT INTO paises VALUES
('ZM', 4, 'Zambia');
INSERT INTO paises VALUES
('Z', 4, 'Zimbabwe');

CREATE UNIQUE INDEX ak_nome1
 ON paises
 ( nome );

CREATE TABLE localizacoes (
                id_localizacao INT NOT NULL,
                id_pais CHAR(2),
                endereco VARCHAR(50),
                cep VARCHAR(12),
                cidade VARCHAR(50),
                uf VARCHAR(25));

ALTER TABLE localizacoes ADD CONSTRAINT PRIMARY KEY (id_localizacao);
INSERT INTO localizacoes VALUES
(1000, 'IT', '1297 Via Cola di Rie', '00989',
 'Roma', '');
INSERT INTO localizacoes VALUES
(1100, 'IT', '93091 Calle della Testa', '10934',
 'Venice', '');
INSERT INTO localizacoes VALUES
(1200, 'JP', '2017 Shinjuku-ku', '1689',
 'Tokyo', 'Tokyo Prefecture');
INSERT INTO localizacoes VALUES
(1300, 'JP', '9450 Kamiya-cho', '6823',
 'Hiroshima', '');
INSERT INTO localizacoes VALUES
(1400, 'US', '2014 Jabberwocky Rd', '26192',
 'Southlake', 'Texas');
INSERT INTO localizacoes VALUES
(1500, 'US', '2011 Interiors Blvd', '99236',
 'South San Francisco', 'California');
INSERT INTO localizacoes VALUES
(1600, 'US', '2007 Zagora St', '50090',
 'South Brunswick', 'New Jersey');
INSERT INTO localizacoes VALUES
(1700, 'US', '2004 Charade Rd', '98199',
 'Seattle', 'Washington');
INSERT INTO localizacoes VALUES
(1800, 'CA', '147 Spadina Ave', 'M5V 2L7',
 'Toronto', 'Ontario');
INSERT INTO localizacoes VALUES
(1900, 'CA', '6092 Boxwood St', 'YSW 9T2',
 'Whitehorse', 'Yukon');
INSERT INTO localizacoes VALUES
(2000, 'CN', '40-5-12 Laogianggen', '190518',
 'Beijing', '');
INSERT INTO localizacoes VALUES
(2100, 'IN', '1298 Vileparle (E)', '490231',
 'Bombay', 'Maharashtra');
INSERT INTO localizacoes VALUES
(2200, 'AU', '12-98 Victoria Street', '2901',
 'Sydney', 'New South Wales');
INSERT INTO localizacoes VALUES
(2300, 'SG', '198 Clementi North', '540198',
 'Singapore', '');
INSERT INTO localizacoes VALUES
(2400, 'UK', '8204 Arthur St', '',
 'London', '');
INSERT INTO localizacoes VALUES
(2500, 'UK', 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB',
 'Oxford', 'Oxford');
INSERT INTO localizacoes VALUES
(2600, 'UK', '9702 Chester Road', '09629850293',
 'Stretford', 'Manchester');
INSERT INTO localizacoes VALUES
(2700, 'DE', 'Schwanthalerstr. 7031', '80925',
 'Munich', 'Bavaria');
INSERT INTO localizacoes VALUES
(2800, 'BR', 'Rua Frei Caneca 1360 ', '01307-002',
 'Sao Paulo', 'Sao Paulo');
INSERT INTO localizacoes VALUES
(2900, 'CH', '20 Rue des Corps-Saints', '1730',
 'Geneva', 'Geneve');
INSERT INTO localizacoes VALUES
(3000, 'CH', 'Murtenstrasse 921', '3095',
 'Bern', 'BE');
INSERT INTO localizacoes VALUES
(3100, 'NL', 'Pieter Breughelstraat 837', '3029SK',
 'Utrecht', 'Utrecht');
INSERT INTO localizacoes VALUES
(3200, 'MX', 'Mariano Escobedo 9991', '11932',
 'Mexico City', 'Distrito Federal,');

CREATE TABLE departamentos (
                id_departamento INT NOT NULL,
                id_gerente INT,
                id_localizacao INT,
                nome VARCHAR(50));

ALTER TABLE departamentos ADD CONSTRAINT PRIMARY KEY (id_departamento);
INSERT INTO departamentos VALUES
(10, 200, 1700, 'Administration');
INSERT INTO departamentos VALUES
(20, 201, 1800, 'Marketing');
INSERT INTO departamentos VALUES
(30, 114, 1700, 'Purchasing');
INSERT INTO departamentos VALUES
(40, 203, 2400, 'Human Resources');
INSERT INTO departamentos VALUES
(50, 121, 1500, 'Shipping');
INSERT INTO departamentos VALUES
(60, 103, 1400, 'IT');
INSERT INTO departamentos VALUES
(70, 204, 2700, 'Public Relations');
INSERT INTO departamentos VALUES
(80, 145, 2500, 'Sales');
INSERT INTO departamentos VALUES
(90, 100, 1700, 'Executive');
INSERT INTO departamentos VALUES
(100, 108, 1700, 'Finance');
INSERT INTO departamentos VALUES
(110, 205, 1700, 'Accounting');
INSERT INTO departamentos VALUES
(120,130,1700, 'Treasury');
INSERT INTO departamentos VALUES
(130,120 ,1700, 'Corporate Tax');
INSERT INTO departamentos VALUES
(140,402,1700, 'Control And Credit');
INSERT INTO departamentos VALUES
(150,505,1700, 'Shareholder Services');
INSERT INTO departamentos VALUES
(160,507,1700, 'Benefits');
INSERT INTO departamentos VALUES
(170,410,1700, 'Manufacturing');
INSERT INTO departamentos VALUES
(180,302,1700, 'Construction');
INSERT INTO departamentos VALUES
(190,320,1700, 'Contracting');
INSERT INTO departamentos VALUES
(200,441, 1700, 'Operations');
INSERT INTO departamentos VALUES
(210,445, 1700, 'IT Support');
INSERT INTO departamentos VALUES
(220,360, 1700, 'NOC');
INSERT INTO departamentos VALUES
(230,370, 1700, 'IT Helpdesk');
INSERT INTO departamentos VALUES
(240,402, 1700, 'Government Sales');
INSERT INTO departamentos VALUES
(250,303, 1700, 'Retail Sales');
INSERT INTO departamentos VALUES
(260,500, 1700, 'Recruiting');
INSERT INTO departamentos VALUES
(270,280, 1700, 'Payroll');

CREATE UNIQUE INDEX ak_nome2
 ON departamentos
 ( nome );

CREATE TABLE empregados (
                Id_empregado1 INT NOT NULL,
                nome VARCHAR(75),
                email VARCHAR(35),
                telefone VARCHAR(20),
                data_contratacao DATE,
                id_cargo VARCHAR(10),
                salario DECIMAL(8,2),
                comissao DECIMAL(4,2),
                id_supervisor INT,
                id_departamento INT);

ALTER TABLE empregados ADD CONSTRAINT PRIMARY KEY (Id_empregado1);
INSERT INTO empregados VALUES
(100, 'Steven King', 'SKING', '515.123.4567', '2003-06-17', 'AD_PRES', 24000, null, null, 10);
INSERT INTO empregados VALUES
(101, 'Neena Kochhar', 'NKOCHHAR', '515.123.4568', '2005-09-21', 'AD_VP', 17000, null, 100, 20);
INSERT INTO empregados VALUES
(102, 'Lex De Haan', 'LDEHAAN', '515.123.4569', '2001-01-13', 'AD_VP', 17000, null, 100, 30);
INSERT INTO empregados VALUES
(103, 'Alexander Hunold', 'AHUNOLD', '590.423.4567', '2006-01-03', 'IT_PROG', 9000, null, 102, 40);
INSERT INTO empregados VALUES
(104, 'Bruce Ernst', 'BERNST', '590.423.4568', '2007-05-21', 'IT_PROG', 6000, null, 103, 50);
INSERT INTO empregados VALUES
(105, 'David Austin', 'DAUSTIN', '590.423.4569', '2005-06-25', 'IT_PROG', 4800, null, 103, 60);
INSERT INTO empregados VALUES
(106, 'Valli Pataballa', 'VPATABAL', '590.423.4560', '2006-02-05', 'IT_PROG', 4800, null, 103, 70);
INSERT INTO empregados VALUES
(107, 'Diana Lorentz', 'DLORENTZ', '590.423.5567', '2007-02-07', 'IT_PROG', 4200, null, 103, 80);
INSERT INTO empregados VALUES
(108, 'Nancy Greenberg', 'NGREENBE', '515.124.4569', '2002-08-17', 'FI_MGR', 12008, null, 101, 90);
INSERT INTO empregados VALUES
(109, 'Daniel Faviet', 'DFAVIET', '515.124.4169', '2002-08-16', 'FI_ACCOUNT', 9000, null, 108, 100);
INSERT INTO empregados VALUES
(110, 'John Chen', 'JCHEN', '515.124.4269', '2005-09-28', 'FI_ACCOUNT', 8200, null, 108, 110);
INSERT INTO empregados VALUES
(111, 'Ismael Sciarra', 'ISCIARRA', '515.124.4369', '2005-09-30', 'FI_ACCOUNT', 7700, null, 108, 120);
INSERT INTO empregados VALUES
(112, 'Jose Manuel Urman', 'JMURMAN', '515.124.4469', '2006-03-07', 'FI_ACCOUNT', 7800, null, 108, 130);
INSERT INTO empregados VALUES
(113, 'Luis Popp', 'LPOPP', '515.124.4567', '2007-12-07', 'FI_ACCOUNT', 6900, null, 108, 140);
INSERT INTO empregados VALUES
(114, 'Den Raphaely', 'DRAPHEAL', '515.127.4561', '2002-12-07', 'PU_MAN', 11000, null, 100, 150);
INSERT INTO empregados VALUES
(115, 'Alexander Khoo', 'AKHOO', '515.127.4562', '2003-05-18', 'PU_CLERK', 3100, null, 114, 160);
INSERT INTO empregados VALUES
(116, 'Shelli Baida', 'SBAIDA', '515.127.4563', '2005-12-24', 'PU_CLERK', 2900, null, 114, 170);
INSERT INTO empregados VALUES
(117, 'Sigal Tobias', 'STOBIAS', '515.127.4564', '2005-07-24', 'PU_CLERK', 2800, null, 114, 180);
INSERT INTO empregados VALUES
(118, 'Guy Himuro', 'GHIMURO', '515.127.4565', '2006-11-15', 'PU_CLERK', 2600, null, 114, 190);
INSERT INTO empregados VALUES
(119, 'Karen Colmenares', 'KCOLMENA', '515.127.4566', '2007-08-10', 'PU_CLERK', 2500, null, 114, 200);
INSERT INTO empregados VALUES
(120, 'Matthew Weiss', 'MWEISS', '650.123.1234', '2004-07-18', 'ST_MAN', 8000, null, 100, 210);
INSERT INTO empregados VALUES
(121, 'Adam Fripp', 'AFRIPP', '650.123.2234', '2005-04-10', 'ST_MAN', 8200, null, 100, 220);
INSERT INTO empregados VALUES
(122, 'Payam Kaufling', 'PKAUFLIN', '650.123.3234', '2003-05-01', 'ST_MAN', 7900, null, 100, 230);
INSERT INTO empregados VALUES
(123, 'Shanta Vollman', 'SVOLLMAN', '650.123.4234', '2005-10-10', 'ST_MAN', 6500, null, 100, 240);
INSERT INTO empregados VALUES
(124, 'Kevin Mourgos', 'KMOURGOS', '650.123.5234', '2007-11-16', 'ST_MAN', 5800, null, 100, 250);
INSERT INTO empregados VALUES
(125, 'Julia Nayer', 'JNAYER', '650.124.1214', '2005-07-16', 'ST_CLERK', 3200, null, 120, 260);
INSERT INTO empregados VALUES
(126, 'Irene Mikkilineni', 'IMIKKILI', '650.124.1224', '2006-09-28', 'ST_CLERK', 2700, null, 120, 270);
INSERT INTO empregados VALUES
(127, 'James Landry', 'JLANDRY', '650.124.1334', '2007-01-14', 'ST_CLERK', 2400, null, 120, null);
INSERT INTO empregados VALUES
(128, 'Steven Markle', 'SMARKLE', '650.124.1434', '2008-03-08', 'ST_CLERK', 2200, null, 120, null);
INSERT INTO empregados VALUES
(129, 'Laura Bissot', 'LBISSOT', '650.124.5234', '2005-08-20', 'ST_CLERK', 3300, null, 121, null);
INSERT INTO empregados VALUES
(130, 'Mozhe Atkinson', 'MATKINSO', '650.124.6234', '2005-10-30', 'ST_CLERK', 2800, null, 121, null);
INSERT INTO empregados VALUES
(131, 'James Marlow', 'JAMRLOW', '650.124.7234', '2005-02-16', 'ST_CLERK', 2500, null, 121, null);
INSERT INTO empregados VALUES
(132, 'TJ Olson', 'TJOLSON', '650.124.8234', '2007-04-10', 'ST_CLERK', 2100, null, 121, null);
INSERT INTO empregados VALUES
(133, 'Jason Mallin', 'JMALLIN', '650.127.1934', '2004-06-14', 'ST_CLERK', 3300, null, 122, null);
INSERT INTO empregados VALUES
(134, 'Michael Rogers', 'MROGERS', '650.127.1834', '2006-08-26', 'ST_CLERK', 2900, null, 122, null);
INSERT INTO empregados VALUES
(135, 'Ki Gee', 'KGEE', '650.127.1734', '2007-12-12', 'ST_CLERK', 2400, null, 122, null);
INSERT INTO empregados VALUES
(136, 'Hazel Philtanker', 'HPHILTAN', '650.127.1634', '2008-02-06', 'ST_CLERK', 2200, null, 122, null);
INSERT INTO empregados VALUES
(137, 'Renske Ladwig', 'RLADWIG', '650.121.1234', '2003-07-14', 'ST_CLERK', 3600, null, 123, null);
INSERT INTO empregados VALUES
(138, 'Stephen Stiles', 'SSTILES', '650.121.2034', '2005-10-26', 'ST_CLERK', 3200, null, 123, null);
INSERT INTO empregados VALUES
(139, 'John Seo', 'JSEO', '650.121.2019', '2006-02-12', 'ST_CLERK', 2700, null, 123, null);
INSERT INTO empregados VALUES
(140, 'Joshua Patel', 'JPATEL', '650.121.1834', '2006-04-06', 'ST_CLERK', 2500, null, 123, null);
INSERT INTO empregados VALUES
(141, 'Trenna Rajs', 'TRAJS', '650.121.8009', '2003-10-17', 'ST_CLERK', 3500, null, 124, null);
INSERT INTO empregados VALUES
(142, 'Curtis Davies', 'CDAVIES', '650.121.2994', '2005-01-29', 'ST_CLERK', 3100, null, 124, null);
INSERT INTO empregados VALUES
(143, 'Randall Matos', 'RMATOS', '650.121.2874', '2006-03-15', 'ST_CLERK', 2600, null, 124, null);
INSERT INTO empregados VALUES
(144, 'Peter Vargas', 'PVARGAS', '650.121.2004', '2006-07-09', 'ST_CLERK', 2500, null, 124, null);
INSERT INTO empregados VALUES
(145, 'John Russell', 'JRUSSEL', '011.44.1344.429268', '2004-10-01', 'SA_MAN', 14000, .4, 100, null);
INSERT INTO empregados VALUES
(146, 'Karen Partners', 'KPARTNER', '011.44.1344.467268', '2005-01-05', 'SA_MAN', 13500, .3, 100, null);
INSERT INTO empregados VALUES
(147, 'Alberto Errazuriz', 'AERRAZUR', '011.44.1344.429278', '2005-03-10', 'SA_MAN', 12000, .3, 100, null);
INSERT INTO empregados VALUES
(148, 'Gerald Cambrault', 'GCAMBRAU', '011.44.1344.619268', '2007-10-15', 'SA_MAN', 11000, .3, 100, null);
INSERT INTO empregados VALUES
(149, 'Eleni Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '2008-01-29', 'SA_MAN', 10500, .2, 100, null);
INSERT INTO empregados  VALUES
(150, 'Peter Tucker', 'PTUCKER', '011.44.1344.129268', '2005-01-30', 'SA_REP', 10000, .3, 145, null);
INSERT INTO empregados VALUES
(151, 'David Bernstein', 'DBERNSTE', '011.44.1344.345268', '2005-03-24', 'SA_REP', 9500, .25, 145, null);
INSERT INTO empregados VALUES
(152, 'Peter Hall', 'PHALL', '011.44.1344.478968', '2005-08-20', 'SA_REP', 9000, .25, 145, null);
INSERT INTO empregados VALUES
(153, 'Christopher Olsen', 'COLSEN', '011.44.1344.498718', '2006-03-30', 'SA_REP', 8000, .2, 145, null);
INSERT INTO empregados VALUES
(154, 'Nanette Cambrault', 'NCAMBRAU', '011.44.1344.987668', '2006-12-09', 'SA_REP', 7500, .2, 145, null);
INSERT INTO empregados VALUES
(155, 'Oliver Tuvault', 'OTUVAULT', '011.44.1344.486508', '2007-11-23', 'SA_REP', 7000, .15, 145, null);
INSERT INTO empregados VALUES
(156, 'Janette King', 'JKING', '011.44.1345.429268', '2004-01-30', 'SA_REP', 10000, .35, 146, null);
INSERT INTO empregados VALUES
(157, 'Patrick Sully', 'PSULLY', '011.44.1345.929268', '2004-03-04', 'SA_REP', 9500, .35, 146, null);
INSERT INTO empregados VALUES
(158, 'Allan McEwen', 'AMCEWEN', '011.44.1345.829268', '2004-08-01', 'SA_REP', 9000, .35, 146, null);
INSERT INTO empregados VALUES
(159, 'Lindsey Smith', 'LSMITH', '011.44.1345.729268', '2005-03-10', 'SA_REP', 8000, .3, 146, null);
INSERT INTO empregados VALUES
(160, 'Louise Doran', 'LDORAN', '011.44.1345.629268', '2005-12-15', 'SA_REP', 7500, .3, 146, null);
INSERT INTO empregados VALUES
(161, 'Sarath Sewall', 'SSEWALL', '011.44.1345.529268', '2006-11-03', 'SA_REP', 7000, .25, 146, null);
INSERT INTO empregados VALUES
(162, 'Clara Vishney', 'CVISHNEY', '011.44.1346.129268', '2005-11-11', 'SA_REP', 10500, .25, 147, null);
INSERT INTO empregados VALUES
(163, 'Danielle Greene', 'DGREENE', '011.44.1346.229268', '2007-03-19', 'SA_REP', 9500, .15, 147, null);
INSERT INTO empregados VALUES
(164, 'Mattea Marvins', 'MMARVINS', '011.44.1346.329268', '2008-01-24', 'SA_REP', 7200, .1, 147, null);
INSERT INTO empregados VALUES
(165, 'David Lee', 'DLEE', '011.44.1346.529268', '2008-02-23', 'SA_REP', 6800, .1, 147, null);
INSERT INTO empregados VALUES
(166, 'Sundar Ande', 'SANDE', '011.44.1346.629268', '2008-03-24', 'SA_REP', 6400, .1, 147, null);
INSERT INTO empregados VALUES
(167, 'Amit Banda', 'ABANDA', '011.44.1346.729268', '2008-04-21', 'SA_REP', 6200, .1, 147, null);
INSERT INTO empregados VALUES
(168, 'Lisa Ozer', 'LOZER', '011.44.1343.929268', '2005-03-11', 'SA_REP', 11500, .25, 148, null);
INSERT INTO empregados VALUES
(169, 'Harrison Bloom', 'HBLOOM', '011.44.1343.829268', '2006-03-23', 'SA_REP', 10000, .2, 148, null);
INSERT INTO empregados VALUES
(170, 'Tayler Fox', 'TFOX', '011.44.1343.729268', '2006-01-24', 'SA_REP', 9600, .2, 148, null);
INSERT INTO empregados VALUES
(171, 'William Smith', 'WSMITH', '011.44.1343.629268', '2007-02-23', 'SA_REP', 7400, .15, 148, null);
INSERT INTO empregados VALUES
(172, 'Elizabeth Bates', 'EBATES', '011.44.1343.529268', '2007-03-24', 'SA_REP', 7300, .15, 148, null);
INSERT INTO empregados VALUES
(173, 'Sundita Kumar', 'SKUMAR', '011.44.1343.329268', '2008-04-21', 'SA_REP', 6100, .1, 148, null);
INSERT INTO empregados VALUES
(174, 'Ellen Abel', 'EABEL', '011.44.1644.429267', '2004-05-11', 'SA_REP', 11000, .3, 149, null);
INSERT INTO empregados VALUES
(175, 'Alyssa Hutton', 'AHUTTON', '011.44.1644.429266', '2005-03-19', 'SA_REP', 8800, .25, 149, null);
INSERT INTO empregados VALUES
(176, 'Jonathon Taylor', 'JTAYLOR', '011.44.1644.429265', '2006-03-24', 'SA_REP', 8600, .2, 149, null);
INSERT INTO empregados VALUES
(177, 'Jack Livingston', 'JLIVINGS', '011.44.1644.429264', '2006-04-23', 'SA_REP', 8400, .2, 149, null);
INSERT INTO empregados VALUES
(178, 'Kimberely Grant', 'KGRANT', '011.44.1644.429263', '2007-05-24', 'SA_REP', 7000, .15, 149, null);
INSERT INTO empregados VALUES
(179, 'Charles Johnson', 'CJOHNSON', '011.44.1644.429262', '2008-01-04', 'SA_REP', 6200, .1, 149, null);
INSERT INTO empregados VALUES
(180, 'Winston Taylor', 'WTAYLOR', '650.507.9876', '2006-01-24', 'SH_CLERK', 3200, null, 120, null);
INSERT INTO empregados VALUES
(181, 'Jean Fleaur', 'JFLEAUR', '650.507.9877', '2006-02-23', 'SH_CLERK', 3100, null, 120, null);
INSERT INTO empregados VALUES
(182, 'Martha Sullivan', 'MSULLIVA', '650.507.9878', '2007-06-21', 'SH_CLERK', 2500, null, 120, null);
INSERT INTO empregados VALUES
(183, 'Girard Geoni', 'GGEONI', '650.507.9879', '2008-02-03', 'SH_CLERK', 2800, null, 120, null);
INSERT INTO empregados VALUES
(184, 'Nandita Sarchand', 'NSARCHAN', '650.509.1876', '2004-01-27', 'SH_CLERK', 4200, null, 121, null);
INSERT INTO empregados VALUES
(185, 'Alexis Bull', 'ABULL', '650.509.2876', '2005-02-20', 'SH_CLERK', 4100, null, 121, null);
INSERT INTO empregados VALUES
(302, 'Julia Dellinger', 'JDELLING', '650.509.3876', '2006-06-24', 'SH_CLERK', 3400, null, 121, null);
INSERT INTO empregados VALUES
(410, 'Anthony Cabrio', 'ACABRIO', '650.509.4876', '2007-02-07', 'SH_CLERK', 3000, null, 121, null);
INSERT INTO empregados VALUES
(507, 'Kelly Chung', 'KCHUNG', '650.505.1876', '2005-06-14', 'SH_CLERK', 3800, null, 122, null);
INSERT INTO empregados VALUES
(320, 'Jennifer Dilly', 'JDILLY', '650.505.2876', '2005-08-13', 'SH_CLERK', 3600, null, 122, null);
INSERT INTO empregados VALUES
(402, 'Timothy Gates', 'TGATES', '650.505.3876', '2006-07-11', 'SH_CLERK', 2900, null, 122, null);
INSERT INTO empregados VALUES
(505, 'Randall Perkins', 'RPERKINS', '650.505.4876', '2007-12-19', 'SH_CLERK', 2500, null, 122, null);
INSERT INTO empregados VALUES 
(316,'Sarah Bell', 'SBEL', '650.501.1876', '2004-02-04', 'SH_CLERK', 4000, null, 123, null);
INSERT INTO empregados VALUES 
(441,'Britney Everett', 'BEVERETT', '650.501.2876', '2005-03-03', 'SH_CLERK', 3900, null, 123, null);
INSERT INTO empregados VALUES
(445, 'Samuel McCain', 'SMCCAIN', '650.501.3876', '2006-07-01', 'SH_CLERK', 3200, null, 123, null);
INSERT INTO empregados VALUES
(360, 'Vance Jones', 'VJONES', '650.501.4876', '2007-03-17', 'SH_CLERK', 2800, null, 123, null);
INSERT INTO empregados VALUES 
(370, 'Alana Walsh', 'AWALSH', '650.507.9811', '2006-04-24', 'SH_CLERK', 3100, null, 124, null);
INSERT INTO empregados VALUES
(303, 'Kevin Feeney', 'KFEENEY', '650.507.9822', '2006-05-23', 'SH_CLERK', 3000, null, 124, null);
INSERT INTO empregados VALUES
(500, 'Donald OConnell', 'DOCONNEL', '650.507.9833', '2007-06-21', 'SH_CLERK', 2600, null, 124, null);
INSERT INTO empregados VALUES
(280, 'Douglas Grant', 'DGRANT', '650.507.9844', '2008-01-13', 'SH_CLERK', 2600, null, 124, null);
INSERT INTO empregados  VALUES
(200, 'Jennifer Whalen', 'JWHALEN', '515.123.4444', '2003-09-17', 'AD_ASST', 4400, null, 101, null);
INSERT INTO empregados VALUES
(201, 'Michael Hartstein', 'MHARTSTE', '515.123.5555', '2004-02-17', 'MK_MAN', 13000, null, 100, null);
INSERT INTO empregados VALUES
(202, 'Pat Fay', 'PFAY', '603.123.6666', '2005-08-17', 'MK_REP', 6000, null, 201, null);
INSERT INTO empregados VALUES
(203, 'Susan Mavris', 'SMAVRIS', '515.123.7777', '2002-06-07', 'HR_REP', 6500, null, 101, null);
INSERT INTO empregados VALUES
(204, 'Hermann Baer', 'HBAER', '515.123.8888', '2002-06-07', 'PR_REP', 10000, null, 101, null);
INSERT INTO empregados VALUES
(205, 'Shelley Higgins', 'SHIGGINS', '515.123.8080', '2002-06-07', 'AC_MGR', 12008, null, 101, null);
INSERT INTO empregados VALUES
(206, 'William Gietz', 'WGIETZ', '515.123.8181', '2002-06-07', 'AC_ACCOUNT', 8300, null, 205, null);



CREATE UNIQUE INDEX ak_email
 ON empregados
 ( email );

CREATE TABLE historico_cargos (
                id_empregado_1 INT NOT NULL,
                id_cargo VARCHAR(10),
                id_departamento INT,
                data_inicial DATE NOT NULL,
                data_final DATE NOT NULL);

ALTER TABLE historico_cargos ADD CONSTRAINT PRIMARY KEY (id_empregado_1);
INSERT INTO historico_cargos VALUES
(102, 'IT_PROG' , 10 , '2001-01-13', '2006-07-24');
INSERT INTO historico_cargos VALUES
(101, 'AC_ACCOUNT' , 20 , '1997-09-21', '2001-10-27');
INSERT INTO historico_cargos VALUES
(103, 'AC_MGR' , 30 , '2001-10-28', '2005-03-15'); 
INSERT INTO historico_cargos VALUES
(201, 'MK_REP' , 40 , '2004-02-17', '2007-12-19');
INSERT INTO historico_cargos VALUES
(114, 'ST_CLERK' , 50 , '2006-03-24', '2007-12-31');
INSERT INTO historico_cargos VALUES
(120,'ST_CLERK' , 60 , '2007-01-01', '2007-12-31');
INSERT INTO historico_cargos VALUES
(200, 'AD_ASST' , 70 , '1995-09-17', '2001-06-17');
INSERT INTO historico_cargos VALUES
(206, 'SA_REP' , 80 , '2006-03-24', '2006-12-31');
INSERT INTO historico_cargos VALUES
(203, 'SA_MAN' , 90 , '2007-01-01', '2007-12-31');
INSERT INTO historico_cargos VALUES
(204, 'AC_ACCOUNT' , 100 , '2002-07-01', '2006-12-31');


ALTER TABLE empregados ADD CONSTRAINT cargos_empregados_fk
FOREIGN KEY (id_cargo)
REFERENCES cargos (id_cargo);

ALTER TABLE historico_cargos ADD CONSTRAINT cargos_historico_cargos_fk
FOREIGN KEY (id_cargo)
REFERENCES cargos (id_cargo);

ALTER TABLE paises ADD CONSTRAINT regioes_paises_fk
FOREIGN KEY (id_regiao)
REFERENCES regioes (id_regiao);

ALTER TABLE localizacoes ADD CONSTRAINT paises_localizacoes_fk
FOREIGN KEY (id_pais)
REFERENCES paises (id_pais);

ALTER TABLE departamentos ADD CONSTRAINT localizacoes_departamentos_fk
FOREIGN KEY (id_localizacao)
REFERENCES localizacoes (id_localizacao);

ALTER TABLE historico_cargos ADD CONSTRAINT departamentos_historico_cargos_fk
FOREIGN KEY (id_departamento)
REFERENCES departamentos (id_departamento);

ALTER TABLE empregados ADD CONSTRAINT departamentos_empregados_fk
FOREIGN KEY (id_departamento)
REFERENCES departamentos (id_departamento);

ALTER TABLE departamentos ADD CONSTRAINT empregados_departamentos_fk
FOREIGN KEY (id_gerente)
REFERENCES empregados (Id_empregado1);

ALTER TABLE empregados ADD CONSTRAINT empregados_empregados_fk
FOREIGN KEY (id_supervisor)
REFERENCES empregados (Id_empregado1);

ALTER TABLE historico_cargos ADD CONSTRAINT empregados_historico_cargos_fk
FOREIGN KEY (id_empregado_1)
REFERENCES empregados (Id_empregado1);
