"""
Esta clase representa la Entidad Inventario
en la base de datos.
"""

from sqlalchemy import Column, Integer, DATE
from ..config.db import Base
from sqlalchemy.orm import relationship

class Inventario(Base):
    __tablename__="Inventario"

    producto_id = Column(Integer,primary_key=True,unique=True,nullable=False)
    cantidad = Column(Integer,nullable=False)
    fecha = Column(DATE)

    # Relacion uno a uno Producto
    producto = relationship("Producto",back_populates="inventario")