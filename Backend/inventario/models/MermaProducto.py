"""
Esta clase representa la Entidad MermaProducto
en la base de datos.
"""

from sqlalchemy import Column, Integer, ForeignKey
from ..config.db import Base
from sqlalchemy.orm import relationship

class MermaProcto(Base):
    __tablename__="MermaProducto"

    merma_id = Column(Integer,ForeignKey('Merma.id'),primary_key=True,nullable=False)
    producto_id = Column(Integer,ForeignKey('Producto.id'),primary_key=True,nullable=False)
    cantidad = Column(Integer,nullable=False)

    # Relacion 
    merma = relationship("Merma", secondary="MermaProducto",back_populates="producto")
    producto = relationship("Producto", secondary="MermaProducto",back_populates="mermas")
