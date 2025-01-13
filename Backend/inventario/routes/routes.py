from fastapi import APIRouter, Depends, HTTPException
from config.db import get_db
from models.Producto import Producto
from sqlalchemy.orm import Session
from schemas.schemas import ProductCreate, ProductResponse
from typing import List

router = APIRouter()


@router.post("/producto/crear" , response_model=ProductResponse)
async def post_product(producto:ProductCreate ,db: Session = Depends(get_db)):
   db_producto = Producto(
      codigo=producto.codigo,
      talla=producto.talla,
      nombre=producto.nombre,
      tipo=producto.tipo,
      valor_unid=producto.valor_unid,
      valor_venta=producto.valor_venta
   )
   db.add(db_producto)
   db.commit()
   db.refresh(db_producto)
   return db_producto



@router.get("/producto/", response_model=List[ProductResponse])
async def get_product(db: Session = Depends(get_db) ):
   products = db.query(Producto).all()
   return products


@router.get("/producto/{codigo}",response_model=ProductResponse)
async def get_product_code(codigo:str, db:Session = Depends(get_db)):
   
   products = db.query(Producto).where(Producto.codigo == codigo).first()
   return products


@router.get("/producto/create/{referencia}", response_model=List[ProductResponse])
async def get_product_references(referencia:str, db:Session = Depends(get_db)):

   products = db.query(Producto).where(Producto.tipo == referencia).all()
   if not products:
        raise HTTPException(status_code=404, detail="Products not found")
   return products