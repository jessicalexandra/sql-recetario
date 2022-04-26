create database recetary;
use recetary;

create table receta(
cod_receta int primary key,
fuente_receta varchar(60),
ubicacion_receta varchar(100),
lista_ingredientes varchar(100),
utensilios varchar(100),
tiempo_ejecucion time,
comentario_receta varchar(100),
)

create table plato(
cod_plato int primary key,
cod_receta int,
tipo_plato varchar(50),
nombre_plato varchar(100),
ingrediente_principal varchar(100),
calorias_plato decimal,
cantidad_ing_plato decimal,
unidad_medida_plato varchar(50),
precio_plato decimal,
comentario_adicional_plato varchar(100),
constraint fk_plato foreign key(cod_receta)references receta (cod_receta))

create table menu(
cod_menu int  primary key,
cod_receta int,
identificador_plato varchar(50),
precio_menu decimal,
comentario_menu varchar(100),
constraint fk_menu foreign key(cod_receta) references receta(cod_receta))










