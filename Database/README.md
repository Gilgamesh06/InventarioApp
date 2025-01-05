# Diseño de la base de datos:

* Creacion de la base de datos que servira como persitencia para la aplicacion de inventario

## Entidades

* **`Proveedor`**
    * id $\rightarrow$ `int`
    * nit $\rightarrow$ `str`
    * nombre $\rightarrow$ `str`
* **`Producto`**
    * id $\rightarrow$ `int`
    * codigo $\rightarrow$ `str`
    * talla $\rightarrow$ `str`
    * nombre $\rightarrow$ `str`
    * valor_unid $\rightarrow$ `float`
    * valor_venta $\rightarrow$ `float`
* ***`Merma`**
    * id $\rightarrow$ `int`
    * descripcion $\rightarrow$ `str`
    * fecha $\rightarrow$ `DATE`
* **`Inventario`**
    * producto_id $\rightarrow$ `int`
    * cantidand $\rightarrow$ `int`
    * fecha $\rightarrow$ `DATE`