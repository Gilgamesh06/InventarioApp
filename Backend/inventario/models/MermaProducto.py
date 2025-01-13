"""
Esta clase representa la Entidad MermaProducto
en la base de datos.
"""

from sqlalchemy import Column, Integer, ForeignKey
from config.db import Base
from sqlalchemy.orm import relationship

class MermaProducto(Base):
    __tablename__="MermaProducto"

    merma_id = Column(Integer,ForeignKey('Merma.id'),primary_key=True,nullable=False)
    producto_id = Column(Integer,ForeignKey('Producto.id'),primary_key=True,nullable=False)
    cantidad = Column(Integer,nullable=False)

    # Relacion 
    merma = relationship("Merma",back_populates="productos")
    producto = relationship("Producto",back_populates="mermas")
