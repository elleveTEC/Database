-- Creación de la base de datos
create database Cemex
use Cemex

-- Creación de la tabla usuario
create table Usuario (
	UsuarioID int not null identity(1,1) primary key,
	Nombre nvarchar(50) not null,
	Apellido nvarchar(50) not null,
	Correo nvarchar(70) not null,
	Contrasena nvarchar(30) not null,
	Puesto nvarchar(30) not null
);

-- Creación de la tabla Registro
create table Registro (
	RegistroID int not null primary key identity(1,1),
	UsuarioID int not null foreign key references Usuario(UsuarioID),
	Fecha_Calculo date not null,
	Fecha_Inicio date not null,
	Fecha_Fin date not null,
	Nombre_Actividad varchar(1000) not null,
	Descripcion varchar(8000) not null,
	Resumen varchar(8000) not null,
	Dias int not null
);

-- Creación de la tabla Diccionario (para modelo)
create table Diccionario (
	Word nvarchar(30) not null,
	Token int not null
);

-- Generación de usuarios
insert into Usuario (Nombre, Apellido, Correo, Contrasena, Puesto) 
values ('Jose', 'Lopez', 'A01283642@tec.mx', '7294321', 'Redes Neuronales')

insert into Usuario (Nombre, Apellido, Correo, Contrasena, Puesto) 
values ('Carlos', 'Salinas', 'A01283585@tec.mx', 'PrepaT075', 'Documentacion')

insert into Usuario (Nombre, Apellido, Correo, Contrasena, Puesto) 
values ('Daniel', 'Cazares', 'A01197517@tec.mx', 'DCU88734', 'Líder Proyecto')

-- Generación de registros
insert into Registro (UsuarioID, Fecha_Calculo, Fecha_Inicio, Fecha_Fin, Nombre_Actividad, Descripcion, Resumen, Dias)
values (1, '20210101', '20220301', '20220607', 'Actividad 1', 
'As a One click authorized customer I want to ensure that if I create an order base on a one click to buy profile, I will be able to see a message by the time we create sales order.
The message will be:
Your One Click to Buy Order #xxxxx was successfully submitted and will be processed in the next 24 hours 
Must be shown in Country language used.
This message will be display in any order status result for the order creation.
Out of Scope
Readymix, Aggregates, Bulk
Any other definition not mention above.',
'One Click to buy disclaimer EG', 85)

insert into Registro (UsuarioID, Fecha_Calculo, Fecha_Inicio, Fecha_Fin, Nombre_Actividad, Descripcion, Resumen, Dias)
values (1, '20210101', '20220301', '202203012', 'Actividad 2', 'We need to display the trailer 1 on the EPOD and Pre EPOD', '[USA] [EPOD] [CEM] Content validation - Trailer 1', 11)

insert into Registro (UsuarioID, Fecha_Calculo, Fecha_Inicio, Fecha_Fin, Nombre_Actividad, Descripcion, Resumen, Dias)
values (2, '20210101', '20220314', '20220307', 'Actividad 1', 'Customer Signature in Track App - for Web', 'Covid - 1  - Track Web - Enable Signature', 13)