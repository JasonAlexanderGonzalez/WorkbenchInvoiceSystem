/*1 Consulta*/
/*seleccionar las facturas que tramito el empleado 100101 que tengan cuanta IBAN de Gollo*/
select facturas.codigo_empleado, facturas.consecutivo, facturas.id_Cuenta_Proveedor
from modulo_de_facturas.facturas
where facturas.codigo_empleado = "100101" and facturas.id_Cuenta_Proveedor = "CR310154";

/*2 Consulta*/
/*seleccionar o desplegar el numero de factura que tengan tramito el empleado 100101 cuando
esta factura tenga una unidad de 200 */
select facturas.codigo_empleado, facturas.consecutivo, facturas.unidad
from modulo_de_facturas.facturas
where facturas.codigo_empleado = "100101" and facturas.unidad = "200" ;

/*3 Consulta*/
/*seleccionar o desplegar el numero de factura que tengan tramito el empleado 100101 cuando
que se cancelaron en el mes de Enero */
select facturas.codigo_empleado, facturas.consecutivo, facturas.mes_que_cancela
from modulo_de_facturas.facturas
where facturas.codigo_empleado = "100101" and facturas.mes_que_cancela = "Enero";

/*4 Consulta*/
/*seleccionar o desplegar el numero de factura que han sido
canceladas al proveedor con cuenta IBAN CR110155 */
select facturas.codigo_empleado, facturas.consecutivo, facturas.mes_que_cancela, facturas.id_Cuenta_Proveedor
from modulo_de_facturas.facturas
where facturas.id_Cuenta_Proveedor = "CR110155";

/*5 CONSULTA*/
/*seleccionar o desplegar el numero de factura, CODIGO empleado que tramita, mes que se cancelo
cuenta Iban del proveedor que se cancelo donde su costo neto sea menor a 70 000 */
select facturas.codigo_empleado, facturas.consecutivo, facturas.mes_que_cancela, facturas.id_Cuenta_Proveedor, facturas.precio_neto
from modulo_de_facturas.facturas
where facturas.precio_neto < "70000";