"""
Esta clase representa la Entidad Proveedor
en la base de datos.
"""

from sqlalchemy import Column, Integer, String
from ..config.db import Base
from sqlalchemy.orm import relationship

class Proveedor(Base):
    __tablename__="Proveedor"

    id = Column(Integer,primary_key=True,autoincrement=True)
    nit = Column(String(12),nullable=False)
    nombre = Column(String(50),nullable=False)

    # Relacion uno a muchos con ProveedorProducto
    productos = relationship("Producto", secondary="ProveedorProducto",back_populates="proveedores")

