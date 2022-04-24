use proyecto;


CREATE TABLE Modelos
(
	Id_modelo INTEGER PRIMARY KEY NOT NULL,
    estilo VARCHAR(25)
);

CREATE TABLE Vehiculos
( 
	Id Integer primary key not null,
	VIN TEXT not null,
	Id_modelo INTEGER NOT NULL,
    FOREIGN KEY(Id_modelo) REFERENCES Modelos(Id_modelo)
);

CREATE TABLE Marcas
(
	Id_marca INTEGER PRIMARY KEY NOT NULL,
    nombre VARCHAR(25) NOT NULL
    #sucursal no entiendo que es
);

CREATE TABLE Piezas
(
	Id_pieza INTEGER PRIMARY KEY NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    tipo TEXT
);

CREATE TABLE Direccion
(
	Id_direccion INTEGER PRIMARY KEY NOT NULL,
    Ciudad VARCHAR(25)
);

CREATE TABLE Opciones
(
	Id_opc INTEGER PRIMARY KEY NOT NULL,
    color VARCHAR(25),
    motor VARCHAR(25),
    transmision VARCHAR(25)
);

CREATE TABLE Compania
(
	Id_compania INTEGER PRIMARY KEY NOT NULL,
	ingresos_anuales FLOAT NOT NULL
);

CREATE TABLE Persona_natural
(
	Id_pn INTEGER PRIMARY KEY NOT NULL,
	ingresos FLOAT NOT NULL,
    sexo VARCHAR(10) NOT NULL
);

CREATE TABLE Tipo_Cliente
(
	Id_tipoCliente INTEGER PRIMARY KEY NOT NULL,
	Id_persona INTEGER,
    Id_compania INTEGER,
    FOREIGN KEY(Id_persona) REFERENCES Persona_natural(Id_pn),
    FOREIGN KEY(Id_compania) REFERENCES Compania(Id_compania)
);

CREATE TABLE Clientes
(
	Id_cliente INTEGER PRIMARY KEY NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    telefono BIGINT NOT NULL,
    Id_direccion INTEGER NOT NULL,
    Id_tipoCliente INTEGER NOT NULL,
    FOREIGN KEY(Id_direccion) REFERENCES Direccion(Id_Direccion),
    FOREIGN KEY(Id_tipoCliente) REFERENCES Tipo_Cliente(Id_tipoCliente)
);


CREATE TABLE Proveedores
(
	Id_proveedores INTEGER PRIMARY KEY NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    telefono BIGINT NOT NULL,
    Id_pieza INTEGER NOT NULL,
    Id_Direccion INTEGER NOT NULL,
    constraint FK_piezas FOREIGN KEY(Id_pieza) REFERENCES Piezas(Id_pieza),
    FOREIGN KEY(Id_Direccion) REFERENCES Direccion(Id_direccion)
);

SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE Plantas
(
	Id_planta INTEGER PRIMARY KEY NOT NULL,
    Id_Direccion INTEGER NOT NULL,
    Id_Proveedores INTEGER NOT NULL,
    FOREIGN KEY(Id_Direccion) REFERENCES Direccion(Id_direccion),
    FOREIGN KEY(Id_Proveedores) REFERENCES Proveedores(Id_proveedores)
);

CREATE TABLE Concesionarios
(
	Id_Conc INTEGER PRIMARY KEY NOT NULL,
    Id_venta INTEGER NOT NULL,
    fecha_venta DATE NOT NULL,
    Id_Compra INTEGER NOT NULL,
    Id_Vehiculo INTEGER NOT NULL,
    FOREIGN KEY(Id_Vehiculo) REFERENCES Vehiculos(Id),
    Id_Marca INTEGER NOT NULL,
    FOREIGN KEY(Id_Marca) REFERENCES Marcas(Id_marca),
    Id_Opciones INTEGER NOT NULL,
    FOREIGN KEY(Id_Opciones) REFERENCES Opciones(Id_opc),
    Id_Cliente INTEGER NOT NULL,
    FOREIGN KEY(Id_Cliente) REFERENCES Clientes(Id_cliente),
    Id_Planta INTEGER NOT NULL,
    FOREIGN KEY(Id_Planta) REFERENCES Plantas(Id_planta)
);

Drop table Concesionarios;
drop table Plantas;
drop table Proveedores;
drop table Compañia;

select * from Vehiculos;



INSERTS
1-- Table Modelos

INSERT INTO Modelos(Id_modelo,estilo) VALUES('101','Micro');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('102','Sedan');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('103','Hatchback');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('104','Universal');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('105','Coupe');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('106','Cabriolet');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('107','Roadster');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('108','Targa');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('109','Limousine');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('110','Sport car');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('111','Super car');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('112','SUV');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('113','Crossover');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('114','Pickup');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('115','Van');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('116','Minivan');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('117','Minibus');
INSERT INTO Modelos(Id_modelo,estilo) VALUES('118','Muscle car');

2-- Table Vehiculos

INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(1,'1HGCB7248NA019723','102');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(2,'JTHHX8BHXB1000180','118');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(3,'ZFFXR48A1W0111885','111');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(4,'WBAAN37451NE55446','110');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(5,'1G6DK8ED0B0113832','107');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(6,'SCFHDDA15CGF03139','111');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(7,'WMWSU3C56CP368634','101');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(8,'3VWDZ2AJ1BM064832','115');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(9,'JS1GN72A4R2104033','102');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(10,'4T1BF22K814128896','103');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(11,'JN1PB11S0E5760019','113');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(12,'JT4RN93S0K5007739','114');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(13,'1YVGE22C7S5404786','104');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(14,'WA1LGCFE0D0013747','106');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(15,'ZFF67NHE3B0176158','111');
INSERT INTO Vehiculos(Id,VIN,Id_modelo) VALUES(16,'JHMEJ665XWS803967','102');

Select * from Vehiculos;

3-- Table Marcas

INSERT INTO Marcas(Id_marca,nombre) VALUES('1','Honda');
INSERT INTO Marcas(Id_marca,nombre) VALUES('2','Audi');
INSERT INTO Marcas(Id_marca,nombre) VALUES('3','Nissan');
INSERT INTO Marcas(Id_marca,nombre) VALUES('4','Ferrari');
INSERT INTO Marcas(Id_marca,nombre) VALUES('5','Toyota');
INSERT INTO Marcas(Id_marca,nombre) VALUES('6','Tesla');
INSERT INTO Marcas(Id_marca,nombre) VALUES('7','Acura');
INSERT INTO Marcas(Id_marca,nombre) VALUES('8','Ford');
INSERT INTO Marcas(Id_marca,nombre) VALUES('9','BMW');
INSERT INTO Marcas(Id_marca,nombre) VALUES('10','Lotus');
INSERT INTO Marcas(Id_marca,nombre) VALUES('11','Mitsubishi');
INSERT INTO Marcas(Id_marca,nombre) VALUES('12','Jeep');
INSERT INTO Marcas(Id_marca,nombre) VALUES('13','Volkswagen');
INSERT INTO Marcas(Id_marca,nombre) VALUES('14','Mazda');
INSERT INTO Marcas(Id_marca,nombre) VALUES('15','Volvo');
INSERT INTO Marcas(Id_marca,nombre) VALUES('16','Suzuki');
INSERT INTO Marcas(Id_marca,nombre) VALUES('17','Porsche');
INSERT INTO Marcas(Id_marca,nombre) VALUES('18','Chevrolet');
INSERT INTO Marcas(Id_marca,nombre) VALUES('19','Lamborghini');
INSERT INTO Marcas(Id_marca,nombre) VALUES('20','Subaru');
INSERT INTO Marcas(Id_marca,nombre) VALUES('21','KIA');
INSERT INTO Marcas(Id_marca,nombre) VALUES('22','HUMMER');

4--Table Piezas

INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10001','Valvula de escape','Motor');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10002','Retenedores de resrote','Motor');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10003','Resortes de valvula','Motor');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10004','Guardian de Valvula','Motor');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10005','Cadena de distribucion','Motor');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10006','Piston','Motor');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10007','Biela','Motor');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10008','Cigueñal','Motor');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10009','Arandela de empuje','Motor');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10010','Bomba de aceite','Motor');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10011','Empaquetadura','Motor');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10012','Switch de ignicion','Transmision');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10013','Controlador de bloqueo','Transmision');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10014','Cambiar','Transmision');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10015','Cilindro maestro','Frenos');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10016','Muelle helicoidal','Suspension');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10017','Bateria','Electrico');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10018','Alternador','Electrico');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10019','Interruptores','Electrico');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10020','Luces traseras','Electrico');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10021','Luces delanteras','Electrico');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10022','Limpiaparabrisas','Electrico');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10023','Bocina','Electrico');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10024','MCE','Encendido');
INSERT INTO Piezas (Id_pieza,nombre,tipo) VALUES('10025','Bobina','Encendido');

select * from Piezas;
5--Table Direccion

INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('123001','Tegucigalpa');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('123002','San Pedro Sula');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('123003','La Ceiba');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('123004','Comayagua');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('123005','Choluteca');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('123006','Puerto Cortes');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('123007','El Progreso');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('123008','Choloma');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('123009','Tela');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('1230010','Juticalpa');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('1230011','Nacaome');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('1230012','Danli');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('1230013','Yoro');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('1230014','Catacamas');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('1230015','Ocotepeque');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('1230016','La Lima');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('1230017','Trujillo');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('1230018','Tocoa');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('1230019','Roatan');
INSERT INTO Direccion (Id_direccion,Ciudad) VALUES('1230020','Yuscaran');

6--Table Opciones

INSERT INTO Opciones (Id_opc,color,motor,transmision) VALUES('10101','Azul','Gasolina','Manual');
INSERT INTO Opciones (Id_opc,color,motor,transmision) VALUES('10102','Verde','Diesel','Manual');
INSERT INTO Opciones (Id_opc,color,motor,transmision) VALUES('10103','Amarillo','Gasolina','Manual');
INSERT INTO Opciones (Id_opc,color,motor,transmision) VALUES('10104','Rojo','Diesel','Manual');
INSERT INTO Opciones (Id_opc,color,motor,transmision) VALUES('10105','Gris','Electrico','Automatico');
INSERT INTO Opciones (Id_opc,color,motor,transmision) VALUES('10106','Gris','Electrico','Automatico');
INSERT INTO Opciones (Id_opc,color,motor,transmision) VALUES('10107','Negro','Gasolina','Automatico');
INSERT INTO Opciones (Id_opc,color,motor,transmision) VALUES('10108','Blanco','Diesel','Automatico');
INSERT INTO Opciones (Id_opc,color,motor,transmision) VALUES('10109','Azul','Gasolina','Manual');
INSERT INTO Opciones (Id_opc,color,motor,transmision) VALUES('101010','Negro','Electrico','Manual');
INSERT INTO Opciones (Id_opc,color,motor,transmision) VALUES('101011','Rojo','Gasolina','Manual');

7--Table Compañia

INSERT INTO Compania (Id_compania, ingresos_anuales) VALUES('101010101','24000000');
INSERT INTO Compania (Id_compania, ingresos_anuales) VALUES('101010102','75000000');
INSERT INTO Compania (Id_compania, ingresos_anuales) VALUES('101010103','10000000');
INSERT INTO Compania (Id_compania, ingresos_anuales) VALUES('101010104','4000000');
INSERT INTO Compania (Id_compania, ingresos_anuales) VALUES('101010105','16000000');


8--Table Persona_natural

INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219901001','30000','Masculino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219951002','26000','Femenino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219921003','28000','Masculino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219931004','30000','Masculino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219961005','32000','Masculino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219971006','32000','Masculino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219981007','26000','Masculino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219911008','23000','Masculino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219921009','22000','Masculino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219941001','22000','Masculino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219971001','32000','Femenino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219981001','32000','Femenino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219991001','30000','Femenino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219921001','20000','Femenino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219931001','20000','Femenino');
INSERT INTO Persona_natural (Id_pn,ingresos,sexo) VALUES('1219911001','20000','Femenino');

select * from Persona_natural;

9--Table Tipo_Cliente

INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('1001','1219901001','101010101');
INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('1002','1219951002','101010102');
INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('1003','1219921003','101010103');
INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('1004','1219931004','101010104');
INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('1005','1219961005','101010105');
INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('1006','1219971006','101010101');
INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('1007','1219981007','101010102');
INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('1008','1219911008','101010103');
INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('1009','1219921009','101010104');
INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('10010','1219941001','101010105');

INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('10011','1219971001','101010101');
INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('10012','1219981001','101010102');
INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('10013','1219991001','101010103');
INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('10014','1219921001','101010104');
INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('10015','1219931001','101010105');
INSERT INTO Tipo_Cliente (Id_tipoCliente,Id_persona,Id_compania) VALUES('10016','1219911001','101010101');


select * from Tipo_Cliente;
10--Table Clientes

INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('1001001','Adriana Galiano','95974612','123001','1001');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('1001002','Felix Ferreiro','95974612','123001','1001');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('1001003','Ionut Mejias','95974613','123002','1002');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('1001004','Candido Gallego','95974615','123003','1003');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('1001005','Macarena Aguado','95974662','123001','1004');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('1001006','Sara Planas','95974679','123002','1005');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('1001007','Josefa Giner','95974663','123001','1006');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('1001008','Oscar Segura','95975672','123001','1007');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('1001009','Roque Quintero','95977435','123007','1008');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('10010010','Nicole Bartolome','95974724','123005','1009');


INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('10010011','Lucas Lora','95974123','123005','10010');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('10010012','Balbina Piñero','95974783','123005','10011');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('10010013','Iryna Liu','95975167','1230018','1001');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('10010014','Stefan Nadal','95977843','1230012','1002');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('10010015','Victoria Verdugo','95972222','1230013','10014');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('10010016','Luisa Iglesias','95953535','123003','10015');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('10010017','Abraham Caballero','95912122','123004','1002');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('10010018','Yassine Gracia','95965747','123008','1003');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('10010019','Jesusa López','95957457','123009','10012');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('10010020','Mónica Dorado','95979797','1230010','10016');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('10010021','Omar Peiro','95975235','1230020','10013');
INSERT INTO Clientes (Id_cliente,nombre,telefono,Id_direccion,Id_tipoCliente) VALUES('10010022','Lara Novoa','95924367','1230015','1006');

11--Table Proveedores

INSERT INTO Proveedores (Id_proveedores,nombre,telefono, Id_pieza, Id_Direccion) VALUES('2001','Mega Automotriz','90925346','10001','123001');
INSERT INTO Proveedores (Id_proveedores,nombre,telefono, Id_pieza, Id_Direccion) VALUES('2002','Auto Partes Guevara','90925341','10002','123002');
INSERT INTO Proveedores (Id_proveedores,nombre,telefono, Id_pieza, Id_Direccion) VALUES('2003','Repuestos Grupo Q','90925342','10003','123003');
INSERT INTO Proveedores (Id_proveedores,nombre,telefono, Id_pieza, Id_Direccion) VALUES('2004','Auto Repuestos Suyapa','90925343','10004','123004');
INSERT INTO Proveedores (Id_proveedores,nombre,telefono, Id_pieza, Id_Direccion) VALUES('2005','Auto Partes Mendoza','90925344','10005','123005');
INSERT INTO Proveedores (Id_proveedores,nombre,telefono, Id_pieza, Id_Direccion) VALUES('2006','Auto Repuestos Navas','90925345','10006','123006');
INSERT INTO Proveedores (Id_proveedores,nombre,telefono, Id_pieza, Id_Direccion) VALUES('2007','REPUESTOS BARJUM','90925347','10007','123007');
INSERT INTO Proveedores (Id_proveedores,nombre,telefono, Id_pieza, Id_Direccion) VALUES('2008','Repuestos Top Rider','90925348','10008','123008');

delete from Proveedores where Id_proveedores;
select * From Proveedores;
12--Table Plantas

INSERT INTO Plantas (Id_planta,Id_Direccion,Id_Proveedores) VALUES('801001001','123001','2001');
INSERT INTO Plantas (Id_planta,Id_Direccion,Id_Proveedores) VALUES('802002002','123002','2002');
INSERT INTO Plantas (Id_planta,Id_Direccion,Id_Proveedores) VALUES('803003003','123003','2003');
INSERT INTO Plantas (Id_planta,Id_Direccion,Id_Proveedores) VALUES('804004004','123004','2004');
INSERT INTO Plantas (Id_planta,Id_Direccion,Id_Proveedores) VALUES('805005005','123005','2005');
INSERT INTO Plantas (Id_planta,Id_Direccion,Id_Proveedores) VALUES('806006006','123006','2006');
INSERT INTO Plantas (Id_planta,Id_Direccion,Id_Proveedores) VALUES('807007007','123007','2007');
INSERT INTO Plantas (Id_planta,Id_Direccion,Id_Proveedores) VALUES('808008008','123008','2008');




13--Table Concesionarios



INSERT INTO Concesionarios (Id_Conc,Id_Venta,fecha_venta,Id_Compra,Id_Vehiculo,Id_Marca,Id_Opciones,Id_Cliente,Id_Planta) VALUES('500101','701','2020-01-01','801','901','1','10101','1001001','801001001');
INSERT INTO Concesionarios (Id_Conc,Id_Venta,fecha_venta,Id_Compra,Id_Vehiculo,Id_Marca,Id_Opciones,Id_Cliente,Id_Planta) VALUES('500102','702','2020-02-02','802','902','2','10102','1001002','801001002');
INSERT INTO Concesionarios (Id_Conc,Id_Venta,fecha_venta,Id_Compra,Id_Vehiculo,Id_Marca,Id_Opciones,Id_Cliente,Id_Planta) VALUES('500103','703','2020-03-03','803','903','3','10103','1001003','801001003');
INSERT INTO Concesionarios (Id_Conc,Id_Venta,fecha_venta,Id_Compra,Id_Vehiculo,Id_Marca,Id_Opciones,Id_Cliente,Id_Planta) VALUES('500104','704','2020-04-04','804','904','4','10104','1001004','801001004');
INSERT INTO Concesionarios (Id_Conc,Id_Venta,fecha_venta,Id_Compra,Id_Vehiculo,Id_Marca,Id_Opciones,Id_Cliente,Id_Planta) VALUES('500105','705','2020-05-05','805','905','5','10105','1001005','801001005');
INSERT INTO Concesionarios (Id_Conc,Id_Venta,fecha_venta,Id_Compra,Id_Vehiculo,Id_Marca,Id_Opciones,Id_Cliente,Id_Planta) VALUES('500106','706','2020-06-06','806','906','6','10106','1001006','801001006');
INSERT INTO Concesionarios (Id_Conc,Id_Venta,fecha_venta,Id_Compra,Id_Vehiculo,Id_Marca,Id_Opciones,Id_Cliente,Id_Planta) VALUES('500107','707','2020-07-07','807','907','7','10107','1001007','801001007');
INSERT INTO Concesionarios (Id_Conc,Id_Venta,fecha_venta,Id_Compra,Id_Vehiculo,Id_Marca,Id_Opciones,Id_Cliente,Id_Planta) VALUES('500108','708','2020-08-08','808','908','8','10108','1001008','801001008');
INSERT INTO Concesionarios (Id_Conc,Id_Venta,fecha_venta,Id_Compra,Id_Vehiculo,Id_Marca,Id_Opciones,Id_Cliente,Id_Planta) VALUES('500109','709','2020-09-09','809','909','9','10109','1001009','801001009');


delete from Concesionarios where Id_Conc = 500101;
SELECT * FROM Concesionarios;