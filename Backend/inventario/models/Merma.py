"""
Esta clase representa la Entidad Merma
en la base de datos.
"""

from sqlalchemy import Column, Integer, String, DATE
from ..config.db import Base
from sqlalchemy.orm import relationship

class Merma(Base):
    __tablename__="Merma"

    id = Column(Integer,primary_key=True,autoincrement=True)
    descripcion = Column(String(255),nullable=False)
    fecha = Column(DATE,nullable=False)

    # Relacion uno a muchos con MermaProducto
    productos = relationship("Producto", secondary="MermaProducto",back_populates="mermas")

