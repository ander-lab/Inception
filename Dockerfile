# Usa la imagen base oficial de Debian Buster
FROM debian:buster

# Actualiza el sistema e instala Bash
RUN apt-get update && apt-get install -y bash

# Define el comando por defecto al iniciar el contenedor
CMD ["bash"]

