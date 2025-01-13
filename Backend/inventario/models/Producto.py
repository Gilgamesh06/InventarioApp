"""
Esta clase representa la Entidad Producto
en la base de datos.
"""

from sqlalchemy import Column, Integer, String, Float
from config.db import Base
from sqlalchemy.orm import relationship

class Producto(Base):
    __tablename__="Producto"

    id = Column(Integer,primary_key=True,autoincrement=True)
    codigo = Column(String(12), nullable=False, unique=True)
    talla = Column(String(5),nullable=False)
    nombre = Column(String(50),nullable=False)
    tipo = Column(String(100),nullable=False)
    valor_unid = Column(Float,nullable=False)
    valor_venta = Column(Float,nullable=False)

    # Relacion uno a muchos con ProveedorProducto
    proveedores = relationship("ProveedorProducto",back_populates="producto")
    # Relacion uno a muchos con MermaProducto
    mermas = relationship("MermaProducto",back_populates="producto")
    # Relacion uno a uno Producto
    inventario = relationship("Inventario",back_populates="producto")