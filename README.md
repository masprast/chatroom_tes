### About
Ini adalah aplikasi berbasis *web* dengan *backend* menggunakan `Ruby on Rails` dengan *database* `PostgreSQL`. Aplikasi ini dibangun menggunakan teknologi `Docker`. Tujuan saya membuat aplikasi ini adalah untuk memenuhi *skill challenge* oleh Simpul Tech.

### Build
Pastikan di komputer telah ter-*install* `Docker` beserta *docker-compose*. Jalankan perintah berikut untuk membangun (build) kontainer untuk *web service* `Ruby on Rails`:

```sh
$ docker-compose run --no-deps web rails new . --force --database=postgresql
```
> Jika menggunakan sistem Linux: pastikan untuk menjalankan perintah `Docker` dengan *user* dengan **UID:1000**

### Testing
Jalankan *browser web* lalu buka alamat `localhost:3000` untuk membuka aplikasi *chatroom*. kemudian ikuti langkah-langkah pengetesan aplikasi *chatroom* sebagai berikut:
1. Daftarkan diri sebagai user A
2. Daftarkan diri sebagai user B
3. 

### Template
- [https://tailwindcomponents.com/component/chat](chat)
- [https://tailwindcomponents.com/component/chat-messages](chat-messages)
- [https://tailwindcomponents.com/component/quickchat-chat-layout](quickchat-chat-layout)

