# README
Ini adalah aplikasi *chatroom* sederhana berbasis *web*.
### Tech Stack
* Ruby on Rails ( `7.0.8` ) **~>** *web server*
* Docker ( `24.0.5` ) **~>** kontainerisasi
* Redis ( `7.2.1` ) **~>** *database cache*
* Postgres ( `15` ) **~>** database
* Tailwind CSS ( `CDN` ) **~>** *framework* tampilan

Tujuan saya membuat aplikasi ini adalah untuk memenuhi *skill challenge* yang diselenggarakan oleh Simpul Tech dalam rangka seleksi perekrutan.


## Requirements
- [Docker >= 23](https://www.docker.com/)
- [Docker-compose](https://docs.docker.com/compose/gettingstarted/)

## Build
1. Buat direktori untuk menampung repositori
```sh
mkdir "chatroom" && cd "$_"
```
2. Kloning repositori ini
```sh
git clone https://github.com/masprast/chatroom_tes
```
3. Jalankan perintah berikut untuk membangun kontainer
```sh
docker build .
```
4. Jalankan perintah berikut untuk menjalankan kontainer
```sh
docker-compose up
```
<!-- $ docker-compose run --no-deps web rails new . --force --database=postgresql -->
> Jika menggunakan sistem Linux **~>** pastikan untuk menjalankan perintah *docker-compose* sebagai *user* dengan UID=1000
<br/> **note: proses *build* memerlukan beberapa waktu**
<!-- <br/> Jika sudah selesai, khusus sistem linux, ubah hak milik menjadi *user*
> ```sh
> sudo chown -R $USER:$USER .
> ``` -->

5. Cek kontainer berhasil dibangun dan dijalankan :
```sh
docker ps
```
6. Setelah kontainer berjalan, buat database dengan perintah berikut
```sh
docker-compose run web rails db:create
```

## Testing
### # Local
Jalankan *browser web* lalu buka alamat `localhost:3000` untuk membuka aplikasi *chatroom* kemudian ikuti langkah-langkah pengetesan aplikasi sebagai berikut:

1. Daftarkan diri sebagai *user* A
2. Daftarkan diri sebagai *user* B
3. Buka *tab* baru
4. Masuk sebagai *user* ke aplikasi pada masing-masing *tab*
5. Mulai *chat* antar *user* yang telah masuk

### # Cloud
Jalankan *browser web* lalu buka alamat `...` untuk membuka aplikasi *chatroom*, kemudian ikuti langkah-langkah pengetesan aplikasi sama seperti di atas.
> *Deployment* aplikasi dilakukan di `GCP` *free tier*

## Resources
[https://tailwindcomponents.com/component/quickchat-chat-layout](quickchat-chat-layout)

<!-- ## References
- [Ruby on Rails - Docker sample](https://github.com/docker/awesome-compose/tree/master/official-documentation-samples/rails/)
- [Building a Real-Time Chat App in Rails Using ActionCable and Turbo](https://www.honeybadger.io/blog/chat-app-rails-actioncable-turbo/)
- [Using Redis with docker and docker-compose for local development a step-by-step tutorial](https://geshan.com.np/blog/2022/01/redis-docker/) -->
