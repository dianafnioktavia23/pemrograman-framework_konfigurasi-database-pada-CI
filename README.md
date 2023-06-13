# Capaian Pembelajaran (Tujuan)
Setelah melakukan praktikum ini, diharapkan :

•	Mahasiswa dapat memahami konsep Model , Controller, View (MVC)

•	Mampu mengimplementasikan framwork codeigniter dengan consep MVC

•	Mampu menggunakan database sebagai penyimpanan pada konsep MVC

•	Mahasiswa dapat membuat sebuah aplikasi sederhana menggunkan metode MVC dengan konfigurasi Database

# Bahan dan Alat yang digunakan 
1.	Web Editor : Visual Studio Code
2.  Web Browser : Google Chrome
3.  OS PC : Windows 10
4.  XAMPP : versi 7.2
5.  CodeIgniter : 4.1.1
6.  Snipping Tool

# Hasil Praktikum 
Dalam praktikum kali ini yaitu membuat tampilan mvc secara sederhana dengan data yang berasal  dari Database .berikut merupakan langkah -langkah yang dikerjakan :

1. Membuat database terlebih dahulu untuk menyimpan sebuah data yang akan ditampilkan browser nantinya .dengan masuk ke localhost/phpmyadmin -> klin New -> masukan nama database -> klik tullisan Create.
  ![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/e9b6500f-e3bd-4bf2-b6e0-29e96aead85a)

Kemudian akan masuk secara otomatis ke database .lalu klik structure -> masuk jumlah kolom yang akan di gunakan -> kemudian isi atribut  pada masing masing kolom berserta tipe data yang digunakan pada atribut tersebut.
    ![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/58b17476-d487-4041-8ff7-fb815b05336b)

Setelah itu masuk kedalam insert untuk mengisikan data dari masing masing atribut yang telah dibuat . untuk id dari setiap data gunakan tipe data int lalu untuk gunaka auto increment agar muncul secara otomatis.
  ![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/c5be05c3-a9b0-416d-84a0-7d441ce62f86)

2. Kemudian langkah selanjutnya yaitu masuk ke teks editor untuk mengatur agar tampilan pada mvc dilakukan dengan menggunakan Database.masuk kedalam file .env kemudian konfigurasikan perintah pada line ke 33 bagian database, masukan data databse sesuai dengan alamat database yang telah dibuat tadi
![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/477a38b1-72e5-4d0e-9cdb-4ef08ef43376)

3.Kemudian tambahkan sebuah perintah dibawah ini dalam konfigurasi model dalam file filmmodel untuk menampilkan sebuah data dengan menggunkan perintah All

   ![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/a91d35cb-0b36-4963-a80a-7095e221320f)

  ![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/c3d96c93-1d8f-4d21-a61e-b2b6404b3353)

4.Kemudian masuk kedalam new terminal lalu ketikkan perintah php spark serve untuk menjalankan sebuah perintah yang telah dikonfigurasikan tadi  dan dapat melihat tampilan data pada browser. 

![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/2ad3cb66-c5b2-4fdd-be3e-fd93d3da8682)

5.	Berikut merupakan output yang dihasilkan dari perintah yang dikonfigurasikan tadi dan berarti database sudah terhubung dengan code CI4 pada metode mvc. 

![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/9aacfe09-3f93-4caf-adad-6ba3274e63f7)

Kemudian dalam konfigurasi pemanggilan tampilan ada beberapa metode pemanggilan pada tampilan yaitu :

a. Perintah findAll() digunakan untuk mengambil seluruh data

![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/117a9923-a70a-41d5-8825-b3eac0537733)

output 

![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/67292144-297a-400a-b03b-cb02ad61b346)

b.Perintah find($id) digunakan untuk mencari data dengan menggunakan ID
    ![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/1851be29-477a-4184-9ece-8b3dd9606bb9)

output 

![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/81488279-a365-4e2e-8288-73d9d96d6cb1)

c. Perintah dengan menggunakan whereBy($column , $order) digunakan untuk melakukan query dengan kondisi Where.
    ![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/77028b14-7e10-4911-bbba-23245b4d26e9)
    
 output
 
 ![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/df20efae-5d2b-4e5a-b37b-ec676028e74f)

d. Kemudian perintah orderBy($column, $order) digunakan untuk mengurutkan sebuah query yang ada pada kolom tertentu.
    ![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/47c7bcce-cca3-42e1-81d2-d8b40501abb0)
    
 output   
  ![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/70a184f7-1e22-4bba-8ace-85a82c9ed273)

 
e.Perintah Limit($limit , $offset) digunakan untuk membatasi jumlah data yang diambil dari tabel

 ![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/f53af21d-d7b5-4d06-bb2a-763bd308935a)
    
 Output 
    
  ![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/83a88b73-27c4-4e31-9e40-f75962a100bd)   

6.	Ubah index pada pada controller nanti akan terlihat perbedaan tampilan pada browser dari penggunaan getfilm dan juga getdataAll 

![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/14ad7234-e3ad-44af-b35e-ebb8e52f1f6e)

Kemdian masuk ke folder public -> buat folder assets -> buat folder lagi dengan nama cover -> kemudian masukkan gambar untuk tampilan cover yang digunakan dimasing masing film.

![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/62db9d89-1ac0-433d-8ce7-02fdd31e2bbc)
  
Kemudian buat lagi file dengan nama semuafilm.php pada folder film yang ada pada view  dan konfigurasikan untuk tampilan pada browser.

![image](https://github.com/dianafnioktavia23/pemrograman-framework_konfigurasi-database-pada-CI/assets/113124849/296a9545-8418-41b7-814c-4809b8c1f8d0)

7.	Kemudian masuk ke terminal lagi   lalu ketikkan perintah php spark serve 


      
      


