# Gunakan gambar PHP sebagai dasar
FROM php:8.1-fpm

# Instal dependensi yang diperlukan
RUN apt-get update && apt-get install -y libzip-dev zip && docker-php-ext-install zip

# Menyusun proyek Lumen ke dalam /var/www
COPY ./src /var/www

# Mengatur direktori kerja
WORKDIR /var/www

# Jalankan server PHP built-in
CMD ["php", "-S", "0.0.0.0:8000", "-t", "public"]

