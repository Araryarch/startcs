# StartCS

StartCS adalah skrip otomatis untuk mengatur lingkungan pengembangan C# dengan cepat dan mudah. Dengan skrip ini, pengguna dapat langsung menginstal dan mengonfigurasi dependensi yang diperlukan untuk memulai proyek C# tanpa harus melakukan setup manual.

## Instalasi

Ikuti langkah-langkah berikut untuk menginstal StartCS:

### 1. Clone Repository

Unduh repositori StartCS ke dalam sistem Anda dengan perintah berikut:

```sh
git clone https://github.com/Araryarch/startcs.git
```

### 2. Masuk ke Direktori

Pindah ke direktori hasil cloning:

```sh
cd startcs
```

### 3. Beri Izin Eksekusi

Pastikan skrip memiliki izin eksekusi sebelum dijalankan:

```sh
chmod +x install.sh
```

### 4. Jalankan Skrip Instalasi

Jalankan skrip instalasi untuk mengatur lingkungan C#:

```sh
./install.sh
```

### 5. Gunakan Skrip yang Terinstal

Setelah instalasi selesai, gunakan skrip berikut untuk membuat proyek C# baru:

```sh
dotnet-ui
```

## Uninstall

Jika ingin menghapus StartCS dari sistem, jalankan perintah berikut:

```sh
chmod +x uninstall.sh && ./uninstall.sh
```

Skrip ini akan menghapus semua file terkait yang telah terinstal.

## Catatan

- Pastikan Anda memiliki akses **sudo** jika diperlukan.
- Skrip ini akan menginstal semua dependensi yang dibutuhkan untuk menjalankan proyek C#.
- Jika mengalami kendala saat instalasi, pastikan semua dependensi sistem telah terpasang dengan benar.

## Kontribusi

Jika ingin berkontribusi dalam pengembangan StartCS, Anda dapat melakukan fork repository ini, melakukan perubahan, dan mengajukan pull request.

## Lisensi

Repositori ini dirilis di bawah lisensi MIT. Anda bebas menggunakannya serta memodifikasinya sesuai kebutuhan.
