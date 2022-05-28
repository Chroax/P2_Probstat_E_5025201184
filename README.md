# P1_Probstat_E_5025201184
Pengerjaan Praktikum - 2 Probabilitas dan Statistika

## Identitas
| Nama                      | NRP        |
|---------------------------|------------|
| Cahyadi Surya Nugraha     | 5025201184 |

## Penjelasan Soal 1
Peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴.
![alt text](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/tabel1.PNG)
Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

### 1.A
> Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas.

    ```R

    ```    
    [Screenshot]
### 1.B
> Carilah nilai t (p-value)

    ```R

    ```    
    [Screenshot]
### 1.C
> Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0.

    ```R

    ```    
    [Screenshot]

## Penjelasan Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. 

### 2.A
> Apakah Anda setuju dengan klaim tersebut?

    ```R

    ```    
    [Screenshot]
### 2.B
> Jelaskan maksud dari output yang dihasilkan!

    ```R

    ```    
    [Screenshot]
### 2.C
> Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!


## Penjelasan Soal 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut
![alt text](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/tabel3.PNG)
Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)?

### 3.A
>  H0 dan H1

    ```R

    ```    
    [Screenshot]
### 3.B
> Hitung Sampel Statistik

    ```R

    ```    
    [Screenshot]
### 3.C
> Lakukan Uji Statistik (df =2)

    ```R

    ```    
    [Screenshot]
### 3.D
> Nilai Kritikal

    ```R

    ```    
    [Screenshot]
### 3.E
> Keputusan

    ```R

    ```    
    [Screenshot]
### 3.F
> Buatlah Kesimpulan


## Penjelasan Soal 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama.

[7bb7b7cc]: https://Chroax/P2_Probstat_E_5025201184/blob/main/tabel/tabel4.txt  "Tabel-4"

### 4.A
> Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1, grup 2, grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.

    ```R

    ```    
    [Screenshot]
### 4.B
> Carilah atau periksalah Homogeneity of variances nya. Berapa nilai p yang didapatkan? Apa hipotesis dan kesimpulan yang dapat diambil?

    ```R

    ```    
    [Screenshot]
### 4.C
> Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.

    ```R

    ```    
    [Screenshot]
### 4.D
> Dari Hasil Poin C, berapakah nilai-p? Apa yang dapat Anda simpulkan dari H0?

    ```R

    ```    
    [Screenshot]
### 4.E
> Verifikasilah jawaban model 1 dengan Post-hoc Test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

    ```R

    ```    
    [Screenshot]
### 4.F
> Visualisasikan data dengan ggplot2

    ```R

    ```    
    [Screenshot]

## Penjelasan Soal 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B, dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali.

### 5.A
> Buatlah plot sederhana untuk visualisasi data

    ```R

    ```    
    [Screenshot]
### 5.B
> Lakukan uji ANOVA dua arah

    ```R

    ```    
    [Screenshot]
### 5.C
> Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)

    ```R

    ```    
    [Screenshot]
### 5.D
> Lakukan uji Tukey

    ```R

    ```    
    [Screenshot]
### 5.E
> Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey

    ```R

    ```    
    [Screenshot]