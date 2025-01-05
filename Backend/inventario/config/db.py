from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker

# Cadena de conexion a la base de datos

DATABASE_URL = "postgresql://Solus:Gilgamesh06@localhost/inventario"

# Crear un motor de conexion

engine = create_engine(DATABASE_URL)

# Crear una fabrica de sesiones

SessionLocal = sessionmaker(autocommit=False,autoflush=False,bind=engine)

# Declaracion base para los modelos

""""
Esta Clase es la que utilizan las clases que represetan las tablas se les pasa como parametro es decir heredan de esta.
"""

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

    
