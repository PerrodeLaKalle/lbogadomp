# Establesco la version de Python que voy a usar. En este caso la ultima
FROM python:3.10

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo requirements.txt al directorio de trabajo que indica las dependencias
COPY requirements.txt .

# Instala las dependencias de la aplicación
RUN pip install --no-cache-dir -r requirements.txt

# Copia el contenido de la aplicación al directorio de trabajo del contenedor
COPY . .

# le indico porque puerto me voy a conectar a mi servicio web
EXPOSE 3000

# Comando para ejecutar la aplicación cuando se inicie el contenedor
CMD ["python3", "app.py"]

