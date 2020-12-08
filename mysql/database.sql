
DROP DATABASE IF EXISTS autosbd;

CREATE DATABASE autosbd;

USE autosbd;


/*Tabla TipoAuto*/
CREATE TABLE tb_TipoAuto
(
codigo_TipoAuto char(4) not null,
nombre_TipoAuto varchar(30)
);

ALTER TABLE tb_TipoAuto
ADD PRIMARY KEY(codigo_TipoAuto);


SELECT * FROM tb_TipoAuto;

INSERT INTO tb_TipoAuto VALUES('TA01', 'Autos 70s');
INSERT INTO tb_TipoAuto VALUES('TA02', 'Autos 80s');



/*Tabla MarcaAuto*/
CREATE TABLE tb_MarcaAuto
(
codigo_MarcaAuto char(4) not null,
nombre_MarcaAuto varchar(200)
);

ALTER TABLE tb_MarcaAuto
ADD PRIMARY KEY(codigo_MarcaAuto);


SELECT * FROM tb_MarcaAuto;

INSERT INTO tb_MarcaAuto VALUES('MA01', 'Dodge');
INSERT INTO tb_MarcaAuto VALUES('MA02', 'Lamborghini');
INSERT INTO tb_MarcaAuto VALUES('MA03', 'Ford Motor Company');
INSERT INTO tb_MarcaAuto VALUES('MA04', 'Porsche');
INSERT INTO tb_MarcaAuto VALUES('MA05', 'Chevrolet');
INSERT INTO tb_MarcaAuto VALUES('MA06', 'Alfa Romeo');
INSERT INTO tb_MarcaAuto VALUES('MA07', 'Jaguar Cars');
INSERT INTO tb_MarcaAuto VALUES('MA08', 'Mercedes-Benz');
INSERT INTO tb_MarcaAuto VALUES('MA09', 'Cadillac');
INSERT INTO tb_MarcaAuto VALUES('MA10', 'Maserati');
INSERT INTO tb_MarcaAuto VALUES('MA11', 'Audi');
INSERT INTO tb_MarcaAuto VALUES('MA12', 'BMW');
INSERT INTO tb_MarcaAuto VALUES('MA13', 'Ferrari');
INSERT INTO tb_MarcaAuto VALUES('MA14', 'Peugeot');
INSERT INTO tb_MarcaAuto VALUES('MA15', 'Lancia');
INSERT INTO tb_MarcaAuto VALUES('MA16', 'Austin Motor Company');
INSERT INTO tb_MarcaAuto VALUES('MA17', 'Renault');
INSERT INTO tb_MarcaAuto VALUES('MA18', 'Citroën');
INSERT INTO tb_MarcaAuto VALUES('MA19', 'Simca');
INSERT INTO tb_MarcaAuto VALUES('MA20', 'Volkswagen');



/*Tabla Carroceria*/
CREATE TABLE tb_Carroceria
(
codigo_Carroceria char(3) not null,
nombre_Carroceria varchar(200)
);

ALTER TABLE tb_Carroceria
ADD PRIMARY KEY(codigo_Carroceria);


SELECT * FROM tb_Carroceria;


INSERT INTO tb_Carroceria VALUES('C01', 'Sedan');
INSERT INTO tb_Carroceria VALUES('C02', 'Coupé');
INSERT INTO tb_Carroceria VALUES('C03', 'Cabriolé');
INSERT INTO tb_Carroceria VALUES('C04', 'Roadster');
INSERT INTO tb_Carroceria VALUES('C05', 'Station Wagon');
INSERT INTO tb_Carroceria VALUES('C06', 'Liftback');
INSERT INTO tb_Carroceria VALUES('C07', 'Hatchback');
INSERT INTO tb_Carroceria VALUES('C08', 'Hardtop');
INSERT INTO tb_Carroceria VALUES('C09', 'Notchback');
INSERT INTO tb_Carroceria VALUES('C10', 'Fastback');



/*Tabla TipoTransmision*/
CREATE TABLE tb_TipoTransmision
(
codigo_TipoTransmision char(4) not null,
nombre_TipoTransmision varchar(10)
);

ALTER TABLE tb_TipoTransmision
ADD PRIMARY KEY(codigo_TipoTransmision);


SELECT * FROM tb_TipoTransmision;


INSERT INTO tb_TipoTransmision VALUES('TT01', 'Mecánico');
INSERT INTO tb_TipoTransmision VALUES('TT02', 'Automático');




/*Tabla Combustible*/
CREATE TABLE tb_Combustible
(
codigo_Combustible char(6) not null,
nombre_Combustible varchar(60)
);

ALTER TABLE tb_Combustible
ADD PRIMARY KEY(codigo_Combustible);


SELECT * FROM tb_Combustible;


INSERT INTO tb_Combustible VALUES('Comb01', 'Gasolina');
INSERT INTO tb_Combustible VALUES('Comb02', 'Petróleo Licuado');



/*Tabla Kilometraje*/
CREATE TABLE tb_Kilometraje
(
codigo_Kilometraje char(3) not null,
nombre_Kilometraje varchar(10)
);

ALTER TABLE tb_Kilometraje
ADD PRIMARY KEY(codigo_Kilometraje);


SELECT * FROM tb_Kilometraje;


INSERT INTO tb_Kilometraje VALUES('k01', '5000 kms');
INSERT INTO tb_Kilometraje VALUES('k02', '10000 kms');
INSERT INTO tb_Kilometraje VALUES('k03', '25000 kms');
INSERT INTO tb_Kilometraje VALUES('k04', '50000 kms');
INSERT INTO tb_Kilometraje VALUES('k05', '75000 kms');
INSERT INTO tb_Kilometraje VALUES('k06', '100000 kms');
INSERT INTO tb_Kilometraje VALUES('k07', '150000 kms');
INSERT INTO tb_Kilometraje VALUES('k08', '200000 kms');



/*Tabla tb_Fotos y Detalle Fotos*/

create table tb_foto(
codigo char(4) primary key,
descripcion varchar(30)
);

INSERT INTO tb_foto VALUES('F001', 'Dodge Dart');
INSERT INTO tb_foto VALUES('F002', 'Dodge Challenger');
INSERT INTO tb_foto VALUES('F003', 'Dodge Charger');
INSERT INTO tb_foto VALUES('F004', 'Dodge Coronet');
INSERT INTO tb_foto VALUES('F005', 'Dodge Diplomat');
INSERT INTO tb_foto VALUES('F006', 'Dodge Polara');
INSERT INTO tb_foto VALUES('F007', 'Dodge Super Bee');
INSERT INTO tb_foto VALUES('F008', 'Dodge Aspen');
INSERT INTO tb_foto VALUES('F009', 'Dodge Magnum');
INSERT INTO tb_foto VALUES('F010', 'Dodge Omni');
INSERT INTO tb_foto VALUES('F011', 'Lamborghini Urraco');
INSERT INTO tb_foto VALUES('F012', 'Lamborghini Espada');
INSERT INTO tb_foto VALUES('F013', 'Lamborghini Miura');
INSERT INTO tb_foto VALUES('F014', 'Lamborghini Jarama');
INSERT INTO tb_foto VALUES('F015', 'Lamborghini Countach');
INSERT INTO tb_foto VALUES('F016', 'Lamborghini Silueta');
INSERT INTO tb_foto VALUES('F017', 'Lamborghini 350 GT');
INSERT INTO tb_foto VALUES('F018', 'Lamborghini 400 GT');
INSERT INTO tb_foto VALUES('F019', 'Lamborghini Islero');
INSERT INTO tb_foto VALUES('F020', 'Lamborghini Jalpa');
INSERT INTO tb_foto VALUES('F021', 'Ford Bronco');
INSERT INTO tb_foto VALUES('F022', 'Ford Mustang Boss 302');
INSERT INTO tb_foto VALUES('F023', 'Ford Mercury Cougar');
INSERT INTO tb_foto VALUES('F024', 'Ford Escort');
INSERT INTO tb_foto VALUES('F025', 'Ford Falcon');
INSERT INTO tb_foto VALUES('F026', 'Ford Granada');
INSERT INTO tb_foto VALUES('F027', 'Ford Pinto');
INSERT INTO tb_foto VALUES('F028', 'Ford Torino');
INSERT INTO tb_foto VALUES('F029', 'Ford Ranchero');
INSERT INTO tb_foto VALUES('F030', 'Ford Taunus');
INSERT INTO tb_foto VALUES('F031', 'Porsche 911');
INSERT INTO tb_foto VALUES('F032', 'Porsche 914');
INSERT INTO tb_foto VALUES('F033', 'Porsche 911 Carrera');
INSERT INTO tb_foto VALUES('F034', 'Porsche 911 SC');
INSERT INTO tb_foto VALUES('F035', 'Porsche 912 E');
INSERT INTO tb_foto VALUES('F036', 'Porsche 911 Turbo');
INSERT INTO tb_foto VALUES('F037', 'Porsche 924');
INSERT INTO tb_foto VALUES('F038', 'Porsche 924 Turbo');
INSERT INTO tb_foto VALUES('F039', 'Porsche 928');
INSERT INTO tb_foto VALUES('F040', 'Porsche 944');
INSERT INTO tb_foto VALUES('F041', 'Chevrolet Vega');
INSERT INTO tb_foto VALUES('F042', 'Chevrolet Camaro');
INSERT INTO tb_foto VALUES('F043', 'Chevrolet Chevelle Laguna');
INSERT INTO tb_foto VALUES('F044', 'Chevrolet LUV');
INSERT INTO tb_foto VALUES('F045', 'Chevrolet Chevette');
INSERT INTO tb_foto VALUES('F046', 'Chevrolet Monza');
INSERT INTO tb_foto VALUES('F047', 'Chevrolet Citation');
INSERT INTO tb_foto VALUES('F048', 'Chevrolet Kingswood');
INSERT INTO tb_foto VALUES('F049', 'Chevrolet Chevelle');
INSERT INTO tb_foto VALUES('F050', 'Chevrolet Corvair');
INSERT INTO tb_foto VALUES('F051', 'Alfa Romeo Giulia');
INSERT INTO tb_foto VALUES('F052', 'Alfa Romeo Montreal');
INSERT INTO tb_foto VALUES('F053', 'Alfa Romeo Alfasud');
INSERT INTO tb_foto VALUES('F054', 'Alfa Romeo Alfetta');
INSERT INTO tb_foto VALUES('F055', 'Alfa Romeo Alfetta GT/GTV');
INSERT INTO tb_foto VALUES('F056', 'Alfa Romeo Sprint');
INSERT INTO tb_foto VALUES('F057', 'Alfa Romeo Giulietta');
INSERT INTO tb_foto VALUES('F058', 'Alfa Romeo Alfa 6');
INSERT INTO tb_foto VALUES('F059', 'Alfa Romeo 33 Stradale');
INSERT INTO tb_foto VALUES('F060', 'Alfa Romeo 33');
INSERT INTO tb_foto VALUES('F061', 'Jaguar XJ6');
INSERT INTO tb_foto VALUES('F062', 'Jaguar Sovereign Daimler');
INSERT INTO tb_foto VALUES('F063', 'Jaguar XJS');
INSERT INTO tb_foto VALUES('F064', 'Jaguar Mark 2');
INSERT INTO tb_foto VALUES('F065', 'Jaguar E-Type');
INSERT INTO tb_foto VALUES('F066', 'Jaguar XJ');
INSERT INTO tb_foto VALUES('F067', 'Jaguar MK2');
INSERT INTO tb_foto VALUES('F068', 'Jaguar Mark X');
INSERT INTO tb_foto VALUES('F069', 'Jaguar Mark IX');
INSERT INTO tb_foto VALUES('F070', 'Jaguar XK');
INSERT INTO tb_foto VALUES('F071', 'Mercedes-Benz R107');
INSERT INTO tb_foto VALUES('F072', 'Mercedes-Benz W116');
INSERT INTO tb_foto VALUES('F073', 'Mercedes-Benz W114/W115');
INSERT INTO tb_foto VALUES('F074', 'Mercedes-Benz W123');
INSERT INTO tb_foto VALUES('F075', 'Mercedes-Benz W126');
INSERT INTO tb_foto VALUES('F076', 'Mercedes-Benz Clase G');
INSERT INTO tb_foto VALUES('F077', 'Mercedes-Benz W108/W109');
INSERT INTO tb_foto VALUES('F078', 'Mercedes-Benz 600');
INSERT INTO tb_foto VALUES('F079', 'Mercedes-Benz W112');
INSERT INTO tb_foto VALUES('F080', 'Mercedes-Benz W110');
INSERT INTO tb_foto VALUES('F081', 'Cadillac Calais');
INSERT INTO tb_foto VALUES('F082', 'Cadillac Fleetwood');
INSERT INTO tb_foto VALUES('F083', 'Cadillac Fleetwood Brougham');
INSERT INTO tb_foto VALUES('F084', 'Cadillac Eldorado');
INSERT INTO tb_foto VALUES('F085', 'Cadillac Sixty Special');
INSERT INTO tb_foto VALUES('F086', 'Cadillac Serie 62');
INSERT INTO tb_foto VALUES('F087', 'Cadillac Serie 70');
INSERT INTO tb_foto VALUES('F088', 'Cadillac de Ville');
INSERT INTO tb_foto VALUES('F089', 'Cadillac Serie 61');
INSERT INTO tb_foto VALUES('F090', 'Cadillac de 1949');
INSERT INTO tb_foto VALUES('F091', 'Maserati Bora');
INSERT INTO tb_foto VALUES('F092', 'Maserati Khamsin');
INSERT INTO tb_foto VALUES('F093', 'Maserati Quattroporte');
INSERT INTO tb_foto VALUES('F094', 'Maserati Merak');
INSERT INTO tb_foto VALUES('F095', 'Maserati Kyalami');
INSERT INTO tb_foto VALUES('F096', 'Maserati Sebring');
INSERT INTO tb_foto VALUES('F097', 'Maserati Ghibli');
INSERT INTO tb_foto VALUES('F098', 'Maserati Mistral');
INSERT INTO tb_foto VALUES('F099', 'Maserati Indy');
INSERT INTO tb_foto VALUES('F100', 'Maserati Mexico');
INSERT INTO tb_foto VALUES('F101', 'Audi 80');
INSERT INTO tb_foto VALUES('F102', 'Audi 100');
INSERT INTO tb_foto VALUES('F103', 'Audi Quattro');
INSERT INTO tb_foto VALUES('F104', 'Audi 100 Coupé S');
INSERT INTO tb_foto VALUES('F105', 'Audi V8');
INSERT INTO tb_foto VALUES('F106', 'Audi F103');
INSERT INTO tb_foto VALUES('F107', 'Audi 90');
INSERT INTO tb_foto VALUES('F108', 'Audi Cabriolet');
INSERT INTO tb_foto VALUES('F109', 'Audi A8');
INSERT INTO tb_foto VALUES('F110', 'Audi Sport Quattro');
INSERT INTO tb_foto VALUES('F111', 'BMW M1');
INSERT INTO tb_foto VALUES('F112', 'BMW M3');
INSERT INTO tb_foto VALUES('F113', 'BMW M5');
INSERT INTO tb_foto VALUES('F114', 'BMW M6');
INSERT INTO tb_foto VALUES('F115', 'BMW Serie 3');
INSERT INTO tb_foto VALUES('F116', 'BMW 316');
INSERT INTO tb_foto VALUES('F117', 'BMW Serie 5');
INSERT INTO tb_foto VALUES('F118', 'BMW E23');
INSERT INTO tb_foto VALUES('F119', 'BMW E32');
INSERT INTO tb_foto VALUES('F120', 'BMW E21');
INSERT INTO tb_foto VALUES('F121', 'Ferrari 288 GTO');
INSERT INTO tb_foto VALUES('F122', 'Ferrari 308 GTB');
INSERT INTO tb_foto VALUES('F123', 'Ferrari 328');
INSERT INTO tb_foto VALUES('F124', 'Ferrari F40');
INSERT INTO tb_foto VALUES('F125', 'Ferrari GT4');
INSERT INTO tb_foto VALUES('F126', 'Ferrari Mondial');
INSERT INTO tb_foto VALUES('F127', 'Ferrari Testarossa');
INSERT INTO tb_foto VALUES('F128', 'Ferrari 348');
INSERT INTO tb_foto VALUES('F129', 'Ferrari Dino');
INSERT INTO tb_foto VALUES('F130', 'Ferrari F355');
INSERT INTO tb_foto VALUES('F131', 'Peugeot 205');
INSERT INTO tb_foto VALUES('F132', 'Peugeot 205 Turbo 16');
INSERT INTO tb_foto VALUES('F133', 'Peugeot 505');
INSERT INTO tb_foto VALUES('F134', 'Peugeot 203');
INSERT INTO tb_foto VALUES('F135', 'Peugeot 405');
INSERT INTO tb_foto VALUES('F136', 'Peugeot J5');
INSERT INTO tb_foto VALUES('F137', 'Peugeot 304');
INSERT INTO tb_foto VALUES('F138', 'Peugeot 504');
INSERT INTO tb_foto VALUES('F139', 'Peugeot 404');
INSERT INTO tb_foto VALUES('F140', 'Peugeot 403');
INSERT INTO tb_foto VALUES('F141', 'Lancia 037');
INSERT INTO tb_foto VALUES('F142', 'Lancia Beta');
INSERT INTO tb_foto VALUES('F143', 'Lancia Beta Trevi');
INSERT INTO tb_foto VALUES('F144', 'Lancia Delta');
INSERT INTO tb_foto VALUES('F145', 'Lancia Delta S4');
INSERT INTO tb_foto VALUES('F146', 'Lancia Gamma');
INSERT INTO tb_foto VALUES('F147', 'Lancia Montecarlo');
INSERT INTO tb_foto VALUES('F148', 'Lancia Prisma');
INSERT INTO tb_foto VALUES('F149', 'Lancia Thema');
INSERT INTO tb_foto VALUES('F150', 'Lancia Y10');
INSERT INTO tb_foto VALUES('F151', 'Austin Allegro');
INSERT INTO tb_foto VALUES('F152', 'Austin Ambassador');
INSERT INTO tb_foto VALUES('F153', 'Austin Maestro');
INSERT INTO tb_foto VALUES('F154', 'Austin Maxi');
INSERT INTO tb_foto VALUES('F155', 'Austin Montego');
INSERT INTO tb_foto VALUES('F156', 'Austin Mini Moke');
INSERT INTO tb_foto VALUES('F157', 'Austin Cambridge A60');
INSERT INTO tb_foto VALUES('F158', 'Austin Mini Cooper');
INSERT INTO tb_foto VALUES('F159', 'Austin 1300 GT');
INSERT INTO tb_foto VALUES('F160', 'Austin Metro');
INSERT INTO tb_foto VALUES('F161', 'Renault 4');
INSERT INTO tb_foto VALUES('F162', 'Renault 5');
INSERT INTO tb_foto VALUES('F163', 'Renault 5 Turbo');
INSERT INTO tb_foto VALUES('F164', 'Renault 6');
INSERT INTO tb_foto VALUES('F165', 'Renault 7');
INSERT INTO tb_foto VALUES('F166', 'Renault 9/11');
INSERT INTO tb_foto VALUES('F167', 'Renault 12');
INSERT INTO tb_foto VALUES('F168', 'Renault 14');
INSERT INTO tb_foto VALUES('F169', 'Renault 25');
INSERT INTO tb_foto VALUES('F170', 'Renault Fuego');
INSERT INTO tb_foto VALUES('F171', 'Citroën 1');
INSERT INTO tb_foto VALUES('F172', 'Citroën 2');
INSERT INTO tb_foto VALUES('F173', 'Citroën 3');
INSERT INTO tb_foto VALUES('F174', 'Citroën 4');
INSERT INTO tb_foto VALUES('F175', 'Citroën 5');
INSERT INTO tb_foto VALUES('F176', 'Citroën 6');
INSERT INTO tb_foto VALUES('F177', 'Citroën 7');
INSERT INTO tb_foto VALUES('F178', 'Citroën 8');
INSERT INTO tb_foto VALUES('F179', 'Citroën 9');
INSERT INTO tb_foto VALUES('F180', 'Citroën 10');
INSERT INTO tb_foto VALUES('F181', 'Simca 1100');
INSERT INTO tb_foto VALUES('F182', 'Simca 1300/1500');
INSERT INTO tb_foto VALUES('F183', 'Simca 1301/1501');
INSERT INTO tb_foto VALUES('F184', 'Simca 1307');
INSERT INTO tb_foto VALUES('F185', 'Simca Talbot Horizon');
INSERT INTO tb_foto VALUES('F186', 'Simca Aronde');
INSERT INTO tb_foto VALUES('F187', 'Simca 8');
INSERT INTO tb_foto VALUES('F188', 'Simca Matra Bagheera');
INSERT INTO tb_foto VALUES('F189', 'Simca Matra Murena');
INSERT INTO tb_foto VALUES('F190', 'Simca Rover');
INSERT INTO tb_foto VALUES('F191', 'Volkswagen Golf II');
INSERT INTO tb_foto VALUES('F192', 'Volkswagen Tipo 3');
INSERT INTO tb_foto VALUES('F193', 'Volkswagen Safari');
INSERT INTO tb_foto VALUES('F194', 'Volkswagen Tipo 4');
INSERT INTO tb_foto VALUES('F195', 'Volkswagen K70');
INSERT INTO tb_foto VALUES('F196', 'Volkswagen Corrado');
INSERT INTO tb_foto VALUES('F197', 'Volkswagen Tipo 1');
INSERT INTO tb_foto VALUES('F198', 'Volkswagen Scirocco');
INSERT INTO tb_foto VALUES('F199', 'Volkswagen Schwimmwagen');
INSERT INTO tb_foto VALUES('F200', 'Volkswagen Karmann Ghia');

create table tb_detalle_foto(
codigo char(8) primary key,
codigo_foto char(4),
url varchar(120),
foreign key (codigo_foto) references tb_foto(codigo)
);

INSERT INTO tb_detalle_foto VALUES('DF-00001', 'F134','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Peugeot/Peugeot%20203/DF-00001.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00002', 'F134','http://res.cloudinary.com/carros-storage/image/upload/v1604631540/Peugeot/Peugeot%20203/DF-00002.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00003', 'F134','http://res.cloudinary.com/carros-storage/image/upload/v1604631549/Peugeot/Peugeot%20203/DF-00003.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00004', 'F134','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Peugeot/Peugeot%20203/DF-00004.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00005', 'F131','http://res.cloudinary.com/carros-storage/image/upload/v1604631541/Peugeot/Peugeot%20205/DF-00005.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00006', 'F131','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Peugeot/Peugeot%20205/DF-00006.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00007', 'F131','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Peugeot/Peugeot%20205/DF-00007.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00008', 'F131','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Peugeot/Peugeot%20205/DF-00008.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00009', 'F132','http://res.cloudinary.com/carros-storage/image/upload/v1604631548/Peugeot/Peugeot%20205%20Turbo%2016/DF-00009.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00010', 'F132','http://res.cloudinary.com/carros-storage/image/upload/v1604631534/Peugeot/Peugeot%20205%20Turbo%2016/DF-00010.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00011', 'F132','http://res.cloudinary.com/carros-storage/image/upload/v1604631534/Peugeot/Peugeot%20205%20Turbo%2016/DF-00011.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00012', 'F132','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Peugeot/Peugeot%20205%20Turbo%2016/DF-00012.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00013', 'F137','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Peugeot/Peugeot%20304/DF-00013.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00014', 'F137','http://res.cloudinary.com/carros-storage/image/upload/v1604631545/Peugeot/Peugeot%20304/DF-00014.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00015', 'F137','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Peugeot/Peugeot%20304/DF-00015.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00016', 'F137','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Peugeot/Peugeot%20304/DF-00016.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00017', 'F140','http://res.cloudinary.com/carros-storage/image/upload/v1604631545/Peugeot/Peugeot%20403/DF-00017.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00018', 'F140','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Peugeot/Peugeot%20403/DF-00018.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00019', 'F140','http://res.cloudinary.com/carros-storage/image/upload/v1604631537/Peugeot/Peugeot%20403/DF-00019.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00020', 'F140','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Peugeot/Peugeot%20403/DF-00020.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00021', 'F139','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Peugeot/Peugeot%20404/DF-00021.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00022', 'F139','http://res.cloudinary.com/carros-storage/image/upload/v1604631537/Peugeot/Peugeot%20404/DF-00022.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00023', 'F139','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Peugeot/Peugeot%20404/DF-00023.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00024', 'F139','http://res.cloudinary.com/carros-storage/image/upload/v1604631541/Peugeot/Peugeot%20404/DF-00024.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00025', 'F135','http://res.cloudinary.com/carros-storage/image/upload/v1604631540/Peugeot/Peugeot%20405/DF-00025.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00026', 'F135','http://res.cloudinary.com/carros-storage/image/upload/v1604631537/Peugeot/Peugeot%20405/DF-00026.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00027', 'F135','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Peugeot/Peugeot%20405/DF-00027.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00028', 'F135','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Peugeot/Peugeot%20405/DF-00028.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00029', 'F138','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Peugeot/Peugeot%20504/DF-00029.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00030', 'F138','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Peugeot/Peugeot%20504/DF-00030.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00031', 'F138','http://res.cloudinary.com/carros-storage/image/upload/v1604631541/Peugeot/Peugeot%20504/DF-00031.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00032', 'F138','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Peugeot/Peugeot%20504/DF-00032.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00033', 'F133','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Peugeot/Peugeot%20505/DF-00033.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00034', 'F133','http://res.cloudinary.com/carros-storage/image/upload/v1604631541/Peugeot/Peugeot%20505/DF-00034.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00035', 'F133','http://res.cloudinary.com/carros-storage/image/upload/v1604631540/Peugeot/Peugeot%20505/DF-00035.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00036', 'F133','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Peugeot/Peugeot%20505/DF-00036.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00037', 'F136','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Peugeot/Peugeot%20J5/DF-00037.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00038', 'F136','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Peugeot/Peugeot%20J5/DF-00038.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00039', 'F136','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Peugeot/Peugeot%20J5/DF-00039.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00040', 'F136','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Peugeot/Peugeot%20J5/DF-00040.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00041', 'F031','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Porsche/Porsche%20911/DF-00041.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00042', 'F031','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Porsche/Porsche%20911/DF-00042.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00043', 'F031','http://res.cloudinary.com/carros-storage/image/upload/v1604631534/Porsche/Porsche%20911/DF-00043.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00044', 'F033','http://res.cloudinary.com/carros-storage/image/upload/v1604631534/Porsche/Porsche%20911%20Carrera/DF-00044.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00045', 'F033','http://res.cloudinary.com/carros-storage/image/upload/v1604631534/Porsche/Porsche%20911%20Carrera/DF-00045.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00046', 'F033','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Porsche/Porsche%20911%20Carrera/DF-00046.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00047', 'F034','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Porsche/Porsche%20911%20SC/DF-00047.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00048', 'F034','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Porsche/Porsche%20911%20SC/DF-00048.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00049', 'F034','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Porsche/Porsche%20911%20SC/DF-00049.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00050', 'F036','http://res.cloudinary.com/carros-storage/image/upload/v1604631534/Porsche/Porsche%20911%20Turbo/DF-00050.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00051', 'F036','http://res.cloudinary.com/carros-storage/image/upload/v1604631541/Porsche/Porsche%20911%20Turbo/DF-00051.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00052', 'F036','http://res.cloudinary.com/carros-storage/image/upload/v1604631534/Porsche/Porsche%20911%20Turbo/DF-00052.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00053', 'F035','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Porsche/Porsche%20912%20E/DF-00053.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00054', 'F035','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Porsche/Porsche%20912%20E/DF-00054.png');
INSERT INTO tb_detalle_foto VALUES('DF-00055', 'F035','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Porsche/Porsche%20912%20E/DF-00055.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00056', 'F032','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Porsche/Porsche%20914/DF-00056.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00057', 'F032','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Porsche/Porsche%20914/DF-00057.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00058', 'F032','http://res.cloudinary.com/carros-storage/image/upload/v1604631534/Porsche/Porsche%20914/DF-00058.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00059', 'F037','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Porsche/Porsche%20924/DF-00059.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00060', 'F037','http://res.cloudinary.com/carros-storage/image/upload/v1604631534/Porsche/Porsche%20924/DF-00060.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00061', 'F037','http://res.cloudinary.com/carros-storage/image/upload/v1604631534/Porsche/Porsche%20924/DF-00061.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00062', 'F038','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Porsche/Porsche%20924%20Turbo/DF-00062.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00063', 'F038','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Porsche/Porsche%20924%20Turbo/DF-00063.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00064', 'F038','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Porsche/Porsche%20924%20Turbo/DF-00064.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00065', 'F039','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Porsche/Porsche%20928/DF-00065.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00066', 'F039','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Porsche/Porsche%20928/DF-00066.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00067', 'F039','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Porsche/Porsche%20928/DF-00067.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00068', 'F040','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Porsche/Porsche%20944/DF-00068.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00069', 'F040','http://res.cloudinary.com/carros-storage/image/upload/v1604631534/Porsche/Porsche%20944/DF-00069.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00070', 'F040','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Porsche/Porsche%20944/DF-00070.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00071', 'F167','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Renault/Renault%2012/DF-00071.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00072', 'F167','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Renault/Renault%2012/DF-00072.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00073', 'F167','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Renault/Renault%2012/DF-00073.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00074', 'F168','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Renault/Renault%2014/DF-00074.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00075', 'F168','http://res.cloudinary.com/carros-storage/image/upload/v1604631537/Renault/Renault%2014/DF-00075.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00076', 'F168','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Renault/Renault%2014/DF-00076.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00077', 'F169','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Renault/Renault%2025/DF-00077.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00078', 'F169','http://res.cloudinary.com/carros-storage/image/upload/v1604631540/Renault/Renault%2025/DF-00078.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00079', 'F169','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Renault/Renault%2025/DF-00079.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00080', 'F161','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Renault/Renault%204/DF-00080.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00081', 'F161','http://res.cloudinary.com/carros-storage/image/upload/v1604631537/Renault/Renault%204/DF-00081.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00082', 'F161','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Renault/Renault%204/DF-00082.webp');
INSERT INTO tb_detalle_foto VALUES('DF-00083', 'F162','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Renault/Renault%205/DF-00083.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00084', 'F162','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Renault/Renault%205/DF-00084.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00085', 'F162','http://res.cloudinary.com/carros-storage/image/upload/v1604631541/Renault/Renault%205/DF-00085.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00086', 'F163','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Renault/Renault%205%20Turbo/DF-00086.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00087', 'F163','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Renault/Renault%205%20Turbo/DF-00087.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00088', 'F163','http://res.cloudinary.com/carros-storage/image/upload/v1604631540/Renault/Renault%205%20Turbo/DF-00088.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00089', 'F164','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Renault/Renault%206/DF-00089.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00090', 'F164','http://res.cloudinary.com/carros-storage/image/upload/v1604631546/Renault/Renault%206/DF-00090.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00091', 'F164','http://res.cloudinary.com/carros-storage/image/upload/v1604631537/Renault/Renault%206/DF-00091.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00092', 'F165','http://res.cloudinary.com/carros-storage/image/upload/v1604631537/Renault/Renault%207/DF-00092.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00093', 'F165','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Renault/Renault%207/DF-00093.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00094', 'F165','http://res.cloudinary.com/carros-storage/image/upload/v1604631541/Renault/Renault%207/DF-00094.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00095', 'F166','http://res.cloudinary.com/carros-storage/image/upload/v1604631537/Renault/Renault%20911/DF-00095.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00096', 'F166','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Renault/Renault%20911/DF-00096.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00097', 'F166','http://res.cloudinary.com/carros-storage/image/upload/v1604631543/Renault/Renault%20911/DF-00097.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00098', 'F181','http://res.cloudinary.com/carros-storage/image/upload/v1604631543/Simca/Simca%201100/DF-00098.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00099', 'F181','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Simca/Simca%201100/DF-00099.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00100', 'F181','http://res.cloudinary.com/carros-storage/image/upload/v1604631543/Simca/Simca%201100/DF-00100.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00101', 'F182','http://res.cloudinary.com/carros-storage/image/upload/v1604631537/Simca/Simca%2013001500/DF-00101.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00102', 'F182','http://res.cloudinary.com/carros-storage/image/upload/v1604631537/Simca/Simca%2013001500/DF-00102.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00103', 'F182','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Simca/Simca%2013001500/DF-00103.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00104', 'F183','http://res.cloudinary.com/carros-storage/image/upload/v1604631543/Simca/Simca%2013011501/DF-00104.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00105', 'F183','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Simca/Simca%2013011501/DF-00105.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00106', 'F183','http://res.cloudinary.com/carros-storage/image/upload/v1604631541/Simca/Simca%2013011501/DF-00106.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00107', 'F184','http://res.cloudinary.com/carros-storage/image/upload/v1604631546/Simca/Simca%201307/DF-00107.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00108', 'F184','http://res.cloudinary.com/carros-storage/image/upload/v1604631543/Simca/Simca%201307/DF-00108.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00109', 'F184','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Simca/Simca%201307/DF-00109.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00110', 'F187','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Simca/Simca%208/DF-00110.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00111', 'F187','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Simca/Simca%208/DF-00111.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00112', 'F187','http://res.cloudinary.com/carros-storage/image/upload/v1604631543/Simca/Simca%208/DF-00112.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00113', 'F186','http://res.cloudinary.com/carros-storage/image/upload/v1604631551/Simca/Simca%20Aronde/DF-00113.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00114', 'F186','http://res.cloudinary.com/carros-storage/image/upload/v1604631540/Simca/Simca%20Aronde/DF-00114.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00115', 'F186','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Simca/Simca%20Aronde/DF-00115.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00116', 'F188','http://res.cloudinary.com/carros-storage/image/upload/v1604631544/Simca/Simca%20Matra%20Bagheera/DF-00116.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00117', 'F188','http://res.cloudinary.com/carros-storage/image/upload/v1604631543/Simca/Simca%20Matra%20Bagheera/DF-00117.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00118', 'F188','http://res.cloudinary.com/carros-storage/image/upload/v1604631544/Simca/Simca%20Matra%20Bagheera/DF-00118.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00119', 'F189','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Simca/Simca%20Matra%20Murena/DF-00119.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00120', 'F189','http://res.cloudinary.com/carros-storage/image/upload/v1604631540/Simca/Simca%20Matra%20Murena/DF-00120.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00121', 'F189','http://res.cloudinary.com/carros-storage/image/upload/v1604631543/Simca/Simca%20Matra%20Murena/DF-00121.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00122', 'F190','http://res.cloudinary.com/carros-storage/image/upload/v1604631556/Simca/Simca%20Rover/DF-00122.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00123', 'F190','http://res.cloudinary.com/carros-storage/image/upload/v1604631540/Simca/Simca%20Rover/DF-00123.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00124', 'F190','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Simca/Simca%20Rover/DF-00124.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00125', 'F185','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Simca/Simca%20Talbot%20Horizon/DF-00125.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00126', 'F185','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Simca/Simca%20Talbot%20Horizon/DF-00126.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00127', 'F185','http://res.cloudinary.com/carros-storage/image/upload/v1604631541/Simca/Simca%20Talbot%20Horizon/DF-00127.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00128', 'F196','http://res.cloudinary.com/carros-storage/image/upload/v1604631547/Volkswagen/Volkswagen%20Corrado/DF-00128.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00129', 'F196','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Volkswagen/Volkswagen%20Corrado/DF-00129.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00130', 'F196','http://res.cloudinary.com/carros-storage/image/upload/v1604631545/Volkswagen/Volkswagen%20Corrado/DF-00130.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00131', 'F191','http://res.cloudinary.com/carros-storage/image/upload/v1604631543/Volkswagen/Volkswagen%20Golf%20II/DF-00131.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00132', 'F191','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Volkswagen/Volkswagen%20Golf%20II/DF-00132.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00133', 'F191','http://res.cloudinary.com/carros-storage/image/upload/v1604631540/Volkswagen/Volkswagen%20Golf%20II/DF-00133.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00134', 'F195','http://res.cloudinary.com/carros-storage/image/upload/v1604631538/Volkswagen/Volkswagen%20K70/DF-00134.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00135', 'F195','http://res.cloudinary.com/carros-storage/image/upload/v1604631543/Volkswagen/Volkswagen%20K70/DF-00135.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00136', 'F195','http://res.cloudinary.com/carros-storage/image/upload/v1604631543/Volkswagen/Volkswagen%20K70/DF-00136.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00137', 'F200','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Volkswagen/Volkswagen%20Karmann%20Ghia/DF-00137.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00138', 'F200','http://res.cloudinary.com/carros-storage/image/upload/v1604631539/Volkswagen/Volkswagen%20Karmann%20Ghia/DF-00138.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00139', 'F200','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Volkswagen/Volkswagen%20Karmann%20Ghia/DF-00139.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00140', 'F193','http://res.cloudinary.com/carros-storage/image/upload/v1604631545/Volkswagen/Volkswagen%20Safari/DF-00140.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00141', 'F193','http://res.cloudinary.com/carros-storage/image/upload/v1604631541/Volkswagen/Volkswagen%20Safari/DF-00141.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00142', 'F193','http://res.cloudinary.com/carros-storage/image/upload/v1604631545/Volkswagen/Volkswagen%20Safari/DF-00142.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00143', 'F199','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Volkswagen/Volkswagen%20Schwimmwagen/DF-00143.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00144', 'F199','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Volkswagen/Volkswagen%20Schwimmwagen/DF-00144.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00145', 'F199','http://res.cloudinary.com/carros-storage/image/upload/v1604631543/Volkswagen/Volkswagen%20Schwimmwagen/DF-00145.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00146', 'F198','http://res.cloudinary.com/carros-storage/image/upload/v1604631544/Volkswagen/Volkswagen%20Scirocco/DF-00146.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00147', 'F198','http://res.cloudinary.com/carros-storage/image/upload/v1604631543/Volkswagen/Volkswagen%20Scirocco/DF-00147.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00148', 'F198','http://res.cloudinary.com/carros-storage/image/upload/v1604631544/Volkswagen/Volkswagen%20Scirocco/DF-00148.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00149', 'F197','http://res.cloudinary.com/carros-storage/image/upload/v1604631549/Volkswagen/Volkswagen%20Tipo%201/DF-00149.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00150', 'F197','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Volkswagen/Volkswagen%20Tipo%201/DF-00150.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00151', 'F197','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Volkswagen/Volkswagen%20Tipo%201/DF-00151.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00152', 'F192','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Volkswagen/Volkswagen%20Tipo%203/DF-00152.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00153', 'F192','http://res.cloudinary.com/carros-storage/image/upload/v1604631543/Volkswagen/Volkswagen%20Tipo%203/DF-00153.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00154', 'F192','http://res.cloudinary.com/carros-storage/image/upload/v1604631542/Volkswagen/Volkswagen%20Tipo%203/DF-00154.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00155', 'F194','http://res.cloudinary.com/carros-storage/image/upload/v1604631535/Volkswagen/Volkswagen%20Tipo%204/DF-00155.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00156', 'F194','http://res.cloudinary.com/carros-storage/image/upload/v1604631536/Volkswagen/Volkswagen%20Tipo%204/DF-00156.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00157', 'F194','http://res.cloudinary.com/carros-storage/image/upload/v1604631541/Volkswagen/Volkswagen%20Tipo%204/DF-00157.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00158', 'F141','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Lancia/Lancia%20037/DF-00158.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00159', 'F141','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Lancia/Lancia%20037/DF-00159.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00160', 'F141','http://res.cloudinary.com/carros-storage/image/upload/v1604633057/Lancia/Lancia%20037/DF-00160.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00161', 'F141','http://res.cloudinary.com/carros-storage/image/upload/v1604633058/Lancia/Lancia%20037/DF-00161.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00162', 'F142','http://res.cloudinary.com/carros-storage/image/upload/v1604633055/Lancia/Lancia%20Beta/DF-00162.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00163', 'F142','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Lancia/Lancia%20Beta/DF-00163.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00164', 'F142','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Lancia/Lancia%20Beta/DF-00164.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00165', 'F142','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Lancia/Lancia%20Beta/DF-00165.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00166', 'F143','http://res.cloudinary.com/carros-storage/image/upload/v1604633055/Lancia/Lancia%20Beta%20Trevi/DF-00166.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00167', 'F143','http://res.cloudinary.com/carros-storage/image/upload/v1604633064/Lancia/Lancia%20Beta%20Trevi/DF-00167.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00168', 'F143','http://res.cloudinary.com/carros-storage/image/upload/v1604633068/Lancia/Lancia%20Beta%20Trevi/DF-00168.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00169', 'F143','http://res.cloudinary.com/carros-storage/image/upload/v1604633057/Lancia/Lancia%20Beta%20Trevi/DF-00169.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00170', 'F144','http://res.cloudinary.com/carros-storage/image/upload/v1604633060/Lancia/Lancia%20Delta/DF-00170.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00171', 'F144','http://res.cloudinary.com/carros-storage/image/upload/v1604633057/Lancia/Lancia%20Delta/DF-00171.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00172', 'F144','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Lancia/Lancia%20Delta/DF-00172.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00173', 'F144','http://res.cloudinary.com/carros-storage/image/upload/v1604633064/Lancia/Lancia%20Delta/DF-00173.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00174', 'F145','http://res.cloudinary.com/carros-storage/image/upload/v1604633070/Lancia/Lancia%20Delta%20S4/DF-00174.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00175', 'F145','http://res.cloudinary.com/carros-storage/image/upload/v1604633058/Lancia/Lancia%20Delta%20S4/DF-00175.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00176', 'F145','http://res.cloudinary.com/carros-storage/image/upload/v1604633061/Lancia/Lancia%20Delta%20S4/DF-00176.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00177', 'F145','http://res.cloudinary.com/carros-storage/image/upload/v1604633060/Lancia/Lancia%20Delta%20S4/DF-00177.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00178', 'F146','http://res.cloudinary.com/carros-storage/image/upload/v1604633079/Lancia/Lancia%20Gamma/DF-00178.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00179', 'F146','http://res.cloudinary.com/carros-storage/image/upload/v1604633060/Lancia/Lancia%20Gamma/DF-00179.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00180', 'F146','http://res.cloudinary.com/carros-storage/image/upload/v1604633060/Lancia/Lancia%20Gamma/DF-00180.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00181', 'F146','http://res.cloudinary.com/carros-storage/image/upload/v1604633057/Lancia/Lancia%20Gamma/DF-00181.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00182', 'F147','http://res.cloudinary.com/carros-storage/image/upload/v1604633060/Lancia/Lancia%20Montecarlo/DF-00182.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00183', 'F147','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Lancia/Lancia%20Montecarlo/DF-00183.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00184', 'F147','http://res.cloudinary.com/carros-storage/image/upload/v1604633060/Lancia/Lancia%20Montecarlo/DF-00184.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00185', 'F147','http://res.cloudinary.com/carros-storage/image/upload/v1604633057/Lancia/Lancia%20Montecarlo/DF-00185.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00186', 'F148','http://res.cloudinary.com/carros-storage/image/upload/v1604633064/Lancia/Lancia%20Prisma/DF-00186.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00187', 'F148','http://res.cloudinary.com/carros-storage/image/upload/v1604633061/Lancia/Lancia%20Prisma/DF-00187.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00188', 'F148','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Lancia/Lancia%20Prisma/DF-00188.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00189', 'F148','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Lancia/Lancia%20Prisma/DF-00189.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00190', 'F149','http://res.cloudinary.com/carros-storage/image/upload/v1604633080/Lancia/Lancia%20Thema/DF-00190.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00191', 'F149','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Lancia/Lancia%20Thema/DF-00191.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00192', 'F149','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Lancia/Lancia%20Thema/DF-00192.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00193', 'F149','http://res.cloudinary.com/carros-storage/image/upload/v1604633061/Lancia/Lancia%20Thema/DF-00193.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00194', 'F150','http://res.cloudinary.com/carros-storage/image/upload/v1604633063/Lancia/Lancia%20Y10/DF-00194.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00195', 'F150','http://res.cloudinary.com/carros-storage/image/upload/v1604633075/Lancia/Lancia%20Y10/DF-00195.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00196', 'F150','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Lancia/Lancia%20Y10/DF-00196.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00197', 'F150','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Lancia/Lancia%20Y10/DF-00197.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00198', 'F091','http://res.cloudinary.com/carros-storage/image/upload/v1604633055/Maserati/Bora/DF-00198.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00199', 'F091','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Maserati/Bora/DF-00199.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00200', 'F091','http://res.cloudinary.com/carros-storage/image/upload/v1604633057/Maserati/Bora/DF-00200.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00201', 'F091','http://res.cloudinary.com/carros-storage/image/upload/v1604633055/Maserati/Bora/DF-00201.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00202', 'F097','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Maserati/Ghibli/DF-00202.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00203', 'F097','http://res.cloudinary.com/carros-storage/image/upload/v1604633054/Maserati/Ghibli/DF-00203.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00204', 'F097','http://res.cloudinary.com/carros-storage/image/upload/v1604633068/Maserati/Ghibli/DF-00204.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00205', 'F097','http://res.cloudinary.com/carros-storage/image/upload/v1604633054/Maserati/Ghibli/DF-00205.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00206', 'F099','http://res.cloudinary.com/carros-storage/image/upload/v1604633061/Maserati/Indy/DF-00206.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00207', 'F099','http://res.cloudinary.com/carros-storage/image/upload/v1604633057/Maserati/Indy/DF-00207.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00208', 'F092','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Maserati/khamsin/DF-00208.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00209', 'F092','http://res.cloudinary.com/carros-storage/image/upload/v1604633055/Maserati/khamsin/DF-00209.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00210', 'F092','http://res.cloudinary.com/carros-storage/image/upload/v1604633062/Maserati/khamsin/DF-00210.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00211', 'F095','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Maserati/kyalami/DF-00211.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00212', 'F095','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Maserati/kyalami/DF-00212.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00213', 'F094','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Maserati/merak/DF-00213.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00214', 'F094','http://res.cloudinary.com/carros-storage/image/upload/v1604633063/Maserati/merak/DF-00214.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00215', 'F100','http://res.cloudinary.com/carros-storage/image/upload/v1604633057/Maserati/Mexico/DF-00215.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00216', 'F100','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Maserati/Mexico/DF-00216.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00217', 'F100','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Maserati/Mexico/DF-00217.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00218', 'F098','http://res.cloudinary.com/carros-storage/image/upload/v1604633060/Maserati/mistral/DF-00218.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00219', 'F098','http://res.cloudinary.com/carros-storage/image/upload/v1604633058/Maserati/mistral/DF-00219.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00220', 'F093','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Maserati/quattroporte/DF-00220.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00221', 'F096','http://res.cloudinary.com/carros-storage/image/upload/v1604633064/Maserati/sebring/DF-00221.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00222', 'F096','http://res.cloudinary.com/carros-storage/image/upload/v1604633055/Maserati/sebring/DF-00222.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00223', 'F096','http://res.cloudinary.com/carros-storage/image/upload/v1604633063/Maserati/sebring/DF-00223.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00224', 'F078','http://res.cloudinary.com/carros-storage/image/upload/v1604633055/Mercedes-Benz/600/DF-00224.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00225', 'F078','http://res.cloudinary.com/carros-storage/image/upload/v1604633060/Mercedes-Benz/600/DF-00225.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00226', 'F078','http://res.cloudinary.com/carros-storage/image/upload/v1604633054/Mercedes-Benz/600/DF-00226.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00227', 'F076','http://res.cloudinary.com/carros-storage/image/upload/v1604633057/Mercedes-Benz/clase%20G/DF-00227.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00228', 'F076','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Mercedes-Benz/clase%20G/DF-00228.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00229', 'F076','http://res.cloudinary.com/carros-storage/image/upload/v1604633057/Mercedes-Benz/clase%20G/DF-00229.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00230', 'F071','http://res.cloudinary.com/carros-storage/image/upload/v1604633060/Mercedes-Benz/R107/DF-00230.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00231', 'F071','http://res.cloudinary.com/carros-storage/image/upload/v1604633055/Mercedes-Benz/R107/DF-00231.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00232', 'F071','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Mercedes-Benz/R107/DF-00232.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00233', 'F077','http://res.cloudinary.com/carros-storage/image/upload/v1604633058/Mercedes-Benz/W108W109/DF-00233.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00234', 'F080','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Mercedes-Benz/W110/DF-00234.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00235', 'F080','http://res.cloudinary.com/carros-storage/image/upload/v1604633055/Mercedes-Benz/W110/DF-00235.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00236', 'F080','http://res.cloudinary.com/carros-storage/image/upload/v1604633057/Mercedes-Benz/W110/DF-00236.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00237', 'F080','http://res.cloudinary.com/carros-storage/image/upload/v1604633057/Mercedes-Benz/W110/DF-00237.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00238', 'F079','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Mercedes-Benz/W112/DF-00238.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00239', 'F079','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Mercedes-Benz/W112/DF-00239.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00240', 'F079','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Mercedes-Benz/W112/DF-00240.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00241', 'F073','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Mercedes-Benz/W114W115/DF-00241.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00242', 'F073','http://res.cloudinary.com/carros-storage/image/upload/v1604633055/Mercedes-Benz/W114W115/DF-00242.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00243', 'F072','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Mercedes-Benz/W116/DF-00243.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00244', 'F072','http://res.cloudinary.com/carros-storage/image/upload/v1604633058/Mercedes-Benz/W116/DF-00244.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00245', 'F072','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Mercedes-Benz/W116/DF-00245.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00246', 'F072','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Mercedes-Benz/W116/DF-00246.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00247', 'F074','http://res.cloudinary.com/carros-storage/image/upload/v1604633058/Mercedes-Benz/W123/DF-00247.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00248', 'F074','http://res.cloudinary.com/carros-storage/image/upload/v1604633058/Mercedes-Benz/W123/DF-00248.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00249', 'F074','http://res.cloudinary.com/carros-storage/image/upload/v1604633055/Mercedes-Benz/W123/DF-00249.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00250', 'F074','http://res.cloudinary.com/carros-storage/image/upload/v1604633059/Mercedes-Benz/W123/DF-00250.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00251', 'F075','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Mercedes-Benz/W126/DF-00251.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00252', 'F075','http://res.cloudinary.com/carros-storage/image/upload/v1604633056/Mercedes-Benz/W126/DF-00252.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00253', 'F121','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Ferrari/Ferrari%20288%20GTO/DF-00253.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00254', 'F121','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Ferrari/Ferrari%20288%20GTO/DF-00254.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00255', 'F121','http://res.cloudinary.com/carros-storage/image/upload/v1604633296/Ferrari/Ferrari%20288%20GTO/DF-00255.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00256', 'F121','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Ferrari/Ferrari%20288%20GTO/DF-00256.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00257', 'F122','http://res.cloudinary.com/carros-storage/image/upload/v1604633302/Ferrari/Ferrari%20308%20GTB/DF-00257.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00258', 'F122','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Ferrari/Ferrari%20308%20GTB/DF-00258.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00259', 'F122','http://res.cloudinary.com/carros-storage/image/upload/v1604633298/Ferrari/Ferrari%20308%20GTB/DF-00259.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00260', 'F122','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Ferrari/Ferrari%20308%20GTB/DF-00260.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00261', 'F123','http://res.cloudinary.com/carros-storage/image/upload/v1604633296/Ferrari/Ferrari%20328/DF-00261.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00262', 'F123','http://res.cloudinary.com/carros-storage/image/upload/v1604633298/Ferrari/Ferrari%20328/DF-00262.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00263', 'F123','http://res.cloudinary.com/carros-storage/image/upload/v1604633307/Ferrari/Ferrari%20328/DF-00263.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00264', 'F123','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Ferrari/Ferrari%20328/DF-00264.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00265', 'F128','http://res.cloudinary.com/carros-storage/image/upload/v1604633303/Ferrari/Ferrari%20348/DF-00265.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00266', 'F128','http://res.cloudinary.com/carros-storage/image/upload/v1604633304/Ferrari/Ferrari%20348/DF-00266.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00267', 'F128','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Ferrari/Ferrari%20348/DF-00267.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00268', 'F128','http://res.cloudinary.com/carros-storage/image/upload/v1604633298/Ferrari/Ferrari%20348/DF-00268.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00269', 'F129','http://res.cloudinary.com/carros-storage/image/upload/v1604633311/Ferrari/Ferrari%20Dino/DF-00269.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00270', 'F129','http://res.cloudinary.com/carros-storage/image/upload/v1604633302/Ferrari/Ferrari%20Dino/DF-00270.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00271', 'F129','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Ferrari/Ferrari%20Dino/DF-00271.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00272', 'F129','http://res.cloudinary.com/carros-storage/image/upload/v1604633300/Ferrari/Ferrari%20Dino/DF-00272.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00273', 'F130','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Ferrari/Ferrari%20F355/DF-00273.webp');
INSERT INTO tb_detalle_foto VALUES('DF-00274', 'F130','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Ferrari/Ferrari%20F355/DF-00274.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00275', 'F130','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Ferrari/Ferrari%20F355/DF-00275.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00276', 'F130','http://res.cloudinary.com/carros-storage/image/upload/v1604633307/Ferrari/Ferrari%20F355/DF-00276.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00277', 'F124','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Ferrari/Ferrari%20F40/DF-00277.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00278', 'F124','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Ferrari/Ferrari%20F40/DF-00278.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00279', 'F124','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Ferrari/Ferrari%20F40/DF-00279.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00280', 'F124','http://res.cloudinary.com/carros-storage/image/upload/v1604633298/Ferrari/Ferrari%20F40/DF-00280.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00281', 'F125','http://res.cloudinary.com/carros-storage/image/upload/v1604633300/Ferrari/Ferrari%20GT4/DF-00281.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00282', 'F125','http://res.cloudinary.com/carros-storage/image/upload/v1604633309/Ferrari/Ferrari%20GT4/DF-00282.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00283', 'F125','http://res.cloudinary.com/carros-storage/image/upload/v1604633303/Ferrari/Ferrari%20GT4/DF-00283.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00284', 'F125','http://res.cloudinary.com/carros-storage/image/upload/v1604633297/Ferrari/Ferrari%20GT4/DF-00284.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00285', 'F126','http://res.cloudinary.com/carros-storage/image/upload/v1604633298/Ferrari/Ferrari%20Mondial/DF-00285.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00286', 'F126','http://res.cloudinary.com/carros-storage/image/upload/v1604633298/Ferrari/Ferrari%20Mondial/DF-00286.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00287', 'F126','http://res.cloudinary.com/carros-storage/image/upload/v1604633300/Ferrari/Ferrari%20Mondial/DF-00287.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00288', 'F126','http://res.cloudinary.com/carros-storage/image/upload/v1604633302/Ferrari/Ferrari%20Mondial/DF-00288.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00289', 'F127','http://res.cloudinary.com/carros-storage/image/upload/v1604633310/Ferrari/Ferrari%20Testarossa/DF-00289.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00290', 'F127','http://res.cloudinary.com/carros-storage/image/upload/v1604633298/Ferrari/Ferrari%20Testarossa/DF-00290.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00291', 'F127','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Ferrari/Ferrari%20Testarossa/DF-00291.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00292', 'F127','http://res.cloudinary.com/carros-storage/image/upload/v1604633296/Ferrari/Ferrari%20Testarossa/DF-00292.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00293', 'F021','http://res.cloudinary.com/carros-storage/image/upload/v1604633297/Ford/Ford%20Bronco/DF-00293.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00294', 'F021','http://res.cloudinary.com/carros-storage/image/upload/v1604633305/Ford/Ford%20Bronco/DF-00294.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00295', 'F021','http://res.cloudinary.com/carros-storage/image/upload/v1604633300/Ford/Ford%20Bronco/DF-00295.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00296', 'F024','http://res.cloudinary.com/carros-storage/image/upload/v1604633302/Ford/Ford%20Escort/DF-00296.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00297', 'F024','http://res.cloudinary.com/carros-storage/image/upload/v1604633305/Ford/Ford%20Escort/DF-00297.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00298', 'F024','http://res.cloudinary.com/carros-storage/image/upload/v1604633302/Ford/Ford%20Escort/DF-00298.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00299', 'F025','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Ford/Ford%20Falcon/DF-00299.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00300', 'F025','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Ford/Ford%20Falcon/DF-00300.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00301', 'F025','http://res.cloudinary.com/carros-storage/image/upload/v1604633300/Ford/Ford%20Falcon/DF-00301.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00302', 'F026','http://res.cloudinary.com/carros-storage/image/upload/v1604633303/Ford/Ford%20Granada/DF-00302.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00303', 'F026','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Ford/Ford%20Granada/DF-00303.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00304', 'F026','http://res.cloudinary.com/carros-storage/image/upload/v1604633296/Ford/Ford%20Granada/DF-00304.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00305', 'F023','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Ford/Ford%20Mercury%20Cougar/DF-00305.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00306', 'F023','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Ford/Ford%20Mercury%20Cougar/DF-00306.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00307', 'F023','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Ford/Ford%20Mercury%20Cougar/DF-00307.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00308', 'F022','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Ford/Ford%20Mustang%20Boss%20302/DF-00308.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00309', 'F022','http://res.cloudinary.com/carros-storage/image/upload/v1604633298/Ford/Ford%20Mustang%20Boss%20302/DF-00309.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00310', 'F022','http://res.cloudinary.com/carros-storage/image/upload/v1604633296/Ford/Ford%20Mustang%20Boss%20302/DF-00310.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00311', 'F027','http://res.cloudinary.com/carros-storage/image/upload/v1604633298/Ford/Ford%20Pinto/DF-00311.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00312', 'F027','http://res.cloudinary.com/carros-storage/image/upload/v1604633296/Ford/Ford%20Pinto/DF-00312.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00313', 'F027','http://res.cloudinary.com/carros-storage/image/upload/v1604633297/Ford/Ford%20Pinto/DF-00313.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00314', 'F029','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Ford/Ford%20Ranchero/DF-00314.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00315', 'F029','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Ford/Ford%20Ranchero/DF-00315.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00316', 'F029','http://res.cloudinary.com/carros-storage/image/upload/v1604633302/Ford/Ford%20Ranchero/DF-00316.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00317', 'F030','http://res.cloudinary.com/carros-storage/image/upload/v1604633300/Ford/Ford%20Taunus/DF-00317.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00318', 'F030','http://res.cloudinary.com/carros-storage/image/upload/v1604633302/Ford/Ford%20Taunus/DF-00318.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00319', 'F030','http://res.cloudinary.com/carros-storage/image/upload/v1604633302/Ford/Ford%20Taunus/DF-00319.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00320', 'F028','http://res.cloudinary.com/carros-storage/image/upload/v1604633305/Ford/Ford%20Torino/DF-00320.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00321', 'F028','http://res.cloudinary.com/carros-storage/image/upload/v1604633297/Ford/Ford%20Torino/DF-00321.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00322', 'F028','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Ford/Ford%20Torino/DF-00322.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00323', 'F065','http://res.cloudinary.com/carros-storage/image/upload/v1604633307/Jaguar/E-Type/DF-00323.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00324', 'F065','http://res.cloudinary.com/carros-storage/image/upload/v1604633297/Jaguar/E-Type/DF-00324.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00325', 'F065','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Jaguar/E-Type/DF-00325.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00326', 'F065','http://res.cloudinary.com/carros-storage/image/upload/v1604633297/Jaguar/E-Type/DF-00326.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00327', 'F070','http://res.cloudinary.com/carros-storage/image/upload/v1604633300/Jaguar/Jaguar%20XK/DF-00327.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00328', 'F070','http://res.cloudinary.com/carros-storage/image/upload/v1604633296/Jaguar/Jaguar%20XK/DF-00328.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00329', 'F064','http://res.cloudinary.com/carros-storage/image/upload/v1604633296/Jaguar/Mark%202/DF-00329.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00330', 'F064','http://res.cloudinary.com/carros-storage/image/upload/v1604633295/Jaguar/Mark%202/DF-00330.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00331', 'F069','http://res.cloudinary.com/carros-storage/image/upload/v1604633298/Jaguar/mark%20IX/DF-00331.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00332', 'F069','http://res.cloudinary.com/carros-storage/image/upload/v1604633305/Jaguar/mark%20IX/DF-00332.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00333', 'F069','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Jaguar/mark%20IX/DF-00333.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00334', 'F068','http://res.cloudinary.com/carros-storage/image/upload/v1604633296/Jaguar/Mark%20X/DF-00334.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00335', 'F068','http://res.cloudinary.com/carros-storage/image/upload/v1604633302/Jaguar/Mark%20X/DF-00335.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00336', 'F067','http://res.cloudinary.com/carros-storage/image/upload/v1604633302/Jaguar/MK2/DF-00336.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00337', 'F067','http://res.cloudinary.com/carros-storage/image/upload/v1604633297/Jaguar/MK2/DF-00337.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00338', 'F062','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Jaguar/Sovereign%20Daimler/DF-00338.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00339', 'F062','http://res.cloudinary.com/carros-storage/image/upload/v1604633298/Jaguar/Sovereign%20Daimler/DF-00339.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00340', 'F062','http://res.cloudinary.com/carros-storage/image/upload/v1604633300/Jaguar/Sovereign%20Daimler/DF-00340.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00341', 'F066','http://res.cloudinary.com/carros-storage/image/upload/v1604633297/Jaguar/xj/DF-00341.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00342', 'F066','http://res.cloudinary.com/carros-storage/image/upload/v1604633302/Jaguar/xj/DF-00342.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00343', 'F061','http://res.cloudinary.com/carros-storage/image/upload/v1604633298/Jaguar/xj6/DF-00343.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00344', 'F061','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Jaguar/xj6/DF-00344.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00345', 'F061','http://res.cloudinary.com/carros-storage/image/upload/v1604633296/Jaguar/xj6/DF-00345.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00346', 'F063','http://res.cloudinary.com/carros-storage/image/upload/v1604633304/Jaguar/xjs/DF-00346.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00347', 'F063','http://res.cloudinary.com/carros-storage/image/upload/v1604633296/Jaguar/xjs/DF-00347.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00348', 'F063','http://res.cloudinary.com/carros-storage/image/upload/v1604633304/Jaguar/xjs/DF-00348.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00349', 'F063','http://res.cloudinary.com/carros-storage/image/upload/v1604633300/Jaguar/xjs/DF-00349.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00350', 'F017','http://res.cloudinary.com/carros-storage/image/upload/v1604633297/Lamborghini/Lamborghini%20350%20GT/DF-00350.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00351', 'F017','http://res.cloudinary.com/carros-storage/image/upload/v1604633296/Lamborghini/Lamborghini%20350%20GT/DF-00351.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00352', 'F017','http://res.cloudinary.com/carros-storage/image/upload/v1604633295/Lamborghini/Lamborghini%20350%20GT/DF-00352.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00353', 'F018','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Lamborghini/Lamborghini%20400%20GT/DF-00353.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00354', 'F018','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Lamborghini/Lamborghini%20400%20GT/DF-00354.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00355', 'F018','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Lamborghini/Lamborghini%20400%20GT/DF-00355.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00356', 'F015','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Lamborghini/Lamborghini%20Countach/DF-00356.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00357', 'F015','http://res.cloudinary.com/carros-storage/image/upload/v1604633300/Lamborghini/Lamborghini%20Countach/DF-00357.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00358', 'F015','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Lamborghini/Lamborghini%20Countach/DF-00358.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00359', 'F012','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Lamborghini/Lamborghini%20Espada/DF-00359.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00360', 'F012','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Lamborghini/Lamborghini%20Espada/DF-00360.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00361', 'F012','http://res.cloudinary.com/carros-storage/image/upload/v1604633301/Lamborghini/Lamborghini%20Espada/DF-00361.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00362', 'F019','http://res.cloudinary.com/carros-storage/image/upload/v1604633300/Lamborghini/Lamborghini%20Islero/DF-00362.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00363', 'F019','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Lamborghini/Lamborghini%20Islero/DF-00363.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00364', 'F019','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Lamborghini/Lamborghini%20Islero/DF-00364.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00365', 'F020','http://res.cloudinary.com/carros-storage/image/upload/v1604633300/Lamborghini/Lamborghini%20Jalpa/DF-00365.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00366', 'F020','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Lamborghini/Lamborghini%20Jalpa/DF-00366.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00367', 'F020','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Lamborghini/Lamborghini%20Jalpa/DF-00367.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00368', 'F014','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Lamborghini/Lamborghini%20Jarama/DF-00368.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00369', 'F014','http://res.cloudinary.com/carros-storage/image/upload/v1604633300/Lamborghini/Lamborghini%20Jarama/DF-00369.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00370', 'F014','http://res.cloudinary.com/carros-storage/image/upload/v1604633303/Lamborghini/Lamborghini%20Jarama/DF-00370.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00371', 'F013','http://res.cloudinary.com/carros-storage/image/upload/v1604633308/Lamborghini/Lamborghini%20Miura/DF-00371.webp');
INSERT INTO tb_detalle_foto VALUES('DF-00372', 'F013','http://res.cloudinary.com/carros-storage/image/upload/v1604633307/Lamborghini/Lamborghini%20Miura/DF-00372.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00373', 'F013','http://res.cloudinary.com/carros-storage/image/upload/v1604633306/Lamborghini/Lamborghini%20Miura/DF-00373.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00374', 'F016','http://res.cloudinary.com/carros-storage/image/upload/v1604633309/Lamborghini/Lamborghini%20Silueta/DF-00374.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00375', 'F016','http://res.cloudinary.com/carros-storage/image/upload/v1604633299/Lamborghini/Lamborghini%20Silueta/DF-00375.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00376', 'F016','http://res.cloudinary.com/carros-storage/image/upload/v1604633303/Lamborghini/Lamborghini%20Silueta/DF-00376.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00377', 'F011','http://res.cloudinary.com/carros-storage/image/upload/v1604633300/Lamborghini/Lamborghini%20Urraco/DF-00377.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00378', 'F011','http://res.cloudinary.com/carros-storage/image/upload/v1604633303/Lamborghini/Lamborghini%20Urraco/DF-00378.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00379', 'F011','http://res.cloudinary.com/carros-storage/image/upload/v1604633303/Lamborghini/Lamborghini%20Urraco/DF-00379.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00380', 'F081','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Cadillac/calais/DF-00380.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00381', 'F090','http://res.cloudinary.com/carros-storage/image/upload/v1604633384/Cadillac/de%201949/DF-00381.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00382', 'F090','http://res.cloudinary.com/carros-storage/image/upload/v1604633390/Cadillac/de%201949/DF-00382.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00383', 'F088','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Cadillac/de%20ville/DF-00383.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00384', 'F088','http://res.cloudinary.com/carros-storage/image/upload/v1604633390/Cadillac/de%20ville/DF-00384.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00385', 'F088','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Cadillac/de%20ville/DF-00385.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00386', 'F084','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Cadillac/eldorado/DF-00386.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00387', 'F084','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Cadillac/eldorado/DF-00387.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00388', 'F084','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Cadillac/eldorado/DF-00388.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00389', 'F084','http://res.cloudinary.com/carros-storage/image/upload/v1604633389/Cadillac/eldorado/DF-00389.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00390', 'F082','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Cadillac/fleetwood/DF-00390.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00391', 'F082','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Cadillac/fleetwood/DF-00391.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00392', 'F082','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Cadillac/fleetwood/DF-00392.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00393', 'F083','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Cadillac/fleetwood%20brougham/DF-00393.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00394', 'F083','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Cadillac/fleetwood%20brougham/DF-00394.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00395', 'F089','http://res.cloudinary.com/carros-storage/image/upload/v1604633391/Cadillac/serie%2061/DF-00395.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00396', 'F089','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Cadillac/serie%2061/DF-00396.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00397', 'F089','http://res.cloudinary.com/carros-storage/image/upload/v1604633388/Cadillac/serie%2061/DF-00397.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00398', 'F086','http://res.cloudinary.com/carros-storage/image/upload/v1604633384/Cadillac/serie%2062/DF-00398.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00399', 'F086','http://res.cloudinary.com/carros-storage/image/upload/v1604633384/Cadillac/serie%2062/DF-00399.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00400', 'F086','http://res.cloudinary.com/carros-storage/image/upload/v1604633388/Cadillac/serie%2062/DF-00400.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00401', 'F086','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Cadillac/serie%2062/DF-00401.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00402', 'F087','http://res.cloudinary.com/carros-storage/image/upload/v1604633395/Cadillac/serie%2070/DF-00402.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00403', 'F085','http://res.cloudinary.com/carros-storage/image/upload/v1604633395/Cadillac/sixty%20special/DF-00403.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00404', 'F085','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Cadillac/sixty%20special/DF-00404.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00405', 'F085','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Cadillac/sixty%20special/DF-00405.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00406', 'F085','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Cadillac/sixty%20special/DF-00406.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00407', 'F042','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Chevrolet/Chevrolet%20Camaro/DF-00407.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00408', 'F042','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Chevrolet/Chevrolet%20Camaro/DF-00408.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00409', 'F042','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Chevrolet/Chevrolet%20Camaro/DF-00409.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00410', 'F049','http://res.cloudinary.com/carros-storage/image/upload/v1604633384/Chevrolet/Chevrolet%20Chevelle/DF-00410.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00411', 'F049','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Chevrolet/Chevrolet%20Chevelle/DF-00411.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00412', 'F049','http://res.cloudinary.com/carros-storage/image/upload/v1604633392/Chevrolet/Chevrolet%20Chevelle/DF-00412.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00413', 'F043','http://res.cloudinary.com/carros-storage/image/upload/v1604633389/Chevrolet/Chevrolet%20Chevelle%20Laguna/DF-00413.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00414', 'F043','http://res.cloudinary.com/carros-storage/image/upload/v1604633384/Chevrolet/Chevrolet%20Chevelle%20Laguna/DF-00414.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00415', 'F043','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Chevrolet/Chevrolet%20Chevelle%20Laguna/DF-00415.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00416', 'F045','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Chevrolet/Chevrolet%20Chevette/DF-00416.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00417', 'F045','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Chevrolet/Chevrolet%20Chevette/DF-00417.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00418', 'F045','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Chevrolet/Chevrolet%20Chevette/DF-00418.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00419', 'F047','http://res.cloudinary.com/carros-storage/image/upload/v1604633388/Chevrolet/Chevrolet%20Citation/DF-00419.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00420', 'F047','http://res.cloudinary.com/carros-storage/image/upload/v1604633384/Chevrolet/Chevrolet%20Citation/DF-00420.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00421', 'F047','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Chevrolet/Chevrolet%20Citation/DF-00421.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00422', 'F050','http://res.cloudinary.com/carros-storage/image/upload/v1604633384/Chevrolet/Chevrolet%20Corvair/DF-00422.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00423', 'F050','http://res.cloudinary.com/carros-storage/image/upload/v1604633389/Chevrolet/Chevrolet%20Corvair/DF-00423.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00424', 'F050','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Chevrolet/Chevrolet%20Corvair/DF-00424.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00425', 'F048','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Chevrolet/Chevrolet%20Kingswood/DF-00425.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00426', 'F048','http://res.cloudinary.com/carros-storage/image/upload/v1604633384/Chevrolet/Chevrolet%20Kingswood/DF-00426.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00427', 'F048','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Chevrolet/Chevrolet%20Kingswood/DF-00427.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00428', 'F044','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Chevrolet/Chevrolet%20LUV/DF-00428.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00429', 'F044','http://res.cloudinary.com/carros-storage/image/upload/v1604633384/Chevrolet/Chevrolet%20LUV/DF-00429.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00430', 'F044','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Chevrolet/Chevrolet%20LUV/DF-00430.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00431', 'F046','http://res.cloudinary.com/carros-storage/image/upload/v1604633389/Chevrolet/Chevrolet%20Monza/DF-00431.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00432', 'F046','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Chevrolet/Chevrolet%20Monza/DF-00432.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00433', 'F046','http://res.cloudinary.com/carros-storage/image/upload/v1604633392/Chevrolet/Chevrolet%20Monza/DF-00433.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00434', 'F041','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Chevrolet/Chevrolet%20Vega/DF-00434.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00435', 'F041','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Chevrolet/Chevrolet%20Vega/DF-00435.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00436', 'F041','http://res.cloudinary.com/carros-storage/image/upload/v1604633384/Chevrolet/Chevrolet%20Vega/DF-00436.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00437', 'F171','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Citro%C3%ABn/1/DF-00437.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00438', 'F171','http://res.cloudinary.com/carros-storage/image/upload/v1604633384/Citro%C3%ABn/1/DF-00438.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00439', 'F171','http://res.cloudinary.com/carros-storage/image/upload/v1604633388/Citro%C3%ABn/1/DF-00439.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00440', 'F180','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Citro%C3%ABn/10/DF-00440.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00441', 'F180','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Citro%C3%ABn/10/DF-00441.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00442', 'F180','http://res.cloudinary.com/carros-storage/image/upload/v1604633395/Citro%C3%ABn/10/DF-00442.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00443', 'F172','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Citro%C3%ABn/2/DF-00443.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00444', 'F172','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Citro%C3%ABn/2/DF-00444.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00445', 'F172','http://res.cloudinary.com/carros-storage/image/upload/v1604633391/Citro%C3%ABn/2/DF-00445.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00446', 'F173','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Citro%C3%ABn/3/DF-00446.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00447', 'F173','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Citro%C3%ABn/3/DF-00447.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00448', 'F173','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Citro%C3%ABn/3/DF-00448.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00449', 'F174','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Citro%C3%ABn/4/DF-00449.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00450', 'F174','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Citro%C3%ABn/4/DF-00450.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00451', 'F174','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Citro%C3%ABn/4/DF-00451.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00452', 'F175','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Citro%C3%ABn/5/DF-00452.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00453', 'F175','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Citro%C3%ABn/5/DF-00453.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00454', 'F176','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Citro%C3%ABn/6/DF-00454.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00455', 'F176','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Citro%C3%ABn/6/DF-00455.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00456', 'F176','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Citro%C3%ABn/6/DF-00456.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00457', 'F177','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Citro%C3%ABn/7/DF-00457.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00458', 'F177','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Citro%C3%ABn/7/DF-00458.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00459', 'F177','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Citro%C3%ABn/7/DF-00459.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00460', 'F178','http://res.cloudinary.com/carros-storage/image/upload/v1604633393/Citro%C3%ABn/8/DF-00460.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00461', 'F178','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Citro%C3%ABn/8/DF-00461.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00462', 'F178','http://res.cloudinary.com/carros-storage/image/upload/v1604633384/Citro%C3%ABn/8/DF-00462.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00463', 'F179','http://res.cloudinary.com/carros-storage/image/upload/v1604633388/Citro%C3%ABn/9/DF-00463.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00464', 'F179','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Citro%C3%ABn/9/DF-00464.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00465', 'F179','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Citro%C3%ABn/9/DF-00465.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00466', 'F008','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Dodge/Dodge%20Aspen/DF-00466.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00467', 'F008','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Dodge/Dodge%20Aspen/DF-00467.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00468', 'F008','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Dodge/Dodge%20Aspen/DF-00468.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00469', 'F002','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Dodge/Dodge%20Challenger/DF-00469.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00470', 'F002','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Dodge/Dodge%20Challenger/DF-00470.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00471', 'F002','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Dodge/Dodge%20Challenger/DF-00471.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00472', 'F003','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Dodge/Dodge%20Charger/DF-00472.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00473', 'F003','http://res.cloudinary.com/carros-storage/image/upload/v1604633384/Dodge/Dodge%20Charger/DF-00473.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00474', 'F003','http://res.cloudinary.com/carros-storage/image/upload/v1604633386/Dodge/Dodge%20Charger/DF-00474.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00475', 'F004','http://res.cloudinary.com/carros-storage/image/upload/v1604633388/Dodge/Dodge%20Coronet/DF-00475.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00476', 'F004','http://res.cloudinary.com/carros-storage/image/upload/v1604633388/Dodge/Dodge%20Coronet/DF-00476.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00477', 'F004','http://res.cloudinary.com/carros-storage/image/upload/v1604633385/Dodge/Dodge%20Coronet/DF-00477.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00478', 'F001','http://res.cloudinary.com/carros-storage/image/upload/v1604633391/Dodge/Dodge%20Dart/DF-00478.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00479', 'F001','http://res.cloudinary.com/carros-storage/image/upload/v1604633395/Dodge/Dodge%20Dart/DF-00479.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00480', 'F001','http://res.cloudinary.com/carros-storage/image/upload/v1604633390/Dodge/Dodge%20Dart/DF-00480.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00481', 'F005','http://res.cloudinary.com/carros-storage/image/upload/v1604633391/Dodge/Dodge%20Diplomat/DF-00481.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00482', 'F005','http://res.cloudinary.com/carros-storage/image/upload/v1604633393/Dodge/Dodge%20Diplomat/DF-00482.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00483', 'F005','http://res.cloudinary.com/carros-storage/image/upload/v1604633391/Dodge/Dodge%20Diplomat/DF-00483.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00484', 'F009','http://res.cloudinary.com/carros-storage/image/upload/v1604633388/Dodge/Dodge%20Magnum/DF-00484.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00485', 'F009','http://res.cloudinary.com/carros-storage/image/upload/v1604633391/Dodge/Dodge%20Magnum/DF-00485.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00486', 'F009','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Dodge/Dodge%20Magnum/DF-00486.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00487', 'F010','http://res.cloudinary.com/carros-storage/image/upload/v1604633388/Dodge/Dodge%20Omni/DF-00487.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00488', 'F010','http://res.cloudinary.com/carros-storage/image/upload/v1604633393/Dodge/Dodge%20Omni/DF-00488.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00489', 'F010','http://res.cloudinary.com/carros-storage/image/upload/v1604633387/Dodge/Dodge%20Omni/DF-00489.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00490', 'F006','http://res.cloudinary.com/carros-storage/image/upload/v1604633391/Dodge/Dodge%20Polara/DF-00490.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00491', 'F006','http://res.cloudinary.com/carros-storage/image/upload/v1604633392/Dodge/Dodge%20Polara/DF-00491.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00492', 'F006','http://res.cloudinary.com/carros-storage/image/upload/v1604633403/Dodge/Dodge%20Polara/DF-00492.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00493', 'F007','http://res.cloudinary.com/carros-storage/image/upload/v1604633397/Dodge/Dodge%20Super%20Bee/DF-00493.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00494', 'F007','http://res.cloudinary.com/carros-storage/image/upload/v1604633389/Dodge/Dodge%20Super%20Bee/DF-00494.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00495', 'F007','http://res.cloudinary.com/carros-storage/image/upload/v1604633401/Dodge/Dodge%20Super%20Bee/DF-00495.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00496', 'F060','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/Alfa%20Romeo/33/DF-00496.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00497', 'F060','http://res.cloudinary.com/carros-storage/image/upload/v1604633493/Alfa%20Romeo/33/DF-00497.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00498', 'F060','http://res.cloudinary.com/carros-storage/image/upload/v1604633490/Alfa%20Romeo/33/DF-00498.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00499', 'F059','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/Alfa%20Romeo/33%20stradale/DF-00499.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00500', 'F058','http://res.cloudinary.com/carros-storage/image/upload/v1604633496/Alfa%20Romeo/Alfa%206/DF-00500.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00501', 'F058','http://res.cloudinary.com/carros-storage/image/upload/v1604633493/Alfa%20Romeo/Alfa%206/DF-00501.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00502', 'F058','http://res.cloudinary.com/carros-storage/image/upload/v1604633495/Alfa%20Romeo/Alfa%206/DF-00502.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00503', 'F053','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/Alfa%20Romeo/Alfasud/DF-00503.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00504', 'F053','http://res.cloudinary.com/carros-storage/image/upload/v1604633517/Alfa%20Romeo/Alfasud/DF-00504.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00505', 'F053','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/Alfa%20Romeo/Alfasud/DF-00505.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00506', 'F053','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/Alfa%20Romeo/Alfasud/DF-00506.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00507', 'F054','http://res.cloudinary.com/carros-storage/image/upload/v1604633495/Alfa%20Romeo/Alfetta/DF-00507.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00508', 'F054','http://res.cloudinary.com/carros-storage/image/upload/v1604633494/Alfa%20Romeo/Alfetta/DF-00508.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00509', 'F054','http://res.cloudinary.com/carros-storage/image/upload/v1604633496/Alfa%20Romeo/Alfetta/DF-00509.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00510', 'F055','http://res.cloudinary.com/carros-storage/image/upload/v1604633495/Alfa%20Romeo/Alfetta%20GTGTV/DF-00510.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00511', 'F055','http://res.cloudinary.com/carros-storage/image/upload/v1604633495/Alfa%20Romeo/Alfetta%20GTGTV/DF-00511.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00512', 'F055','http://res.cloudinary.com/carros-storage/image/upload/v1604633490/Alfa%20Romeo/Alfetta%20GTGTV/DF-00512.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00513', 'F055','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/Alfa%20Romeo/Alfetta%20GTGTV/DF-00513.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00514', 'F055','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/Alfa%20Romeo/Alfetta%20GTGTV/DF-00514.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00515', 'F055','http://res.cloudinary.com/carros-storage/image/upload/v1604633495/Alfa%20Romeo/Alfetta%20GTGTV/DF-00515.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00516', 'F051','http://res.cloudinary.com/carros-storage/image/upload/v1604633493/Alfa%20Romeo/Giulia/DF-00516.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00517', 'F057','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/Alfa%20Romeo/Giulietta/DF-00517.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00518', 'F052','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/Alfa%20Romeo/Montreal/DF-00518.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00519', 'F052','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/Alfa%20Romeo/Montreal/DF-00519.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00520', 'F052','http://res.cloudinary.com/carros-storage/image/upload/v1604633490/Alfa%20Romeo/Montreal/DF-00520.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00521', 'F052','http://res.cloudinary.com/carros-storage/image/upload/v1604633498/Alfa%20Romeo/Montreal/DF-00521.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00522', 'F056','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/Alfa%20Romeo/Sprint/DF-00522.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00523', 'F102','http://res.cloudinary.com/carros-storage/image/upload/v1604633488/Audi/100/DF-00523.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00524', 'F102','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/Audi/100/DF-00524.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00525', 'F102','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/Audi/100/DF-00525.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00526', 'F102','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/Audi/100/DF-00526.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00527', 'F104','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/Audi/100%20Coup%C3%A9%20S/DF-00527.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00528', 'F101','http://res.cloudinary.com/carros-storage/image/upload/v1604633495/Audi/80/DF-00528.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00529', 'F107','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/Audi/90/DF-00529.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00530', 'F107','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/Audi/90/DF-00530.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00531', 'F109','http://res.cloudinary.com/carros-storage/image/upload/v1604633495/Audi/A8/DF-00531.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00532', 'F108','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/Audi/cabriolet/DF-00532.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00533', 'F106','http://res.cloudinary.com/carros-storage/image/upload/v1604633495/Audi/F103/DF-00533.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00534', 'F106','http://res.cloudinary.com/carros-storage/image/upload/v1604633488/Audi/F103/DF-00534.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00535', 'F103','http://res.cloudinary.com/carros-storage/image/upload/v1604633495/Audi/Quattro/DF-00535.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00536', 'F103','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/Audi/Quattro/DF-00536.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00537', 'F110','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/Audi/Sport%20quattro/DF-00537.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00538', 'F110','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/Audi/Sport%20quattro/DF-00538.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00539', 'F105','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/Audi/V8/DF-00539.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00540', 'F105','http://res.cloudinary.com/carros-storage/image/upload/v1604633490/Audi/V8/DF-00540.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00541', 'F159','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/Austin/Austin%201300%20GT/DF-00541.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00542', 'F159','http://res.cloudinary.com/carros-storage/image/upload/v1604633497/Austin/Austin%201300%20GT/DF-00542.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00543', 'F159','http://res.cloudinary.com/carros-storage/image/upload/v1604633497/Austin/Austin%201300%20GT/DF-00543.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00544', 'F159','http://res.cloudinary.com/carros-storage/image/upload/v1604633493/Austin/Austin%201300%20GT/DF-00544.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00545', 'F151','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/Austin/Austin%20Allegro/DF-00545.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00546', 'F151','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/Austin/Austin%20Allegro/DF-00546.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00547', 'F151','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/Austin/Austin%20Allegro/DF-00547.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00548', 'F151','http://res.cloudinary.com/carros-storage/image/upload/v1604633493/Austin/Austin%20Allegro/DF-00548.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00549', 'F152','http://res.cloudinary.com/carros-storage/image/upload/v1604633494/Austin/Austin%20Ambassador/DF-00549.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00550', 'F152','http://res.cloudinary.com/carros-storage/image/upload/v1604633490/Austin/Austin%20Ambassador/DF-00550.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00551', 'F152','http://res.cloudinary.com/carros-storage/image/upload/v1604633494/Austin/Austin%20Ambassador/DF-00551.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00552', 'F152','http://res.cloudinary.com/carros-storage/image/upload/v1604633490/Austin/Austin%20Ambassador/DF-00552.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00553', 'F157','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/Austin/Austin%20Cambridge%20A60/DF-00553.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00554', 'F157','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/Austin/Austin%20Cambridge%20A60/DF-00554.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00555', 'F157','http://res.cloudinary.com/carros-storage/image/upload/v1604633493/Austin/Austin%20Cambridge%20A60/DF-00555.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00556', 'F157','http://res.cloudinary.com/carros-storage/image/upload/v1604633494/Austin/Austin%20Cambridge%20A60/DF-00556.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00557', 'F153','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/Austin/Austin%20Maestro/DF-00557.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00558', 'F153','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/Austin/Austin%20Maestro/DF-00558.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00559', 'F153','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/Austin/Austin%20Maestro/DF-00559.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00560', 'F153','http://res.cloudinary.com/carros-storage/image/upload/v1604633499/Austin/Austin%20Maestro/DF-00560.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00561', 'F154','http://res.cloudinary.com/carros-storage/image/upload/v1604633504/Austin/Austin%20Maxi/DF-00561.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00562', 'F154','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/Austin/Austin%20Maxi/DF-00562.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00563', 'F154','http://res.cloudinary.com/carros-storage/image/upload/v1604633494/Austin/Austin%20Maxi/DF-00563.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00564', 'F154','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/Austin/Austin%20Maxi/DF-00564.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00565', 'F160','http://res.cloudinary.com/carros-storage/image/upload/v1604633493/Austin/Austin%20Metro/DF-00565.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00566', 'F160','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/Austin/Austin%20Metro/DF-00566.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00567', 'F160','http://res.cloudinary.com/carros-storage/image/upload/v1604633496/Austin/Austin%20Metro/DF-00567.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00568', 'F160','http://res.cloudinary.com/carros-storage/image/upload/v1604633490/Austin/Austin%20Metro/DF-00568.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00569', 'F158','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/Austin/Austin%20Mini%20Cooper/DF-00569.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00570', 'F158','http://res.cloudinary.com/carros-storage/image/upload/v1604633495/Austin/Austin%20Mini%20Cooper/DF-00570.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00571', 'F158','http://res.cloudinary.com/carros-storage/image/upload/v1604633493/Austin/Austin%20Mini%20Cooper/DF-00571.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00572', 'F158','http://res.cloudinary.com/carros-storage/image/upload/v1604633493/Austin/Austin%20Mini%20Cooper/DF-00572.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00573', 'F156','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/Austin/Austin%20Mini%20Moke/DF-00573.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00574', 'F156','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/Austin/Austin%20Mini%20Moke/DF-00574.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00575', 'F156','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/Austin/Austin%20Mini%20Moke/DF-00575.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00576', 'F156','http://res.cloudinary.com/carros-storage/image/upload/v1604633499/Austin/Austin%20Mini%20Moke/DF-00576.png');
INSERT INTO tb_detalle_foto VALUES('DF-00577', 'F155','http://res.cloudinary.com/carros-storage/image/upload/v1604633494/Austin/Austin%20Montego/DF-00577.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00578', 'F155','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/Austin/Austin%20Montego/DF-00578.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00579', 'F155','http://res.cloudinary.com/carros-storage/image/upload/v1604633495/Austin/Austin%20Montego/DF-00579.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00580', 'F155','http://res.cloudinary.com/carros-storage/image/upload/v1604633498/Austin/Austin%20Montego/DF-00580.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00581', 'F116','http://res.cloudinary.com/carros-storage/image/upload/v1604633493/BMW/316/DF-00581.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00582', 'F120','http://res.cloudinary.com/carros-storage/image/upload/v1604633490/BMW/E21/DF-00582.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00583', 'F118','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/BMW/E23/DF-00583.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00584', 'F119','http://res.cloudinary.com/carros-storage/image/upload/v1604633496/BMW/E32/DF-00584.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00585', 'F111','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/BMW/M1/DF-00585.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00586', 'F111','http://res.cloudinary.com/carros-storage/image/upload/v1604633488/BMW/M1/DF-00586.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00587', 'F112','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/BMW/M3/DF-00587.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00588', 'F113','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/BMW/M5/DF-00588.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00589', 'F114','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/BMW/M6/DF-00589.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00590', 'F114','http://res.cloudinary.com/carros-storage/image/upload/v1604633490/BMW/M6/DF-00590.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00591', 'F114','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/BMW/M6/DF-00591.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00592', 'F115','http://res.cloudinary.com/carros-storage/image/upload/v1604633489/BMW/Serie%203/DF-00592.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00593', 'F115','http://res.cloudinary.com/carros-storage/image/upload/v1604633493/BMW/Serie%203/DF-00593.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00594', 'F117','http://res.cloudinary.com/carros-storage/image/upload/v1604633493/BMW/Serie%205/DF-00594.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00595', 'F117','http://res.cloudinary.com/carros-storage/image/upload/v1604633492/BMW/Serie%205/DF-00595.jpg');
INSERT INTO tb_detalle_foto VALUES('DF-00596', 'F117','http://res.cloudinary.com/carros-storage/image/upload/v1604633491/BMW/Serie%205/DF-00596.jpg');

/*Tabla Auto  Campo PRECIO=US$ 19.600*/
CREATE TABLE tb_Auto
(
codigo_Auto char(4) not null,
modelo_Auto varchar(500) ,
descripcion_Auto varchar(10000),
año_Auto char(4),
peso_Auto char(8),
placa_Auto char(7),
color_Auto varchar(20),
puertas_Auto int,
cilindrada_Auto char(4),
precio_Auto double,
estado_Auto boolean,
foto_Auto char(4),

codigo_TipoAuto1 char(4) not null,
codigo_MarcaAuto1 char(4) not null,
codigo_Carroceria1 char(3) not null,
codigo_TipoTransmision1 char(4) not null,
codigo_Combustible1 char(6) not null,
codigo_Kilometraje1 char(3) not null
);


ALTER TABLE tb_Auto
ADD PRIMARY KEY(codigo_Auto);

ALTER TABLE tb_Auto
ADD FOREIGN KEY(codigo_TipoAuto1) REFERENCES tb_TipoAuto(codigo_TipoAuto);

ALTER TABLE tb_Auto
ADD FOREIGN KEY(codigo_MarcaAuto1) REFERENCES tb_MarcaAuto(codigo_MarcaAuto);

ALTER TABLE tb_Auto
ADD FOREIGN KEY(codigo_Carroceria1) REFERENCES tb_Carroceria(codigo_Carroceria);

ALTER TABLE tb_Auto
ADD FOREIGN KEY(codigo_TipoTransmision1) REFERENCES tb_TipoTransmision(codigo_TipoTransmision);

ALTER TABLE tb_Auto
ADD FOREIGN KEY(codigo_Combustible1) REFERENCES tb_Combustible(codigo_Combustible);

ALTER TABLE tb_Auto
ADD FOREIGN KEY(codigo_Kilometraje1) REFERENCES tb_Kilometraje(codigo_Kilometraje);

ALTER TABLE tb_Auto
ADD FOREIGN KEY(foto_Auto) REFERENCES tb_foto(codigo);


-- Registros de Vehiculos "Dodge"
INSERT INTO tb_Auto VALUES('A001', 'Dodge Dart', '
AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1970', '1.375 kg', 'A1A-120', 'Negro', 4, '2500', 19.600, 1, 'F001', 'TA01', 'MA01', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A002', 'Dodge Challenger', '
AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1971', '1.470 kg', 'A1B-121', 'Azul', 2, '2600', 20.300, 1, 'F002', 'TA01', 'MA01', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A003', 'Dodge Charger', '
AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1972', '1.260 kg', 'A1C-122', 'Rojo', 4, '2400', 21.800, 1, 'F003', 'TA01', 'MA01', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A004', 'Dodge Coronet', '
AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1973', '1.175 kg', 'A1D-123', 'Amarillo', 2, '2300', 22.100, 1, 'F004', 'TA01', 'MA01', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A005', 'Dodge Diplomat', '
AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1974', '1.580 kg', 'A1E-124', 'Marron', 4, '2200', 23.200, 1, 'F005', 'TA01', 'MA01', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A006', 'Dodge Polara', '
AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1975', '1.675 kg', 'A1F-125', 'Verde', 2, '2100', 24.800, 1, 'F006', 'TA01', 'MA01', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A007', 'Dodge Super Bee', '
AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1976', '1.730 kg', 'A1G-126', 'Negro', 4, '2700', 25.200, 1, 'F007', 'TA01', 'MA01', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A008', 'Dodge Aspen', '
AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1977', '1.830 kg', 'A1H-127', 'Rojo', 2, '2800', 26.900, 1, 'F008', 'TA01', 'MA01', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A009', 'Dodge Magnum', '
AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1978', '1.490 kg', 'A1I-128', 'Azul', 4, '2900', 27.100, 1, 'F009', 'TA01', 'MA01', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A010', 'Dodge Omni', '
AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1979', '1.920 kg', 'A1J-129', 'Amarillo', 2, '2200', 28.800, 1, 'F010', 'TA01', 'MA01', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Lamborghini"
INSERT INTO tb_Auto VALUES('A011', 'Lamborghini Urraco', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1970', '1.375 kg', 'B2A-130', 'Negro', 4, '3100', 30.200, 1, 'F011', 'TA01', 'MA02', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A012', 'Lamborghini Espada', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1971', '1.470 kg', 'B2B-131', 'Azul', 2, '3200', 31.100, 1, 'F012', 'TA01', 'MA02', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A013', 'Lamborghini Miura', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1972', '1.260 kg', 'B2C-132', 'Rojo', 4, '3300', 32.600, 1, 'F013', 'TA01', 'MA02', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A014', 'Lamborghini Jarama', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1973', '1.175 kg', 'B2D-133', 'Amarillo', 2, '3400', 33.400, 1, 'F014', 'TA01', 'MA02', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A015', 'Lamborghini Countach', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1974', '1.580 kg', 'B2E-134', 'Marron', 4, '3500', 34.500, 1, 'F015', 'TA01', 'MA02', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A016', 'Lamborghini Silueta', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1975', '1.675 kg', 'B2F-135', 'Verde', 2, '3600', 35.600, 1, 'F016', 'TA01', 'MA02', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A017', 'Lamborghini 350 GT', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1976', '1.730 kg', 'B2G-136', 'Negro', 4, '3700', 36.200, 1, 'F017', 'TA01', 'MA02', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A018', 'Lamborghini 400 GT', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1977', '1.830 kg', 'B2H-137', 'Amarillo', 2, '3800', 37.300, 1, 'F018', 'TA01', 'MA02', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A019', 'Lamborghini Islero', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1978', '1.490 kg', 'B2I-138', 'Azul', 4, '3900', 38.400, 1, 'F019', 'TA01', 'MA02', 'C09', 'TT01', 'Comb01', 'k02');
INSERT INTO tb_Auto VALUES('A020', 'Lamborghini Jalpa', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1979', '1.920 kg', 'B2J-139', 'Rojo', 2, '3000', 39.900, 1, 'F020', 'TA01', 'MA02', 'C10', 'TT02', 'Comb02', 'k03');



-- Registros de Vehiculos "Ford"
INSERT INTO tb_Auto VALUES('A021', 'Ford Bronco', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1970', '1.375 kg', 'C3A-140', 'Negro', 4, '4100', 40.200, 1, 'F021', 'TA01', 'MA03', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A022', 'Ford Mustang Boss 302', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1971', '1.470 kg', 'C3B-141', 'Azul', 2, '4200', 41.100, 1, 'F022', 'TA01', 'MA03', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A023', 'Ford Mercury Cougar', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1972', '1.260 kg', 'C3C-142', 'Rojo', 4, '4300', 42.300, 1, 'F023', 'TA01', 'MA03', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A024', 'Ford Escort', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1973', '1.175 kg', 'C3D-143', 'Amarillo', 2, '4400', 43.500, 1, 'F024', 'TA01', 'MA03', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A025', 'Ford Falcon', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1974', '1.580 kg', 'C3E-144', 'Verde', 4, '4500', 44.400, 1, 'F025', 'TA01', 'MA03', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A026', 'Ford Granada', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1975', '1.675 kg', 'C3F-145', 'Azul', 2, '4600', 45.600, 1, 'F026', 'TA01', 'MA03', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A027', 'Ford Pinto', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1976', '1.730 kg', 'C3G-146', 'Negro', 4, '4700', 46.300, 1, 'F027', 'TA01', 'MA03', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A028', 'Ford Torino', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1977', '1.830 kg', 'C3H-147', 'Marron', 2, '4800', 47.400, 1, 'F028', 'TA01', 'MA03', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A029', 'Ford Ranchero', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1978', '1.490 kg', 'C3I-148', 'Azul', 4, '4900', 48.200, 1, 'F029', 'TA01', 'MA03', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A030', 'Ford Taunus', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1979', '1.920 kg', 'C3J-149', 'Rojo', 2, '4000', 49.500, 1, 'F030', 'TA01', 'MA03', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Porsche"
INSERT INTO tb_Auto VALUES('A031', 'Porsche 911(clásico)', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1970', '1.375 kg', 'D4A-150', 'Negro', 4, '5100', 50.200, 1, 'F031', 'TA01', 'MA04', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A032', 'Porsche 914', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1971', '1.470 kg', 'D4B-151', 'Azul', 2, '5200', 51.100, 1, 'F032', 'TA01', 'MA04', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A033', 'Porsche 911 Carrera', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1972', '1.260 kg', 'D4C-152', 'Rojo', 4, '5300', 52.300, 1, 'F033', 'TA01', 'MA04', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A034', 'Porsche 911 SC', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1973', '1.175 kg', 'D4D-153', 'Amarillo', 2, '5400', 53.500, 1, 'F034', 'TA01', 'MA04', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A035', 'Porsche 912 E', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1974', '1.580 kg', 'D4E-154', 'Verde', 4, '5500', 54.400, 1, 'F035', 'TA01', 'MA04', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A036', 'Porsche 911 Turbo', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1975', '1.675 kg', 'D4F-155', 'Azul', 2, '5600', 55.600, 1, 'F036', 'TA01', 'MA04', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A037', 'Porsche 924', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1976', '1.730 kg', 'D4G-156', 'Negro', 4, '5700', 56.300, 1, 'F037', 'TA01', 'MA04', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A038', 'Porsche 924 Turbo', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1977', '1.830 kg', 'D4H-157', 'Marron', 2, '5800', 57.400, 1, 'F038', 'TA01', 'MA04', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A039', 'Porsche 928', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1978', '1.490 kg', 'D4I-158', 'Azul', 4, '5900', 58.200, 1, 'F039', 'TA01', 'MA04', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A040', 'Porsche 944', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1979', '1.920 kg', 'D4J-159', 'Rojo', 2, '5000', 59.500, 1, 'F040', 'TA01', 'MA04', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Chevrolet"
INSERT INTO tb_Auto VALUES('A041', 'Chevrolet Vega', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1970', '1.375 kg', 'E5A-160', 'Negro', 4, '6100', 60.200, 1, 'F041', 'TA01', 'MA05', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A042', 'Chevrolet Camaro', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1971', '1.470 kg', 'E5B-161', 'Azul', 2, '6200', 61.100, 1, 'F042', 'TA01', 'MA05', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A043', 'Chevrolet Chevelle Laguna', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1972', '1.260 kg', 'E5C-162', 'Rojo', 4, '6300', 62.300, 1, 'F043', 'TA01', 'MA05', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A044', 'Chevrolet LUV', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1973', '1.175 kg', 'E5D-163', 'Amarillo', 2, '6400', 63.500, 1, 'F044', 'TA01', 'MA05', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A045', 'Chevrolet Chevette', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1974', '1.580 kg', 'E5E-164', 'Verde', 4, '6500', 64.400, 1, 'F045', 'TA01', 'MA05', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A046', 'Chevrolet Monza', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1975', '1.675 kg', 'E5F-165', 'Azul', 2, '6600', 65.600, 1, 'F046', 'TA01', 'MA05', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A047', 'Chevrolet Citation', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1976', '1.730 kg', 'E5G-166', 'Negro', 4, '6700', 66.300, 1, 'F047', 'TA01', 'MA05', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A048', 'Chevrolet Kingswood', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1977', '1.830 kg', 'E5H-167', 'Marron', 2, '6800', 67.400, 1, 'F048', 'TA01', 'MA05', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A049', 'Chevrolet Chevelle', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1978', '1.490 kg', 'E5I-168', 'Azul', 4, '6900', 68.200, 1, 'F049', 'TA01', 'MA05', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A050', 'Chevrolet Corvair', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1979', '1.920 kg', 'E5J-169', 'Rojo', 2, '6000', 69.500, 1, 'F050', 'TA01', 'MA05', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Alfa Romeo"
INSERT INTO tb_Auto VALUES('A051', 'Alfa Romeo Giulia', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1970', '1.375 kg', 'F6A-170', 'Negro', 4, '7100', 70.200, 1, 'F051', 'TA01', 'MA06', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A052', 'Alfa Romeo Montreal', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1971', '1.470 kg', 'F6B-171', 'Azul', 2, '7200', 71.100, 1, 'F052', 'TA01', 'MA06', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A053', 'Alfa Romeo Alfasud', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1972', '1.260 kg', 'F6C-172', 'Rojo', 4, '7300', 72.300, 1, 'F053', 'TA01', 'MA06', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A054', 'Alfa Romeo Alfetta', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1973', '1.175 kg', 'F6D-173', 'Amarillo', 2, '7400', 73.500, 1, 'F054', 'TA01', 'MA06', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A055', 'Alfa Romeo Alfetta GT/GTV', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1974', '1.580 kg', 'F6E-174', 'Verde', 4, '7500', 74.400, 1, 'F055', 'TA01', 'MA06', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A056', 'Alfa Romeo Sprint', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1975', '1.675 kg', 'F6F-175', 'Azul', 2, '7600', 75.600, 1, 'F056', 'TA01', 'MA06', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A057', 'Alfa Romeo Giulietta', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1976', '1.730 kg', 'F6G-176', 'Negro', 4, '7700', 76.300, 1, 'F057', 'TA01', 'MA06', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A058', 'Alfa Romeo Alfa 6', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1977', '1.830 kg', 'F6H-177', 'Marron', 2, '7800', 77.400, 1, 'F058', 'TA01', 'MA06', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A059', 'Alfa Romeo 33 Stradale', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1978', '1.490 kg', 'F6I-178', 'Azul', 4, '7900', 78.200, 1, 'F059', 'TA01', 'MA06', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A060', 'Alfa Romeo 33', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1979', '1.920 kg', 'F6J-179', 'Rojo', 2, '7000', 79.500, 1, 'F060', 'TA01', 'MA06', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Jaguar"
INSERT INTO tb_Auto VALUES('A061', 'Jaguar XJ6', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1970', '1.375 kg', 'G7A-180', 'Negro', 4, '8100', 80.200, 1, 'F061', 'TA01', 'MA07', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A062', 'Jaguar Sovereign Daimler', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1971', '1.470 kg', 'G7B-181', 'Azul', 2, '8200', 81.100, 1, 'F062', 'TA01', 'MA07', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A063', 'Jaguar XJS', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1972', '1.260 kg', 'G7C-182', 'Rojo', 4, '8300', 82.300, 1, 'F063', 'TA01', 'MA07', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A064', 'Jaguar Mark 2', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1973', '1.175 kg', 'G7D-183', 'Amarillo', 2, '8400', 83.500, 1, 'F064', 'TA01', 'MA07', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A065', 'Jaguar E-Type', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1974', '1.580 kg', 'G7E-184', 'Verde', 4, '8500', 84.400, 1, 'F065', 'TA01', 'MA07', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A066', 'Jaguar XJ', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1975', '1.675 kg', 'G7F-185', 'Azul', 2, '8600', 85.600, 1, 'F066', 'TA01', 'MA07', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A067', 'Jaguar MK2', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1976', '1.730 kg', 'G7G-186', 'Negro', 4, '8700', 86.300, 1, 'F067', 'TA01', 'MA07', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A068', 'Jaguar Mark X', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1977', '1.830 kg', 'G7H-187', 'Marron', 2, '8800', 87.400, 1, 'F068', 'TA01', 'MA07', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A069', 'Jaguar Mark IX', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1978', '1.490 kg', 'G7I-188', 'Azul', 4, '8900', 88.200, 1, 'F069', 'TA01', 'MA07', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A070', 'Jaguar XK(1948-1961)', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1979', '1.920 kg', 'G7J-189', 'Rojo', 2, '9000', 89.500, 1, 'F070', 'TA01', 'MA07', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Mercedes-Benz"
INSERT INTO tb_Auto VALUES('A071', 'Mercedes-Benz R107', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1970', '1.375 kg', 'H8A-190', 'Negro', 4, '4100', 90.200, 1, 'F071', 'TA01', 'MA08', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A072', 'Mercedes-Benz W116', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1971', '1.470 kg', 'H8B-191', 'Azul', 2, '4200', 91.100, 1, 'F072', 'TA01', 'MA08', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A073', 'Mercedes-Benz W114/W115', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1972', '1.260 kg', 'H8C-192', 'Rojo', 4, '4300', 92.300, 1, 'F073', 'TA01', 'MA08', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A074', 'Mercedes-Benz W123', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1973', '1.175 kg', 'H8D-193', 'Amarillo', 2, '4400', 93.500, 1, 'F074', 'TA01', 'MA08', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A075', 'Mercedes-Benz W126', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1974', '1.580 kg', 'H8E-194', 'Verde', 4, '4500', 94.400, 1, 'F075', 'TA01', 'MA08', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A076', 'Mercedes-Benz Clase G', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1975', '1.675 kg', 'H8F-195', 'Azul', 2, '4600', 95.600, 1, 'F076', 'TA01', 'MA08', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A077', 'Mercedes-Benz W108/W109', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1976', '1.730 kg', 'H8G-196', 'Negro', 4, '4700', 96.300, 1, 'F077', 'TA01', 'MA08', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A078', 'Mercedes-Benz 600', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1977', '1.830 kg', 'H8H-197', 'Marron', 2, '4800', 97.400, 1, 'F078', 'TA01', 'MA08', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A079', 'Mercedes-Benz W112', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1978', '1.490 kg', 'H8I-198', 'Azul', 4, '4900', 98.200, 1, 'F079', 'TA01', 'MA08', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A080', 'Mercedes-Benz W110', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1979', '1.920 kg', 'H8J-199', 'Rojo', 2, '5000', 99.500, 1, 'F080', 'TA01', 'MA08', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Cadillac"
INSERT INTO tb_Auto VALUES('A081', 'Cadillac Calais', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1970', '1.375 kg', 'I9A-200', 'Negro', 4, '5100', 30.200, 1, 'F081', 'TA01', 'MA09', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A082', 'Cadillac Fleetwood', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1971', '1.470 kg', 'I9B-201', 'Azul', 2, '5200', 31.100, 1, 'F082', 'TA01', 'MA09', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A083', 'Cadillac Fleetwood Brougham', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1972', '1.260 kg', 'I9C-202', 'Rojo', 4, '5300', 32.300, 1, 'F083', 'TA01', 'MA09', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A084', 'Cadillac Eldorado', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1973', '1.175 kg', 'I9D-203', 'Amarillo', 2, '5400', 33.500, 1, 'F084', 'TA01', 'MA09', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A085', 'Cadillac Sixty Special', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1974', '1.580 kg', 'I9E-204', 'Verde', 4, '5500', 34.400, 1, 'F085', 'TA01', 'MA09', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A086', 'Cadillac Serie 62', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1975', '1.675 kg', 'I9F-205', 'Azul', 2, '5600', 35.600, 1, 'F086', 'TA01', 'MA09', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A087', 'Cadillac Serie 70', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1976', '1.730 kg', 'I9G-206', 'Negro', 4, '5700', 36.300, 1, 'F087', 'TA01', 'MA09', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A088', 'Cadillac de Ville', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1977', '1.830 kg', 'I9H-207', 'Marron', 2, '5800', 37.400, 1, 'F088', 'TA01', 'MA09', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A089', 'Cadillac Serie 61', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1978', '1.490 kg', 'I9I-208', 'Azul', 4, '5900', 38.200, 1, 'F089', 'TA01', 'MA09', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A090', 'Cadillac de 1949', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1979', '1.920 kg', 'I9J-209', 'Rojo', 2, '6000', 39.500, 1, 'F090', 'TA01', 'MA09', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Maserati"
INSERT INTO tb_Auto VALUES('A091', 'Maserati Bora', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1970', '1.375 kg', 'I1A-300', 'Negro', 4, '6100', 40.200, 1, 'F091', 'TA01', 'MA10', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A092', 'Maserati Khamsin', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1971', '1.470 kg', 'I1B-301', 'Azul', 2, '6200', 41.100, 1, 'F092', 'TA01', 'MA10', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A093', 'Maserati Quattroporte', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1972', '1.260 kg', 'I1C-302', 'Rojo', 4, '6300', 42.300, 1, 'F093', 'TA01', 'MA10', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A094', 'Maserati Merak', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1973', '1.175 kg', 'I1D-303', 'Amarillo', 2, '6400', 43.500, 1, 'F094', 'TA01', 'MA10', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A095', 'Maserati Kyalami', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1974', '1.580 kg', 'I1E-304', 'Verde', 4, '6500', 44.400, 1, 'F095', 'TA01', 'MA10', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A096', 'Maserati Sebring', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1975', '1.675 kg', 'I1F-305', 'Azul', 2, '6600', 45.600, 1, 'F096', 'TA01', 'MA10', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A097', 'Maserati Ghibli', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1976', '1.730 kg', 'I1G-306', 'Negro', 4, '6700', 46.300, 1, 'F097', 'TA01', 'MA10', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A098', 'Maserati Mistral', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1977', '1.830 kg', 'I1H-307', 'Marron', 2, '6800', 47.400, 1, 'F098', 'TA01', 'MA10', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A099', 'Maserati Indy', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1978', '1.490 kg', 'I1I-308', 'Azul', 4, '6900', 48.200, 1, 'F099', 'TA01', 'MA10', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A100', 'Maserati México', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1979', '1.920 kg', 'I1J-309', 'Rojo', 2, '7000', 49.500, 1, 'F100', 'TA01', 'MA10', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Audi"
INSERT INTO tb_Auto VALUES('A101', 'Audi 80', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1980', '1.375 kg', 'K2A-400', 'Negro', 4, '7100', 50.200, 1, 'F101', 'TA02', 'MA11', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A102', 'Audi 100', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1981', '1.470 kg', 'K2B-401', 'Azul', 2, '7200', 51.100, 1, 'F102', 'TA02', 'MA11', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A103', 'Audi Quattro', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1982', '1.260 kg', 'K2C-402', 'Rojo', 4, '7300', 52.300, 1, 'F103', 'TA02', 'MA11', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A104', 'Audi 100 Coupé S', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1983', '1.175 kg', 'K2D-403', 'Amarillo', 2, '7400', 53.500, 1, 'F104', 'TA02', 'MA11', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A105', 'Audi V8', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1984', '1.580 kg', 'K2E-404', 'Verde', 4, '7500', 54.400, 1, 'F105', 'TA02', 'MA11', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A106', 'Audi F103', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1985', '1.675 kg', 'K2F-405', 'Azul', 2, '7600', 55.600, 1, 'F106', 'TA02', 'MA11', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A107', 'Audi 90', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1986', '1.730 kg', 'K2G-406', 'Negro', 4, '7700', 56.300, 1, 'F107', 'TA02', 'MA11', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A108', 'Audi Cabriolet', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1987', '1.830 kg', 'K2H-407', 'Marron', 2, '7800', 57.400, 1, 'F108', 'TA02', 'MA11', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A109', 'Audi A8', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1988', '1.490 kg', 'K2I-408', 'Azul', 4, '7900', 58.200, 1, 'F109', 'TA02', 'MA11', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A110', 'Audi Sport Quattro', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1989', '1.920 kg', 'K2J-409', 'Rojo', 2, '8000', 59.500, 1, 'F110', 'TA02', 'MA11', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "BMW"
INSERT INTO tb_Auto VALUES('A111', 'BMW M1', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1980', '1.375 kg', 'L3A-500', 'Negro', 4, '8100', 60.200, 1, 'F111', 'TA02', 'MA12', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A112', 'BMW M3', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1981', '1.470 kg', 'L3B-501', 'Azul', 2, '8200', 61.100, 1, 'F112', 'TA02', 'MA12', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A113', 'BMW M5', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1982', '1.260 kg', 'L3C-502', 'Rojo', 4, '8300', 62.300, 1, 'F113', 'TA02', 'MA12', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A114', 'BMW M6', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1983', '1.175 kg', 'L3D-503', 'Amarillo', 2, '8400', 63.500, 1, 'F114', 'TA02', 'MA12', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A115', 'BMW Serie 3', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1984', '1.580 kg', 'L3E-504', 'Verde', 4, '8500', 64.400, 1, 'F115', 'TA02', 'MA12', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A116', 'BMW 316', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1985', '1.675 kg', 'L3F-505', 'Azul', 2, '8600', 65.600, 1, 'F116', 'TA02', 'MA12', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A117', 'BMW Serie 5', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1986', '1.730 kg', 'L3G-506', 'Negro', 4, '8700', 66.300, 1, 'F117', 'TA02', 'MA12', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A118', 'BMW E23', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1987', '1.830 kg', 'L3H-507', 'Marron', 2, '8800', 67.400, 1, 'F118', 'TA02', 'MA12', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A119', 'BMW E32', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1988', '1.490 kg', 'L3I-508', 'Azul', 4, '8900', 68.200, 1, 'F119', 'TA02', 'MA12', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A120', 'BMW E21', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1989', '1.920 kg', 'L3J-509', 'Rojo', 2, '9000', 69.500, 1, 'F120', 'TA02', 'MA12', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Ferrari"
INSERT INTO tb_Auto VALUES('A121', 'Ferrari 288 GTO', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1980', '1.375 kg', 'M4A-600', 'Negro', 4, '9100', 70.200, 1, 'F121', 'TA02', 'MA13', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A122', 'Ferrari 308 GTB', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1981', '1.470 kg', 'M4B-601', 'Azul', 2, '9200', 71.100, 1, 'F122', 'TA02', 'MA13', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A123', 'Ferrari 328', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1982', '1.260 kg', 'M4C-602', 'Rojo', 4, '9300', 72.300, 1, 'F123', 'TA02', 'MA13', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A124', 'Ferrari F40', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1983', '1.175 kg', 'M4D-603', 'Amarillo', 2, '9400', 73.500, 1, 'F124', 'TA02', 'MA13', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A125', 'Ferrari GT4', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1984', '1.580 kg', 'M4E-604', 'Verde', 4, '9500', 74.400, 1, 'F125', 'TA02', 'MA13', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A126', 'Ferrari Mondial', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1985', '1.675 kg', 'M4F-605', 'Azul', 2, '9600', 75.600, 1, 'F126', 'TA02', 'MA13', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A127', 'Ferrari Testarossa', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1986', '1.730 kg', 'M4G-606', 'Negro', 4, '9700', 76.300, 1, 'F127', 'TA02', 'MA13', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A128', 'Ferrari 348', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1987', '1.830 kg', 'M4H-607', 'Marron', 2, '9800', 77.400, 1, 'F128', 'TA02', 'MA13', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A129', 'Ferrari Dino', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1988', '1.490 kg', 'M4I-608', 'Azul', 4, '9900', 78.200, 1, 'F129', 'TA02', 'MA13', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A130', 'Ferrari F355', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1989', '1.920 kg', 'M4J-609', 'Rojo', 2, '9200', 79.500, 1, 'F130', 'TA02', 'MA13', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Peugeot"
INSERT INTO tb_Auto VALUES('A131', 'Peugeot 205', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1980', '1.375 kg', 'N5A-700', 'Negro', 4, '1100', 80.200, 1, 'F131', 'TA02', 'MA14', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A132', 'Peugeot 205 Turbo 16', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1981', '1.470 kg', 'N5B-701', 'Azul', 2, '1200', 81.100, 1, 'F132', 'TA02', 'MA14', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A133', 'Peugeot 505', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1982', '1.260 kg', 'N5C-702', 'Rojo', 4, '1300', 82.300, 1, 'F133', 'TA02', 'MA14', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A134', 'Peugeot 203', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1983', '1.175 kg', 'N5D-703', 'Amarillo', 2, '1400', 83.500, 1, 'F134', 'TA02', 'MA14', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A135', 'Peugeot 405', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1984', '1.580 kg', 'N5E-704', 'Verde', 4, '1500', 84.400, 1, 'F135', 'TA02', 'MA14', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A136', 'Peugeot J5', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1985', '1.675 kg', 'N5F-705', 'Azul', 2, '1600', 85.600, 1, 'F136', 'TA02', 'MA14', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A137', 'Peugeot 304', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1986', '1.730 kg', 'N5G-706', 'Negro', 4, '1700', 86.300, 1, 'F137', 'TA02', 'MA14', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A138', 'Peugeot 504', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1987', '1.830 kg', 'N5H-707', 'Marron', 2, '1800', 87.400, 1, 'F138', 'TA02', 'MA14', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A139', 'Peugeot 404', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1988', '1.490 kg', 'N5I-708', 'Azul', 4, '1900', 88.200, 1, 'F139', 'TA02', 'MA14', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A140', 'Peugeot 403', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1989', '1.920 kg', 'N5J-709', 'Rojo', 2, '1200', 89.500, 1, 'F140', 'TA02', 'MA14', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Lancia"
INSERT INTO tb_Auto VALUES('A141', 'Lancia 037', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.
', '1980', '1.375 kg', 'O6A-800', 'Negro', 4, '2100', 30.200, 1, 'F141', 'TA02', 'MA15', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A142', 'Lancia Beta', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.
', '1981', '1.470 kg', 'O6B-801', 'Azul', 2, '2200', 31.100, 1, 'F142', 'TA02', 'MA15', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A143', 'Lancia Beta Trevi', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.
', '1982', '1.260 kg', 'O6C-802', 'Rojo', 4, '2300', 32.300, 1, 'F143', 'TA02', 'MA15', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A144', 'Lancia Delta', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.
', '1983', '1.175 kg', 'O6D-803', 'Amarillo', 2, '2400', 33.500, 1, 'F144', 'TA02', 'MA15', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A145', 'Lancia Delta S4', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.
', '1984', '1.580 kg', 'O6E-804', 'Verde', 4, '2500', 34.400, 1, 'F145', 'TA02', 'MA15', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A146', 'Lancia Gamma', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.
', '1985', '1.675 kg', 'O6F-805', 'Azul', 2, '2600', 35.600, 1, 'F146', 'TA02', 'MA15', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A147', 'Lancia Montecarlo', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.
', '1986', '1.730 kg', 'O6G-806', 'Negro', 4, '2700', 36.300, 1, 'F147', 'TA02', 'MA15', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A148', 'Lancia Prisma', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.
', '1987', '1.830 kg', 'O6H-807', 'Marron', 2, '2800', 37.400, 1, 'F148', 'TA02', 'MA15', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A149', 'Lancia Thema', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.
', '1988', '1.490 kg', 'O6I-808', 'Azul', 4, '2900', 38.200, 1, 'F149', 'TA02', 'MA15', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A150', 'Lancia Y10', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.
', '1989', '1.920 kg', 'O6J-809', 'Rojo', 2, '2200', 39.500, 1, 'F150', 'TA02', 'MA15', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Austin Motor Company"
INSERT INTO tb_Auto VALUES('A151', 'Austin Allegro', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1980', '1.375 kg', 'P7A-900', 'Negro', 4, '3100', 40.200, 1, 'F151', 'TA02', 'MA16', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A152', 'Austin Ambassador', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1981', '1.470 kg', 'P7B-901', 'Azul', 2, '3200', 41.100, 1, 'F152', 'TA02', 'MA16', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A153', 'Austin Maestro', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1982', '1.260 kg', 'P7C-902', 'Rojo', 4, '3300', 42.300, 1, 'F153', 'TA02', 'MA16', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A154', 'Austin Maxi', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1983', '1.175 kg', 'P7D-903', 'Amarillo', 2, '3400', 43.500, 1, 'F154', 'TA02', 'MA16', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A155', 'Austin Montego', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1984', '1.580 kg', 'P7E-904', 'Verde', 4, '3500', 44.400, 1, 'F155', 'TA02', 'MA16', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A156', 'Austin Mini Moke', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1985', '1.675 kg', 'P7F-905', 'Azul', 2, '3600', 45.600, 1, 'F156', 'TA02', 'MA16', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A157', 'Austin Cambridge A60', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1986', '1.730 kg', 'P7G-906', 'Negro', 4, '3700', 46.300, 1, 'F157', 'TA02', 'MA16', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A158', 'Austin Mini Cooper', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1987', '1.830 kg', 'P7H-907', 'Marron', 2, '3800', 47.400, 1, 'F158', 'TA02', 'MA16', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A159', 'Austin 1300 GT', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1988', '1.490 kg', 'P7I-908', 'Azul', 4, '3900', 48.200, 1, 'F159', 'TA02', 'MA16', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A160', 'Austin Metro', 'AUTO BIEN CONSERVADO, AUTOMATICA, KM 64000, GASOLINA. Fabricación Estadounidense, Neumáticos 225/45, Potencia de 160 HP a 5,500 rpm. La Bateria tiene solo 1 mes de uso', '1989', '1.920 kg', 'P7J-909', 'Rojo', 2, '3200', 49.500, 1, 'F160', 'TA02', 'MA16', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Renault"
INSERT INTO tb_Auto VALUES('A161', 'Renault 4', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1980', '1.375 kg', 'Q8A-300', 'Negro', 4, '4100', 50.200, 1, 'F161', 'TA02', 'MA17', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A162', 'Renault 5', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1981', '1.470 kg', 'Q8B-301', 'Azul', 2, '4200', 51.100, 1, 'F162', 'TA02', 'MA17', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A163', 'Renault 5 Turbo', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1982', '1.260 kg', 'Q8C-302', 'Rojo', 4, '4300', 52.300, 1, 'F163', 'TA02', 'MA17', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A164', 'Renault 6', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1983', '1.175 kg', 'Q8D-303', 'Amarillo', 2, '4400', 53.500, 1, 'F164', 'TA02', 'MA17', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A165', 'Renault 7', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1984', '1.580 kg', 'Q8E-304', 'Verde', 4, '4500', 54.400, 1, 'F165', 'TA02', 'MA17', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A166', 'Renault 9/11', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1985', '1.675 kg', 'Q8F-305', 'Azul', 2, '4600', 55.600, 1, 'F166', 'TA02', 'MA17', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A167', 'Renault 12', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1986', '1.730 kg', 'Q8G-306', 'Negro', 4, '4700', 56.300, 1, 'F167', 'TA02', 'MA17', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A168', 'Renault 14', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1987', '1.830 kg', 'Q8H-307', 'Marron', 2, '4800', 57.400, 1, 'F168', 'TA02', 'MA17', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A169', 'Renault 25', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1988', '1.490 kg', 'Q8I-308', 'Azul', 4, '4900', 58.200, 1, 'F169', 'TA02', 'MA17', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A170', 'Renault Fuego', 'AUTO MANUAL DE FABRICACION ITALIANA, KM 45000, GASOLINA. CAMBIO MANUAL A 5 VELOCIDADES. Consumo mixto : 20.7 L/100 - sportivo : 23.6 L/100', '1989', '1.920 kg', 'Q8J-309', 'Rojo', 2, '4200', 59.500, 1, 'F170', 'TA02', 'MA17', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Citroën"
INSERT INTO tb_Auto VALUES('A171', 'Citroën', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1980', '1.375 kg', 'R9A-400', 'Negro', 4, '5100', 60.200, 1, 'F171', 'TA02', 'MA18', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A172', 'Citroën', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1981', '1.470 kg', 'R9B-401', 'Azul', 2, '5200', 61.100, 1, 'F172', 'TA02', 'MA18', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A173', 'Citroën', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1982', '1.260 kg', 'R9C-402', 'Rojo', 4, '5300', 62.300, 1, 'F173', 'TA02', 'MA18', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A174', 'Citroën', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1983', '1.175 kg', 'R9D-403', 'Amarillo', 2, '5400', 63.500, 1, 'F174', 'TA02', 'MA18', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A175', 'Citroën', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1984', '1.580 kg', 'R9E-404', 'Verde', 4, '5500', 64.400, 1, 'F175', 'TA02', 'MA18', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A176', 'Citroën', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1985', '1.675 kg', 'R9F-405', 'Azul', 2, '5600', 65.600, 1, 'F176', 'TA02', 'MA18', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A177', 'Citroën', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1986', '1.730 kg', 'R9G-406', 'Negro', 4, '5700', 66.300, 1, 'F177', 'TA02', 'MA18', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A178', 'Citroën', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1987', '1.830 kg', 'R9H-407', 'Marron', 2, '5800', 67.400, 1, 'F178', 'TA02', 'MA18', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A179', 'Citroën', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1988', '1.490 kg', 'R9I-408', 'Azul', 4, '5900', 68.200, 1, 'F179', 'TA02', 'MA18', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A180', 'Citroën', 'AUTO ECONOMICO MANUAL, KM 54000, 3 Puertas, 4 Cambios. Velocidad Maxima de 160 KM/H. Tipo de Carroceria Jeep', '1989', '1.920 kg', 'R9J-409', 'Rojo', 2, '5200', 69.500, 1, 'F180', 'TA02', 'MA18', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Simca"
INSERT INTO tb_Auto VALUES('A181', 'Simca 1100', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1980', '1.375 kg', 'S3A-500', 'Negro', 4, '6100', 70.200, 1, 'F181', 'TA02', 'MA19', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A182', 'Simca 1300/1500', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1981', '1.470 kg', 'S3B-501', 'Azul', 2, '6200', 71.100, 1, 'F182', 'TA02', 'MA19', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A183', 'Simca 1301/1501', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1982', '1.260 kg', 'S3C-502', 'Rojo', 4, '6300', 72.300, 1, 'F183', 'TA02', 'MA19', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A184', 'Simca 1307', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1983', '1.175 kg', 'S3D-503', 'Amarillo', 2, '6400', 73.500, 1, 'F184', 'TA02', 'MA19', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A185', 'Simca Talbot Horizon', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1984', '1.580 kg', 'S3E-504', 'Verde', 4, '6500', 74.400, 1, 'F185', 'TA02', 'MA19', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A186', 'Simca Aronde', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1985', '1.675 kg', 'S3F-505', 'Azul', 2, '6600', 75.600, 1, 'F186', 'TA02', 'MA19', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A187', 'Simca 8', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1986', '1.730 kg', 'S3G-506', 'Negro', 4, '6700', 76.300, 1, 'F187', 'TA02', 'MA19', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A188', 'Simca Matra Bagheera', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1987', '1.830 kg', 'S3H-507', 'Marron', 2, '6800', 77.400, 1, 'F188', 'TA02', 'MA19', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A189', 'Simca Matra Murena', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1988', '1.490 kg', 'S3I-508', 'Azul', 4, '6900', 78.200, 1, 'F189', 'TA02', 'MA19', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A190', 'Simca Rover', 'AUTO DEPORTIVO ICONICO DE SU FECHA. CV 385, GASOLINA. 2 PUERTAS. Aceleración de 0 a 100 km/h en 5,7 segundos', '1989', '1.920 kg', 'S3J-509', 'Rojo', 2, '6200', 79.500, 1, 'F190', 'TA02', 'MA19', 'C10', 'TT02', 'Comb02', 'k05');



-- Registros de Vehiculos "Volkswagen"
INSERT INTO tb_Auto VALUES('A191', 'Volkswagen Golf II', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1980', '1.375 kg', 'T4A-600', 'Negro', 4, '7100', 80.200, 1, 'F191', 'TA02', 'MA20', 'C01', 'TT01', 'Comb01', 'k01');
INSERT INTO tb_Auto VALUES('A192', 'Volkswagen Tipo 3', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1981', '1.470 kg', 'T4B-601', 'Azul', 2, '7200', 81.100, 1, 'F192', 'TA02', 'MA20', 'C02', 'TT02', 'Comb02', 'k02');
INSERT INTO tb_Auto VALUES('A193', 'Volkswagen Safari', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1982', '1.260 kg', 'T4C-602', 'Rojo', 4, '7300', 82.300, 1, 'F193', 'TA02', 'MA20', 'C03', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A194', 'Volkswagen Tipo 4', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1983', '1.175 kg', 'T4D-603', 'Amarillo', 2, '7400', 83.500, 1, 'F194', 'TA02', 'MA20', 'C04', 'TT02', 'Comb02', 'k04');
INSERT INTO tb_Auto VALUES('A195', 'Volkswagen K70', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1984', '1.580 kg', 'T4E-604', 'Verde', 4, '7500', 84.400, 1, 'F195', 'TA02', 'MA20', 'C05', 'TT01', 'Comb01', 'k05');
INSERT INTO tb_Auto VALUES('A196', 'Volkswagen Corrado', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1985', '1.675 kg', 'T4F-605', 'Azul', 2, '7600', 85.600, 1, 'F196', 'TA02', 'MA20', 'C06', 'TT02', 'Comb02', 'k06');
INSERT INTO tb_Auto VALUES('A197', 'Volkswagen Tipo 1', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1986', '1.730 kg', 'T4G-606', 'Negro', 4, '7700', 86.300, 1, 'F197', 'TA02', 'MA20', 'C07', 'TT01', 'Comb01', 'k07');
INSERT INTO tb_Auto VALUES('A198', 'Volkswagen Scirocco', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1987', '1.830 kg', 'T4H-607', 'Marron', 2, '7800', 87.400, 1, 'F198', 'TA02', 'MA20', 'C08', 'TT02', 'Comb02', 'k08');
INSERT INTO tb_Auto VALUES('A199', 'Volkswagen Schwimmwagen', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1988', '1.490 kg', 'T4I-608', 'Azul', 4, '7900', 88.200, 1, 'F199', 'TA02', 'MA20', 'C09', 'TT01', 'Comb01', 'k03');
INSERT INTO tb_Auto VALUES('A200', 'Volkswagen Karmann Ghia', 'AUTO DE MARCA RECONOCIDA. 3 PUERTAS. 5 Asientos. AUTOMATICA. GASOLINA. ORIGEN Estadounidense.Tipo de motor: Inline, 4 cyl.', '1989', '1.920 kg', 'T4J-609', 'Rojo', 2, '7200', 89.500, 1, 'F200', 'TA02', 'MA20', 'C10', 'TT02', 'Comb02', 'k05');




/*Tabla Cliente*/
CREATE TABLE tb_Cliente
(
codigo_Cliente int auto_increment PRIMARY KEY,
nrodocumento_Cliente char(8) not null,
nombres_Cliente varchar(100) not null,
apellidos_Cliente varchar(100) not null,
fechaNacimiento_Cliente date not null,
correo_Cliente varchar(100) not null,
contrasena_Cliente varchar(20) not null,
telefono_Cliente int not null,

codigo_Auto1 char(4) not null
);

ALTER TABLE tb_Cliente
ADD FOREIGN KEY(codigo_Auto1) REFERENCES tb_Auto(codigo_Auto);

SELECT * FROM tb_Cliente;




/*Tabla CotizarAuto - campo sumaAseguradoraDolar_CotizarAuto va ser minimo $5000*/
CREATE TABLE tb_CotizarAuto
(
codigo_CotizarAuto int auto_increment PRIMARY KEY,
nrodocumento_CotizarAuto char(8) not null,
nombres_CotizarAuto varchar(100) not null,
apellidos_CotizarAuto varchar(100) not null,
correo_CotizarAuto varchar(100) not null,
sumaAseguradoraDolar_CotizarAuto double not null,
telefono_CotizarAuto int not null,

codigo_MarcaAuto2 char(4) not null,
codigo_Auto2 char(4) not null
);


ALTER TABLE tb_CotizarAuto
ADD FOREIGN KEY(codigo_MarcaAuto2) REFERENCES tb_MarcaAuto(codigo_MarcaAuto);

ALTER TABLE tb_CotizarAuto
ADD FOREIGN KEY(codigo_Auto2) REFERENCES tb_Auto(codigo_Auto);

SELECT * FROM tb_CotizarAuto;





/*Tabla Eventos*/
CREATE TABLE tb_Eventos
(
codigo_Eventos char(4) not null,
titulo_Eventos char(200),
fecha_Eventos date,
codigo_foto char(4),
codigo_Auto3 char(4) not null,

foreign key (codigo_foto) references tb_foto(codigo)
);


ALTER TABLE tb_Eventos
ADD PRIMARY KEY(codigo_Eventos);

ALTER TABLE tb_Eventos
ADD FOREIGN KEY(codigo_Auto3) REFERENCES tb_Auto(codigo_Auto);

SELECT * FROM tb_Eventos;


INSERT INTO tb_Eventos VALUES('EV01', 'CONOCE LA ANTIGUA GENERACION DEL AUTO DODGE DART', '2020/11/15', 'F001', 'A001');
INSERT INTO tb_Eventos VALUES('EV02', 'CONOCE LA ANTIGUA GENERACION DEL AUTO LAMBORGHINI URRACO', '2020/11/20', 'F011', 'A011');
INSERT INTO tb_Eventos VALUES('EV03', 'CONOCE LA ANTIGUA GENERACION DEL AUTO PORSCHE 911(CLÁSICO)', '2020/12/15', 'F031', 'A031');





/*Tabla UsuarioEvento*/
CREATE TABLE tb_UsuarioEvento
(
codigo_UsuarioEvento int auto_increment PRIMARY KEY,
nrodocumento_UsuarioEvento char(8) not null,
nombres_UsuarioEvento varchar(100) not null,
apellidos_UsuarioEvento varchar(100) not null,
fechaNacimiento_UsuarioEvento date not null,
correo_UsuarioEvento varchar(100) not null,

codigo_Eventos1 char(4) not null
);

ALTER TABLE tb_UsuarioEvento
ADD FOREIGN KEY(codigo_Eventos1) REFERENCES tb_Eventos(codigo_Eventos);

SELECT * FROM tb_UsuarioEvento;





/*Tabla Factura*/
CREATE TABLE tb_Factura
(
nro_Factura int auto_increment PRIMARY KEY,
fecha_Factura date not null,
codigo_Cliente1 int
);

SELECT * FROM tb_Factura;

ALTER TABLE tb_Factura
ADD FOREIGN KEY(codigo_Cliente1) REFERENCES tb_Cliente(codigo_Cliente);




/*Tabla DetalleClienteAutoFactura*/
CREATE TABLE tb_DetalleAutoFactura
(
codigo_Auto4 char(4) not null,
nro_Factura1 int,
precioVenta_DetalleAutoFactura double
);


ALTER TABLE tb_DetalleAutoFactura
ADD PRIMARY KEY(codigo_Auto4, nro_Factura1);


ALTER TABLE tb_DetalleAutoFactura
ADD FOREIGN KEY(codigo_Auto4) REFERENCES tb_Auto(codigo_Auto);


ALTER TABLE tb_DetalleAutoFactura
ADD FOREIGN KEY(nro_Factura1) REFERENCES tb_Factura(nro_Factura);


/*Tabla TipoAuto*/
DELIMITER $
CREATE PROCEDURE SPAL_Listar_TipoAuto()
BEGIN
	SELECT codigo_TipoAuto, nombre_TipoAuto
    FROM tb_TipoAuto;
END $
/*---------------------------------------------------------------*/


/*Tabla MarcaAuto*/
DELIMITER $
CREATE PROCEDURE SPAL_Listar_MarcaAuto()
BEGIN
	SELECT codigo_MarcaAuto, nombre_MarcaAuto
    FROM tb_MarcaAuto;
END $

/*---------------------------------------------------------------*/


/*Tabla Carroceria*/
DELIMITER $
CREATE PROCEDURE SPAL_Listar_Carroceria()
BEGIN
	SELECT codigo_Carroceria, nombre_Carroceria
    FROM tb_Carroceria;
END $

/*---------------------------------------------------------------*/


/*Tabla TipoTransmision*/
DELIMITER $
CREATE PROCEDURE SPAL_Listar_TipoTransmision()
BEGIN
	SELECT codigo_TipoTransmision, nombre_TipoTransmision
    FROM tb_TipoTransmision;
END $
/*---------------------------------------------------------------*/

/*Tabla Combustible*/
DELIMITER $
CREATE PROCEDURE SPAL_Listar_Combustible()
BEGIN
	SELECT codigo_Combustible, nombre_Combustible
    FROM tb_Combustible;
END $
/*---------------------------------------------------------------*/


/*Tabla Kilometraje*/
DELIMITER $
CREATE PROCEDURE SPAL_Listar_Kilometraje()
BEGIN
	SELECT codigo_Kilometraje, nombre_Kilometraje
    FROM tb_Kilometraje;
END $
/*---------------------------------------------------------------*/

/*Tabla Fotos*/
DELIMITER $
CREATE PROCEDURE SPAL_Listar_Foto()
BEGIN
	SELECT codigo, descripcion
    FROM tb_foto;
END $
/*---------------------------------------------------------------*/

/*Tabla DetalleFotos*/
DELIMITER $
CREATE PROCEDURE SPAL_Listar_DetallexFoto(cod char(4))
BEGIN
	SELECT F.codigo, F.descripcion, DF.codigo, DF.url
    FROM tb_detalle_foto DF
    INNER JOIN tb_foto F ON DF.codigo_foto = F.codigo
    WHERE codigo_foto = cod;
END $
/*---------------------------------------------------------------*/

DELIMITER $
CREATE PROCEDURE SPAL_ListarAutos()
BEGIN
	SELECT codigo_Auto, 
			modelo_Auto, 
			descripcion_Auto, 
            año_Auto, 
            peso_Auto, 
            placa_Auto, 
            color_Auto, 
            puertas_Auto, 
			cilindrada_Auto, 
            precio_Auto, 
            estado_Auto, 
            F.descripcion, 
            TA.codigo_TipoAuto,
            TA.nombre_TipoAuto,
            MA.codigo_MarcaAuto, 
            MA.nombre_MarcaAuto,
            C.codigo_Carroceria,
            C.nombre_Carroceria,
            TT.codigo_TipoTransmision, 
			TT.nombre_TipoTransmision,
            CB.codigo_Combustible,
            CB.nombre_Combustible, 
            K.codigo_Kilometraje,
            K.nombre_Kilometraje
    FROM tb_Auto A
		INNER JOIN tb_TipoAuto TA 
				ON A.codigo_TipoAuto1 = TA.codigo_TipoAuto
			INNER JOIN tb_MarcaAuto MA 
					ON A.codigo_MarcaAuto1 = MA.codigo_MarcaAuto
				INNER JOIN tb_Carroceria C 
						ON A.codigo_Carroceria1 = C.codigo_Carroceria
					INNER JOIN tb_TipoTransmision TT 
							ON A.codigo_TipoTransmision1 = TT.codigo_TipoTransmision
						INNER JOIN tb_Combustible CB 
								ON A.codigo_Combustible1 = CB.codigo_Combustible
							INNER JOIN tb_Kilometraje K 
									ON A.codigo_Kilometraje1 = K.codigo_Kilometraje
								INNER JOIN tb_foto F 
										ON A.foto_Auto = F.codigo;
END $


DELIMITER $
CREATE PROCEDURE SPAL_ListarAutoxCodigo(codigo char(4))
BEGIN
	SELECT codigo_Auto, modelo_Auto, descripcion_Auto, año_Auto, peso_Auto, placa_Auto, color_Auto, puertas_Auto, 
    cilindrada_Auto, precio_Auto, estado_Auto, foto_Auto, codigo_TipoAuto1, codigo_MarcaAuto1, codigo_Carroceria1,
	codigo_TipoTransmision1, codigo_Combustible1, codigo_Kilometraje1
    FROM tb_Auto
    WHERE codigo_Auto = codigo;
END $



DELIMITER $
CREATE PROCEDURE SPAL_ListarAutosxCodigo(codigo char(4))
BEGIN
	SELECT codigo_Auto, modelo_Auto, descripcion_Auto, año_Auto, peso_Auto, placa_Auto, color_Auto, puertas_Auto, 
    cilindrada_Auto, precio_Auto, estado_Auto, F.descripcion, TA.nombre_TipoAuto, MA.nombre_MarcaAuto, C.nombre_Carroceria,
	TT.nombre_TipoTransmision, CB.nombre_Combustible, K.nombre_Kilometraje
    FROM tb_Auto A
    INNER JOIN tb_TipoAuto TA ON A.codigo_TipoAuto1 = TA.codigo_TipoAuto
    INNER JOIN tb_MarcaAuto MA ON A.codigo_MarcaAuto1 = MA.codigo_MarcaAuto
    INNER JOIN tb_Carroceria C ON A.codigo_Carroceria1 = C.codigo_Carroceria
    INNER JOIN tb_TipoTransmision TT ON A.codigo_TipoTransmision1 = TT.codigo_TipoTransmision
    INNER JOIN tb_Combustible CB ON A.codigo_Combustible1 = CB.codigo_Combustible
    INNER JOIN tb_Kilometraje K ON A.codigo_Kilometraje1 = K.codigo_Kilometraje
    INNER JOIN tb_foto F ON A.foto_Auto = F.codigo
    WHERE codigo_Auto = codigo;
END $



DELIMITER $
CREATE PROCEDURE SPAL_RegistrarAuto(modelo varchar(500), descripcion varchar(10000), año char(4),
peso char(8), placa char(7), color varchar(20), puertas int, cilindrada char(4), precio double,
estado boolean, foto char(4), TipoAuto char(4), MarcaAuto char(4), Carroceria char(3),
TipoTransmision char(4), Combustible char(6), Kilometraje char(3))
BEGIN
	SET @CODIGO = CONCAT("A", (SELECT COUNT(*) + 1 FROM tb_Auto));
    
	INSERT INTO tb_Auto VALUES (@CODIGO, modelo, descripcion, año, peso, placa, color, puertas, cilindrada, precio,
	estado, foto, TipoAuto, MarcaAuto, Carroceria, TipoTransmision, Combustible, Kilometraje);
END $



DELIMITER $
CREATE PROCEDURE SPAL_ActualizarAuto(codigo char(4), modelo varchar(500), descripcion varchar(10000), año char(4),
peso char(8), placa char(7), color varchar(20), puertas int, cilindrada char(4), precio double,
estado boolean, foto char(4), TipoAuto char(4), MarcaAuto char(4), Carroceria char(3),
TipoTransmision char(4), Combustible char(6), Kilometraje char(3))
BEGIN
	UPDATE tb_Auto SET 
    modelo_Auto=modelo,
	descripcion_Auto=descripcion,
	año_Auto=año,
	peso_Auto=peso,
	placa_Auto=placa,
	color_Auto=color,
	puertas_Auto =puertas,
	cilindrada_Auto=cilindrada,
	precio_Auto=precio,
	estado_Auto=estado,
	foto_Auto=foto,
	codigo_TipoAuto1=TipoAuto,
	codigo_MarcaAuto1=MarcaAuto,
	codigo_Carroceria1=Carroceria,
	codigo_TipoTransmision1=TipoTransmision,
	codigo_Combustible1=Combustible,
	codigo_Kilometraje1=Kilometraje
    WHERE codigo_Auto = codigo;
END $



DELIMITER $
CREATE PROCEDURE SPAL_EliminarAuto(codigo char(4))
BEGIN
	DELETE FROM tb_Auto WHERE codigo_Auto = codigo;
END $
/*---------------------------------------------------------------*/


/*Tabla Cliente*/
DELIMITER $
CREATE PROCEDURE SPAL_ListarCliente()
BEGIN
	SELECT codigo_Cliente, nrodocumento_Cliente, nombres_Cliente, apellidos_Cliente, fechaNacimiento_Cliente,
	correo_Cliente, contrasena_Cliente, telefono_Cliente, codigo_Auto1
    FROM tb_Cliente;
END $



DELIMITER $
CREATE PROCEDURE SPAL_ListarClientexCodigo(codigo int)
BEGIN
	SELECT codigo_Cliente, nrodocumento_Cliente, nombres_Cliente, apellidos_Cliente, fechaNacimiento_Cliente,
	correo_Cliente, contrasena_Cliente, telefono_Cliente, codigo_Auto1
    FROM tb_Cliente
    WHERE codigo_Cliente = codigo;
END $



DELIMITER $
CREATE PROCEDURE SPAL_ListarClientes()
BEGIN
	SELECT codigo_Cliente, nrodocumento_Cliente, nombres_Cliente, apellidos_Cliente, fechaNacimiento_Cliente,
	correo_Cliente, contrasena_Cliente, telefono_Cliente, modelo_Auto
    FROM tb_Cliente C
    INNER JOIN tb_Auto A ON C.codigo_Auto1 = A.codigo_Auto;
END $



DELIMITER $
CREATE PROCEDURE SPAL_ListarClientesxCodigo(codigo int)
BEGIN
	SELECT codigo_Cliente, nrodocumento_Cliente, nombres_Cliente, apellidos_Cliente, fechaNacimiento_Cliente,
	correo_Cliente, contrasena_Cliente, telefono_Cliente, modelo_Auto
    FROM tb_Cliente C
    INNER JOIN tb_Auto A ON C.codigo_Auto1 = A.codigo_Auto
    WHERE codigo_Cliente = codigo;
END $



DELIMITER $
CREATE PROCEDURE SPAL_RegistrarCliente(nrodocumento char(8), nombres varchar(100), apellidos varchar(100),
fechaNacimiento date, correo varchar(100), contrasena varchar(20), telefono int, Auto char(4))
BEGIN    
	INSERT INTO tb_Cliente VALUES (null, nrodocumento, nombres, apellidos, fechaNacimiento, correo,
    contrasena, telefono, Auto);
END $



DELIMITER $
CREATE PROCEDURE SPAL_ActualizarCliente(codigo int, nrodocumento char(8), nombres varchar(100), apellidos varchar(100),
fechaNacimiento date, correo varchar(100), contrasena varchar(20), telefono int, Auto char(4))
BEGIN
	UPDATE tb_Cliente SET 
    nrodocumento_Cliente=nrodocumento,
	nombres_Cliente=nombres,
	apellidos_Cliente=apellidos,
	fechaNacimiento_Cliente=fechaNacimiento,
	correo_Cliente=correo,
	contrasena_Cliente=contrasena,
	telefono_Cliente=telefono,
	codigo_Auto1=Auto
    WHERE codigo_Cliente = codigo;
END $



DELIMITER $
CREATE PROCEDURE SPAL_EliminarCliente(codigo int)
BEGIN
	DELETE FROM tb_Cliente WHERE codigo_Cliente = codigo;
END $
/*---------------------------------------------------------------*/


/*Tabla Eventos*/
DELIMITER $
CREATE PROCEDURE SPAL_RegistrarEventos(codigo char(4),
titulo char(200),
fecha date,
foto longblob,
codigo_auto char(4))
BEGIN
	SET @CODIGO = CONCAT("EV", (SELECT COUNT(*) + 1 FROM tb_Eventos));
    
	INSERT INTO tb_Eventos VALUES (@CODIGO, titulo, fecha, foto, codigo_auto);
END $


DELIMITER $
CREATE PROCEDURE SPAL_ActualizarEventos(codigo char(4),
titulo_Eventos char(200),
fecha_Eventos date,
foto_Eventos longblob,
codigo_auto char(4))
BEGIN
	UPDATE tb_Eventos SET 
    codigo_Eventos=codigo,
	titulo_Eventos=titulo,
    fecha_Eventos=foto,
    codigo_Auto3=codigo_auto
	WHERE codigo_Eventos = codigo;
    END $
    
    
DELIMITER $  
CREATE PROCEDURE SPAL_EliminarEventos(codigo int)
BEGIN
DELETE FROM tb_Eventos WHERE codigo_Eventos = codigo;
END $

DELIMITER $  
CREATE PROCEDURE SPAL_Listar_Evento()
BEGIN
	select *
    from tb_Eventos;
END $


DELIMITER $  
CREATE PROCEDURE SPAL_Listar_EventosxCodigo(codigo char(4))
BEGIN
	select *
    from tb_CotizarAuto 
    where codigo_Auto2=codigo;
END $



DELIMITER $  
CREATE PROCEDURE SPAL_Listar_EventoxCodigo(codigo char(4) )
BEGIN
	select *
    from tb_Eventos
    where codigo=codigo_Eventos;
END $
/*---------------------------------------------------------------*/



/*Tabla  CotizarAuto*/

DELIMITER $  
CREATE PROCEDURE SPAL_Listar_CotizarAuto()
BEGIN
	select *
    from tb_CotizarAuto;
END $


DELIMITER $  
CREATE PROCEDURE SPAL_Listar_CotizarAutoxMarca(codigo char(4))
BEGIN
	select *
    from tb_CotizarAuto 
    where codigo_MarcaAuto2=codigo;
END $



DELIMITER $
CREATE PROCEDURE SPAL_RegistrarCotizarAuto(codigo int,
nrodocumento char(8),
nombres varchar(100),
apellidos varchar(100),
correo varchar(100),
sumaAseguradoraDolar double,
telefono int,
codigo_auto char(4),
codigo_MarcaAuto char(4))
BEGIN
    INSERT INTO tb_CotizarAuto VALUES (codigo, nrodocumento, nombres, apellidos, correo,sumaAseguradoraDolar,telefono,codigo_auto,codigo_MarcaAuto);
END $
/*---------------------------------------------------------------*/



/*Tabla  UsuarioEventos*/

DELIMITER $  
CREATE PROCEDURE SPAL_Listar_UsuarioEvento()
BEGIN
	select *
    from tb_UsuarioEvento;
END $


DELIMITER $  
CREATE PROCEDURE SPAL_Listar_Usuario_EventosxCodigo(codigo int)
BEGIN
	select *
    from tb_UsuarioEvento 
    where codigo_UsuarioEvento=codigo;
END $



DELIMITER $
CREATE PROCEDURE SPAL_RegistrarUsuarioEvento(codigo int,
nrodocumento char(8),
nombres varchar(100),
apellidos varchar(100),
fechaNacimiento DATE,
correo varchar(100),
codigo_Eventos char(4))
BEGIN
	INSERT INTO tb_UsuarioEvento VALUES (codigo, nrodocumento, nombres, apellidos, fechaNacimiento,correo,codigo_Eventos);
END $


DELIMITER $
CREATE PROCEDURE SPAL_ActualizarUsuarioEvento(codigo int,
nrodocumento char(8),
nombres varchar(100),
apellidos varchar(100),
fechaNacimiento DATE,
correo varchar(100),
codigo_Eventos char(4))
BEGIN
	UPDATE tb_UsuarioEvento SET
	nrodocumento_CotizarAuto=nrodocumento,
	nombres_CotizarAuto=nombres,
	apellidos_CotizarAuto=apellidos,
	fechaNacimiento_UsuarioEvento=fechaNacimiento,    
	correo_CotizarAuto=correo,
    codigo_Eventos=codigo_Eventos1
    WHERE codigo_UsuarioEvento = codigo;
END $

DELIMITER $  
CREATE PROCEDURE SPAL_EliminarUsuarioEvento(codigo int)
BEGIN
DELETE FROM tb_UsuarioEvento WHERE codigo_UsuarioEvento = codigo;
END $

DELIMITER $  
CREATE PROCEDURE SPAL_ListarUsuarioEvento()
BEGIN
     SELECT *
     FROM tb_UsuarioEvento;
END $

DELIMITER $  
CREATE PROCEDURE SPAL_ListarUsuarioEventoXCodEvento( cod char(4))
BEGIN
     SELECT *
     FROM tb_UsuarioEvento
     where cod=codigo_Eventos1;
END $


/*---------------------------------------------------------------*/









DELIMITER $  
CREATE PROCEDURE SPAL_Listar_DetalleClienteAutoxCodigo(codigo char(4))
BEGIN
	select *
    from tb_DetalleClienteAutoFactura 
    where codigo_Auto4=codigo;
END $

