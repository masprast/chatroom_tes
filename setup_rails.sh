#!/bin/bash

# 
# File ini bertujuan untuk membuat struktur direktori proyek Rails dengan konfigurasi default
# seperti install baru sistem operasi.
# 
# ##### PERINGATAN #####
# 
# JANGAN MENJALANKAN SKRIP INI, KARENA AKAN MENGUBAH/MENGHAPUS STRUKTUR DIREKTORI DAN FILE
# DARI PROYEK INI.
# 
# ######################
# 
# Harap menjalankan testing melalui langkah-langkah yang telah dijabarkan pada README
# 


# Buat struktur folder
docker-compose run --no-deps web rails new . --force --database=postgresql

# Ubah hak milik dari file yg digenerasi
sudo chown -R $USER:$USER .

echo "/vendor" >> .gitignore
cp database.yml config/database.yml

# Build image chat
docker build .

# Jalankan kontainer
docker-compose up -d

# Konfigurasi DB dalam kontainer
# docker exec -it -w "/var/www/chat" $(docker ps --format "{{.Names}}"|grep web) /bin/bash

# sudo chown -R $USER:$USER .