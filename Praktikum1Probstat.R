#1a Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
#sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)

dgeom(x=3, prob=0.2)

#1b mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
#geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

mean(rgeom(n = 10000, prob = 0.2) == 3)

#1c Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

sprintf("Jika di run, maka 1a akan menghasilkan 0.1024. Sedangkan, 1b jika saya run maka akan menghasilkan 0.1016.")
sprintf("Hal ini menunjukkan bahwa walaupun kedua hasil tersebut tidak sama persis, tetapi bisa disimpulkan bahwa simulasi dan teori sejalan")

#1d Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

hist(rgeom(n = 10000, prob = 0.2),labels=T, breaks="Scott")

#1e Nilai Rataan (??) dan Varian (??²) dari Distribusi Geometrik

rataan_geom = 1/0.2
rataan_geom
varian_geom = (1-0.2)/0.2*0.2
varian_geom

#2a Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2
#Tentukan Peluang terdapat 4 pasien yang sembuh.

p = dbinom(4,size=20,prob=0.2)
p

#2b Gambarkan grafik histogram berdasarkan kasus tersebut

x=0:20
plot(0:20, dbinom(0:20, size=20, prob=0.2),type='h')

#2c Nilai Rataan (??) dan Varian (??²) dari Distribusi Binomial

n_binom = 4
p_binom = 0.2
rataan_binom = n_binom * p_binom
varian_binom = rataan_binom * (1-p_binom)
rataan_binom
varian_binom

#3a Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
#4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
#a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok

dpois(6, 4.5)

#3b Simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)

hist(rpois(365, 4.5),breaks = "Scott",labels=T)

#3c dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

sprintf("Hasil dari a adalah 0.1281201, sedangkan hasil dari b adalah 48.")
sprintf("Jika kita kalikan hasil a dengan 365, maka hasilnya adalah %f", 0.1281201*365)
sprintf("Walaupun tidak sama persis, tetapi dapat disimpulkan bahwa simulasi dan teori sejalan")

#3d Nilai Rataan (??) dan Varian ( ??² ) dari Distribusi Poisson

rataan_poisson = 4.5
varian_poisson = 4.5
rataan_poisson
varian_poisson

#4a Diketahui nilai x = 2 dan v = 10. Tentukan Fungsi Probabilitas dari Distribusi Chi-Square

q_chi=2
df_chi=10
dchisq(q_chi, df_chi, ncp = 0)
#4b Histogram dari Distribusi Chi-Square dengan 100 data random

n_chi=100
hist(rchisq(n_chi, df_chi, ncp = 0),labels=T)

#4c Nilai Rataan (??) dan Varian ( ??² ) dari Distribusi Chi-Square

rataan_chi = df_chi
varian_chi = df_chi*2
rataan_chi
varian_chi

#5a Diketahui bilangan acak (random variable) berdistribusi exponential (?? = 3)
#Tentukan Fungsi Probabilitas dari Distribusi Exponensial

dexp(3)

#5b Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

hist(rexp(n = 10, rate = 3),labels=T)
hist(rexp(n = 100, rate = 3),labels=T)
hist(rexp(n = 1000, rate = 3),labels=T)
hist(rexp(n = 10000, rate = 3),labels=T)

#5c Nilai Rataan (??) dan Varian ( ??² ) dari Distribusi Exponensial untuk n = 100 dan ?? = 3

set.seed(1)
lambda = 3     #rate parameter chosen for the simulations
simnum <- 100

simdata <- matrix(rexp(simnum, rate=lambda), simnum)
sim_rowmean <- apply(simdata,1,mean)
simdata_mean <- mean(sim_rowmean)
sim_var <- var(sim_rowmean)
simdata_mean
sim_var

#6a Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8.
#Tentukan Fungsi Probabilitas dari Distribusi Normal P(X1 ??? x ??? X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik.

data_norm <- rnorm(100, 50, 8)
median_norm <- median(data_norm)
dnorm(median_norm, mean = 50, sd = 8)
z_scores <- (data_norm-mean(data_norm))/sd(data_norm)
plot(data_norm,type = "o")

#6b Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
#NRP_Nama_Probstat_{Nama Kelas}_DNhistogram

library(rcompanion)
plotNormalHistogram( data_norm, prob = FALSE,
                     main = "5025201175_Adinda Zahra Pamuji_Probstat_D_DNhistogram",
                     breaks=50 )

#6c Nilai Varian ( ??² ) dari hasil generate random nilai Distribusi Normal

mean(data_norm)
var(c(data_norm))
