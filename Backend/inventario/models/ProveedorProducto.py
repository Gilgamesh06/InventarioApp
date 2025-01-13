"""
Esta clase representa la Entidad ProveedorProducto
en la base de datos.
"""

from sqlalchemy import Column, Integer,ForeignKey
from config.db import Base
from sqlalchemy.orm import relationship

class ProveedorProducto(Base):
    __tablename__="ProveedorProducto"

    provedor_id = Column(Integer,ForeignKey('Proveedor.id'),primary_key=True,nullable=False)
    producto_id = Column(Integer,ForeignKey('Producto.id'),primary_key=True,nullable=False)

    # Relaciones 
    proveedor = relationship("Proveedor", back_populates="productos")
    producto = relationship("Producto", back_populates="proveedores")
