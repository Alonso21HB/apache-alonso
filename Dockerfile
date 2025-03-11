# Usa una imagen base de PHP con Apache
FROM php:8.2-apache

# Establece el directorio de trabajo en el servidor
WORKDIR /var/www/html

# Copia los archivos de tu aplicaci�n al contenedor
COPY src/ /var/www/html/

# Otorga permisos adecuados al directorio
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Exponer el puerto 80
EXPOSE 80

# Comando por defecto para iniciar Apache
CMD ["apache2-foreground"]

