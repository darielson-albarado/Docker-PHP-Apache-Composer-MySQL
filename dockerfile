# Usando a imagem base do PHP com Apache
FROM php:8.3-apache

# Update
RUN apt-get update

# Ativando mod_rewrite do Apache
RUN a2enmod rewrite

# Instalar o composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Reiniciando o Apache
RUN service apache2 restart