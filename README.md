# P1_Probstat_E_5025201184
Pengerjaan Praktikum - 2 Probabilitas dan Statistika

## Identitas
| Nama                      | NRP        |
|---------------------------|------------|
| Cahyadi Surya Nugraha     | 5025201184 |

## Penjelasan Soal 1
Peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴.

![tabel-data-1](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/tabel1.PNG)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.
### 1.A
> Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas.
    
![output-1a](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/1A.PNG)

```R
    before <- c(78, 75, 67, 77, 70, 72, 28, 74, 77)
    after <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

    sd_before <- sd(before)
    sd_before

    sd_after <- sd(after)
    sd_after
```
### 1.B
> Carilah nilai t (p-value)

![output-1a](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/1B.PNG)
        
```R
    t.test(before, after, alternative = "greater", var.equal = FALSE)
```
### 1.C
> Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0.

![output-1c](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/1C.PNG)
    
```R
    var.test(before, after)
    t.test(before, after, mu = 0, alternative = "two.sided", var.equal = TRUE)
```

## Penjelasan Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. 
### 2.A
> Apakah Anda setuju dengan klaim tersebut?

```R
    Setuju

```    
### 2.B
> Jelaskan maksud dari output yang dihasilkan!

![output-2b](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/2B.PNG)

```R
    install.packages("BSDA")
    library(BSDA)
    tsum.test(mean.x=23500, sd(3900), n.x=100)
```    
### 2.C
> Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

    Nilai z dicari dengan

![output-2c-1](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/2C-1.png)

    Dengan demikin p-value didapat dengan
![output-2c-2](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/2C-2.png)

![output-2c-3](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/2C-3.png)
    
    Maka disimpulkan bahwa mobil yang dikemudikan rata-rata lebih dari 20.000KM/Tahun

## Penjelasan Soal 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut

![tabel-data-3](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/tabel3.PNG)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)?
### 3.A
>  H0 dan H1

    H0 dan H1 dilakukan perhitungan H0 sebagai berikut

![output-3a-1](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/3A-1.png)

    dilakukan perhitungan H1 sebagai berikut

![output-3a-2](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/3A-2.png)
### 3.B
> Hitung Sampel Statistik

![output-3b](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/3B.PNG)

 ```R
    tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)
```    
### 3.C
> Lakukan Uji Statistik (df =2)

![output-3c](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/3C.PNG)

```R
    install.packages("mosaic")
    library(mosaic)
    plotDist(dist='t', df=2, col="blue")
```    
### 3.D
> Nilai Kritikal

![output-3d](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/3D.PNG)

```R
    qchisq(p = 0.05, df = 2, lower.tail=FALSE)
```    
### 3.E
> Keputusan

    Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian. Aksinya adalah : `({a}_{a∈A})`. Kemungkinan konsekuensi : `({c}_{c∈C})` (tergantung pada keadaan dan tindakan). Maka, keputusan dapat dibuat dengan `t.test`
### 3.F
> Buatlah Kesimpulan
    Kesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal.

## Penjelasan Soal 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama.

[Tabel Data 4](https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt)

### 4.A
> Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1, grup 2, grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.

```R
    library(ggplot2)

    oneWayData  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
    dim(oneWayData)
    head(oneWayData)
    attach(oneWayData)

    oneWayData$Length <- as.factor(oneWayData$V2)
    oneWayData$Group <- as.factor(oneWayData$V1)
    oneWayData$Group = factor(oneWayData$Group,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))
    class(oneWayData$Group)

    grup1 <- subset(oneWayData, Group == "Kucing Oren")
    grup2 <- subset(oneWayData, Group == "Kucing Hitam")
    grup3 <- subset(oneWayData, Group == "Kucing Putih")

    ggplot(
      data = grup1, 
      aes(sample = Length)
      ) + geom_qq()
    
    ggplot(
      data = grup2, 
      aes(sample = Length)
      ) + geom_qq()
    
    ggplot(
      data = grup3, 
      aes(sample = Length)
      ) + geom_qq()
```    
#### Penjelasan
    Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians. Langkah pertama mengambil data dari link yang telah disediadakan. Selanjutnya membuat myFile menjadi group. Setelah itu, dicek apakah dia menyimpan nilai di groupnya. Lalu bagi tiap valuer menjadi 3 bagian ke 3 grup.
### 4.B
> Carilah atau periksalah Homogeneity of variances nya. Berapa nilai p yang didapatkan? Apa hipotesis dan kesimpulan yang dapat diambil?

    ```R
    bartlett.test(oneWayData$Group, oneWayData$Length)
    ```    
#### Penjelasan
    Setelah di jalankan maka nilai p-value = 0.8054. Kesimpulan yang didapatkan yaitu Bartlett's K-squared memiliki nilai sebesar 0.43292 dan df bernilai 2
### 4.C
> Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.

![output-4c](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/4C.png)

```R
    qqnorm(grup1$Length)
    qqline(grup1$Length)
```    
### 4.D
> Dari Hasil Poin C, berapakah nilai-p? Apa yang dapat Anda simpulkan dari H0?

    Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0? Setelah di jalankan maka nilai p-value = 0.8054.
### 4.E
> Verifikasilah jawaban model 1 dengan Post-hoc Test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

![output-4e](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/4E.png)

```R
    model <- lm(Length~Group, data = oneWayData)
    anova(model)
    TukeyHSD(aov(model))
```    
### 4.F
> Visualisasikan data dengan ggplot2

```R
    ggplot(
      oneWayData, 
      aes(x = Group, y = Length)) + geom_boxplot(colour = "black") + scale_x_discrete() + xlab("Species") + ylab("Length")
```    

## Penjelasan Soal 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B, dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali.

![tabel-data-5](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/tabel5.PNG)
### 5.A
> Buatlah plot sederhana untuk visualisasi data
![output-5a](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/5A.PNG)

```R
    install.packages("multcompView")
    library(readr)
    library(ggplot2)
    library(multcompView)
    library(dplyr)

    GTL <- read_csv("GTL.csv")
    head(GTL)

    str(GTL)

    qplot(x = Temp, y = Light, geom = "point", data = GTL) +
      facet_grid(.~Glass, labeller = label_both)
```    
### 5.B
> Lakukan uji ANOVA dua arah
![output-5b](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/5B.PNG)

```R
    GTL$Glass <- as.factor(GTL$Glass)
    GTL$Temp_Factor <- as.factor(GTL$Temp)
    str(GTL)

    anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
    summary(anova)
```    
### 5.C
> Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
![output-5c](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/5C.PNG)

```R
    data_summary <- group_by(GTL, Glass, Temp) %>%
    summarise(mean=mean(Light), sd=sd(Light)) %>%
      arrange(desc(mean))
    print(data_summary)
```    
### 5.D
> Lakukan uji Tukey
![output-5d](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/5D.png)

```R
    tukey <- TukeyHSD(anova)
    print(tukey)
```    
### 5.E
> Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey
![output-5e](https://github.com/Chroax/P2_Probstat_E_5025201184/blob/main/img/5E.PNG)

```R
    tukey.cld <- multcompLetters4(anova, tukey)
    print(tukey.cld)

    cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
    data_summary$Tukey <- cld$Letters
    print(data_summary)

    write.csv("GTL_summary.csv")
```    