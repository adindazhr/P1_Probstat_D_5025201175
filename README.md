# Praktikum 1 Probstat

Adinda Zahra Pamuji (5025201175)

#### 1 Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
#### a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi? (distribusi Geometrik)

```
dgeom(x=3, prob=0.2)
```
Fungsi dgeom menemukan probabilitas kesuksesan pertama setelah mengalami sejumlah kegagalan. Pada kasus ini kesuksesan pertama setelah 3 kali kegagalan dengan probabilitas 0.2

![image](https://user-images.githubusercontent.com/89954689/162612585-32d0705b-aa80-4cd1-811b-847ed1ec98f6.png)

#### b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

```
mean(rgeom(n = 10000, prob = 0.2) == 3)
```
Fungsi rgeom menghasilkan list nilai acak yang mewakili jumlah kegagalan sebelum keberhasilan pertama. Pada kasus ini, kita generate 1000 data random lalu dicari meannya

![image](https://user-images.githubusercontent.com/89954689/162612647-8975e458-9e30-4692-911d-eefa08418020.png)


#### c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

```
sprintf("Jika di run, maka 1a akan menghasilkan 0.1024. Sedangkan, 1b jika saya run maka akan menghasilkan 0.1023.")
sprintf("Hal ini menunjukkan bahwa walaupun kedua hasil tersebut tidak sama persis, tetapi bisa disimpulkan bahwa simulasi dan teori sejalan")
```

#### d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

```
hist(rgeom(n = 10000, prob = 0.2),labels=T, breaks="Scott")
```
Menunjukkan histogram distribusi geometrik 10000 data random dengan probabilitas 0.2

![image](https://user-images.githubusercontent.com/89954689/162612893-754a7602-2407-40b5-b899-769edeedb043.png)

#### e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik
```
rataan_geom = 1/0.2
rataan_geom
varian_geom = (1-0.2)/0.2*0.2
varian_geom
```
Rumus rataan geometry adalah 1/p sedangkan rumus varian geometri adalah (1-p)/p*p

![image](https://user-images.githubusercontent.com/89954689/162613075-87a95424-d1fa-4559-a0dc-4e4c47f9f986.png)

#### 2 Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
#### a. Peluang terdapat 4 pasien yang sembuh.
```
p = dbinom(4,size=20,prob=0.2)
p
```
Fungsi dbinom mengembalikan nilai peluang dari suatu distribusi binomial. Pada kasus ini, peluang 4 pasien yang smebuh dari 20 pasien dengan peluang sembuh 0.2

![image](https://user-images.githubusercontent.com/89954689/162613172-ba5fb4a3-9b4e-4de1-be45-bc06296572cb.png)

#### b. Gambarkan grafik histogram berdasarkan kasus tersebut
```
plot(0:20, dbinom(0:20, size=20, prob=0.2),type='h')
```
Menggambarkan histogram dari 20 pasien dengan peluang sembuh 0.2

![image](https://user-images.githubusercontent.com/89954689/162613513-aa4c36bc-46f4-42d7-a9de-f682f5420c3a.png)

#### c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial
```
n_binom = 4
p_binom = 0.2
rataan_binom = n_binom * p_binom
varian_binom = rataan_binom * (1-p_binom)
rataan_binom
varian_binom
```
Rumus rataan binomial adalah np sedangkan rumus varian binomial adalah rataan binomial dikali dengan (1-p)

![image](https://user-images.githubusercontent.com/89954689/162613721-cdc1f432-87f5-408b-861c-d1dd3f75ec69.png)

#### 3 Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
#### a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok
```
dpois(6, 4.5)
```
Fungsi dpois menemukan probabilitas keberhasilan terjadi berdasarkan tingkat keberhasilan rata-rata. Pada kasus ini peluang 6 bayi lahir dengan rata rata 4.5 bayi lahir setiap harinya

![image](https://user-images.githubusercontent.com/89954689/162613794-a9dab8dc-bd86-477f-b7a7-cc85ffe70ff6.png)

#### b. Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
```
hist(rpois(365, 4.5),breaks = "Scott",labels=T)
```
Menurut histogram, kelahiran 6 bayi akan berjumlah sebanyak 47 kali selama setahun

![image](https://user-images.githubusercontent.com/89954689/162617659-659ce4cc-181e-4c4b-a5b9-f97b6b421b93.png)

#### c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

```
sprintf("Hasil dari a adalah 0.1281201, sedangkan hasil dari b adalah 48.")
sprintf("Jika kita kalikan hasil a dengan 365, maka hasilnya adalah %f", 0.1281201*365)
sprintf("Walaupun tidak sama persis, tetapi dapat disimpulkan bahwa simulasi dan teori sejalan")
```

#### d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson

```
rataan_poisson = 4.5
varian_poisson = 4.5
rataan_poisson
varian_poisson
```
Rataan distribusi poisson akan bernilai sama dengan lambda nya

![image](https://user-images.githubusercontent.com/89954689/162617895-b3301de7-6ab2-4ee0-8147-3c5a2b6ea5f9.png)

#### Diketahui nilai x = 2 dan v = 10. Tentukan
#### a. Fungsi Probabilitas dari Distribusi Chi-Square

```
q_chi=2
df_chi=10
dchisq(q_chi, df_chi, ncp = 0)
```
dchisq adalah fungsi untuk menghitung pribabilitas dari distribusi Chi-Square

![image](https://user-images.githubusercontent.com/89954689/162618072-70fda825-47b5-44f5-a2d2-d1fbafb29fea.png)

#### b. Histogram dari Distribusi Chi-Square dengan 100 data random

```
n_chi=100
hist(rchisq(n_chi, df_chi, ncp = 0),labels=T)
```
Membuat histogram probabilitas dari 100 data random menggunakan distribusi Chi-Square

![image](https://user-images.githubusercontent.com/89954689/162618122-f9d37216-d504-4aa9-926d-b9f3d5d8a65b.png)

#### c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square

```
rataan_chi = df_chi
varian_chi = df_chi*2
rataan_chi
varian_chi
```
Rumus rataan dari Chi-Square adalah sama dengan v, sedangkan rumus varian adalah v dikalikan dengan 2

![image](https://user-images.githubusercontent.com/89954689/162618176-ea509c5c-69d7-46ae-937e-1fe57731271b.png)

#### 5 Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
#### a Fungsi Probabilitas dari Distribusi Exponensial

```
dexp(3)
```
dexp adalah fungsi untuk menghitung probabilitas dari distribusi Exponensial

![image](https://user-images.githubusercontent.com/89954689/162618229-b2424317-a732-4b04-9bea-4a43ab2b8e39.png)

#### b Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

```
hist(rexp(n = 10, rate = 3),labels=T)
hist(rexp(n = 100, rate = 3),labels=T)
hist(rexp(n = 1000, rate = 3),labels=T)
hist(rexp(n = 10000, rate = 3),labels=T)
```
Membuat histogram dengan 10,100,1000,10000 data random

![image](https://user-images.githubusercontent.com/89954689/162618281-f4ece2bb-e849-4f62-a828-aa3a6681385d.png)
![image](https://user-images.githubusercontent.com/89954689/162618287-1356d789-28f5-4ba1-a652-0f1f9d36982c.png)
![image](https://user-images.githubusercontent.com/89954689/162618301-26b82c8a-ea42-4558-9dc1-d67d086acb06.png)
![image](https://user-images.githubusercontent.com/89954689/162618311-8961c892-9052-4057-8108-d29e82ef5010.png)

#### c Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial

```
set.seed(1)
lambda = 3     #rate parameter chosen for the simulations
simnum <- 100

simdata <- matrix(rexp(simnum, rate=lambda), simnum)
sim_rowmean <- apply(simdata,1,mean)
simdata_mean <- mean(sim_rowmean)
sim_var <- var(sim_rowmean)
simdata_mean
sim_var
```
Mencari mean dan varian dari 100 data random

![image](https://user-images.githubusercontent.com/89954689/162618394-3dfd585f-9930-4e59-99f5-e95d2b7028ab.png)

#### 6 Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
#### a Fungsi Probabilitas dari Distribusi Normal P(X1 ??? x ??? X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik.

```
data_norm <- rnorm(100, 50, 8)
median_norm <- median(data_norm)
dnorm(median_norm, mean = 50, sd = 8)
z_scores <- (data_norm-mean(data_norm))/sd(data_norm)
plot(data_norm,type = "o")
```
Memasukkan 100 data random ke dalam variabel data_norm. Lalu, dicari mediannya. Median tersebut akan dicari probabilitasnya. Lalu, kita akan menghitung Z-Scorenya dengan rumus (data_norm-mean(data_norm))/sd(data_norm). Lalu, data akan di plot dengan tipe line graph.

![image](https://user-images.githubusercontent.com/89954689/162618554-3a95b4fa-7a55-46a1-9b99-c85c1606fe15.png)

#### b Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:NRP_Nama_Probstat_{Nama Kelas}_DNhistogram

```
library(rcompanion)
plotNormalHistogram( data_norm, prob = FALSE,
                     main = "5025201175_Adinda Zahra Pamuji_Probstat_D_DNhistogram",
                     breaks=50 )
```
Disini kita akan menggunakan library rcompanion untuk mendapatkan fungsi plotNormalHistogram. Fungsi ini akan membuat histogram Distribusi Normal dengan curve sesuai dengan datanya

![image](https://user-images.githubusercontent.com/89954689/162618605-7367eb87-013d-47b3-ae44-f5fc163d372d.png)

#### c Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Normal

```
mean(data_norm)
var(c(data_norm))
```
Disini, kita menggunakan fungsi mean untuk mencari rataan dan var untuk mencari varian dari data.

![image](https://user-images.githubusercontent.com/89954689/162618691-bade10a7-0601-41c1-b32d-b42d405dfac8.png)
