from fastapi import FastAPI
from routes.routes import router as product_router

app = FastAPI()

app.include_router(product_router , tags=["Productos"])