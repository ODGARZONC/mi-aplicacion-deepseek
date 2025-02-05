# Usa la imagen oficial de Python desde Docker Hub
FROM python:3.8-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo de requisitos al contenedor
COPY requirements.txt .

# Instala los paquetes necesarios especificados en requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia el contenido del directorio actual al contenedor
COPY . .

# Hace el puerto 80 accesible al exterior del contenedor
EXPOSE 80

# Ejecuta la aplicación usando Gunicorn
CMD ["gunicorn", "--timeout", "120", "--workers", "3", "-b", "0.0.0.0:80", "app:app"]
