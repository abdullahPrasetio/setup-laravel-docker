```
Sebelum melakukan panduan ini pastikan docker telah anda instal di dalam komputer anda.
```

# SETUP DOCKER LARAVEL PROJECT
## Image tersedia didalam setup ini :

* [PHP](https://hub.docker.com/_/php)
* [Composer](https://hub.docker.com/_/composer)
* [Nginx](https://hub.docker.com/_/nginx)
* [Mysql](https://hub.docker.com/_/mysql)

## Langkah yang perlu dilakukan untuk instalasi
Pastikan anda telah memiliki akun github dan telah menginstal tool git dalam komputer dan terminal anda.
Copy kan code berikut ke terminal directory yang anda inginkan

1. clone project
```
git clone git@github.com:abdullahPrasetio/setup-laravel-docker.git
```
2. Rename folder
```
mv setup-laravel-docker <new name folder>
```
3. Masuk ke folder
```
cd <new name folder>
```
4. lakukan build 
```
docker-compose build && docker-compose up -d
```
4. create project laravel
```
cd src && docker-compose run php composer create-project laravel/laravel src
```

## Gunakan Perintah ini untuk melakukan artisans
```
docker-compose run php php artisan <..>
```

sekarang silahkan lakukan development di folder src

akses program yang telah terinstal di localhost:8081

***Selesai***

## Config Default 
---
1.  Nginx
    * Port : 8081
    * config : default.conf
2. PHP 
    * Port : 9000 
3. Mysql 
    * Port : 3306

Panduan Perubahan Port 
1. Jika Port Nginx di docker-compose.yml dirubah maka akses localhos:newPort
2. Jika Port Php di docker.compose.yml dirubah maka lakukan  juga perubahan pada default.conf php:newPort
3. Jika Port Mysql di docker.compose.yml dirubah maka setup juga port di .env pada laravel project

# Sekian Terimakasih
