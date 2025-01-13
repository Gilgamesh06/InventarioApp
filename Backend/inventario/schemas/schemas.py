from pydantic import BaseModel

class ProductCreate(BaseModel):
    codigo:str
    talla:str
    nombre:str
    tipo:str
    valor_unid:float
    valor_venta:float


class ProductResponse(ProductCreate):
    id:int

    class Config:
        from_attributes = True;