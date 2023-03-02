/*Crear la base de datos*/

create database modulo_de_facturas;

/*utilizamos la BD para crear tablas*/

use modulo_de_facturas;
CREATE TABLE IF NOT EXISTS persona(
cedula int primary key,
nombre VARCHAR (50),
ape1 VARCHAR (50),
ape2 VARCHAR (50) ,
fecha_nacimiento date,
estado varchar(50) , 
codigo_empleado int, 
id_ubicacion int
);


CREATE TABLE IF NOT EXISTS domicilio(
id_ubicacion int primary key,   
    pais varchar(50),
    provincia varchar(50),
    ciudad varchar(50),   
    cedula int(50),
    razon_social int(50)
);



CREATE TABLE IF NOT EXISTS computo_equipo(
id_maquina varchar (50) primary key,   
    marca varchar(50),
    modelo varchar(50),
    tipo varchar(50), 
    contrasena varchar(50), 
    estado varchar(50),
	caracteristicas varchar(50), 
    id_usuario INT(50) 
);

CREATE TABLE IF NOT EXISTS bitacora_tabla(
id_bitacora int primary key,     
    id_usuario INT(50),
    id_maquina varchar (50),
    consecutivo INT(50),
    codigo_empleado INT(50)
);


CREATE TABLE IF NOT EXISTS empleador(
razon_social int primary key,     
    nombre_comercial VARCHAR (50),
	sector VARCHAR (50),
    estado VARCHAR (50),    
departamento VARCHAR (50), 
id_ubicacion int (50), 
id_cuenta VARCHAR (50)
);



CREATE TABLE IF NOT EXISTS cuenta_iban_empleador(
id_cuenta varchar(50) primary key,	 
razon_social int (50),
estado VARCHAR (50)
);


CREATE TABLE IF NOT EXISTS demandante(
codigo_empleado int primary key,  	 
razon_social int (50),
estado VARCHAR (50),
cargo VARCHAR (50),
salario float,
fecha_salida date,
fecha_Ingreso date,
correo VARCHAR (50), 
cedula INT(50),
id_telefono INT(50),
id_usuario INT(50)
);


CREATE TABLE IF NOT EXISTS telefono_demandante(
id_telefono varchar(50) primary key,	 
codigo_empleado int (50)
);


CREATE TABLE IF NOT EXISTS usuario_demandante(
id_usuario int primary key,	 
codigo_empleado int,
contrasena_usuario varchar(50)
);

CREATE TABLE IF NOT EXISTS facturas(
consecutivo int primary key,
tipo_cambio float,
fecha_confeccion date,
fecha_pago date,
precio_neto float,
precio_bruto float, 
impuesto_renta float,
impusto_iva float,
unidad int,
total_unidad int,
mes_que_cancela varchar(50), 
estado varchar(50),
razon_Poder int,
codigo_empleado int,
id_cuenta varchar (50),
id_Cuenta_Proveedor varchar(50),
codigo_empleado_oferente int,
codigo_bien_o_servicio int,
id_detalle varchar(50),
id_moneda int
);

CREATE TABLE IF NOT EXISTS detalle(
id_detalle int primary key,
precio_Total float,
unidades_Total float,
consecutivo int,
descripcion VARCHAR (50)
);



CREATE TABLE IF NOT EXISTS bienes_tabla(
codigo_articulo int primary key,
descripcion varchar(50),
precio_bien_unitario float,
fecha_creacion date,
fecha_caducidad date,
pais_origen varchar (50),
razon_social int,
tipo_bien varchar (50),
material varchar (50),
unidad_medida varchar (50)
);

CREATE TABLE IF NOT EXISTS oferente(
codigo_empleado_oferente int primary key,
estado varchar (50),
cargo varchar (50),
razon_social int,
cedula int
);


CREATE TABLE IF NOT EXISTS telefono_oferente(
id_telefono_oferente int primary key,
codigo_empleado_oferente int
);


CREATE TABLE IF NOT EXISTS correo_oferente(
nombre_correo_oferente varchar(50) primary key,
codigo_empleado_oferente int
);


CREATE TABLE IF NOT EXISTS moneda(
id_moneda int primary key,
nombre_Moneda varchar(50)
);