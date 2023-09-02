# Capital-Asset-Pricing-Model-CAPM-Dengan-Model-Markowitz-dan-Model-Black-Litterman
Capital Asset Pricing Model (CAPM) with Markowitz Model and Black-Litterman Model Bayesian Approach for Portfolio Optimization in LQ45 Stocks


# Backgrounder
Investment involves allocating valuable assets to generate future profits. The capital market offers various long-term financial instruments, including stocks, bonds, mutual funds, and derivatives.

Stocks represent ownership in companies, providing shareholders with profit and asset ownership rights. In Indonesia, the IHSG and LQ45 are prominent stock market indices, with LQ45 consisting of highly liquid stocks, indicating growth potential and financial stability.

However, many individuals are hesitant to invest in the capital market due to limited knowledge and the volatility of stock values linked to economic factors. Diversification through portfolio creation is crucial to reduce investment risks. A portfolio is a collection of valuable assets held by an investor.

An optimal portfolio is formed through efficient portfolio theory, which combines assets with the same return but lower risk or assets with the same risk but higher returns. The Capital Asset Pricing Model (CAPM) is a valuable tool for estimating asset returns.

Various methods, including the Markowitz model, help create an optimal portfolio by minimizing risk and maximizing expected returns. The Markowitz model is versatile and adaptable to different investment goals, primarily focused on risk mitigation to preserve nominal investment value.

Another model for determining an optimal portfolio is the Black Litterman model, introduced by Fischer Black and Robert Litterman in 1990. This model combines equilibrium return information from CAPM and investor expectations as a reference point. The Black Litterman model follows a Bayesian approach, integrating prior investor views with historical data to generate posterior information.

In this research, the aim is to identify the optimal portfolio using the Capital Asset Pricing Model (CAPM) in conjunction with the Markowitz and Black Litterman models, employing a Bayesian approach.

# Dataset
The data source for stock price movements in this study was obtained from the Yahoo Finance website. The companies selected for the study are those with the highest market capitalization in 2022, as mentioned in the background, covering the time period from January 1, 2020, to December 9, 2022.

A good portfolio is not only optimal but also efficient. This research will go through several stages, including selecting and determining stocks as portfolio candidates using CAPM analysis.

 
# Results
In this research, several stages will be followed, including the selection and determination of stocks as portfolio candidates through CAPM. The selected stocks for the optimal portfolio are those that have a $$[R_i>E(R_i)]$$ 

The first step is to calculate the stock return $(R_i)$, market return $(R_m)$, risk-free rate $(R_f)$, systematic risk, or individual stock beta, and the expected return $(E(R_i))$. In this study, stock returns are derived from the LQ45 Index. The calculation of the expected market return $(E(R_m))$ involves averaging the returns of the LQ45 Index from January 2020 to November 2022 and then dividing by the number of observations. Based on the above steps, the calculation results are as follows:

| No | Stocks | Beta     | R_i          | E(Ri)       | Conclusion    |
|----|--------|----------|--------------|-------------|---------------|
| 1  | BBCA   | 0.656147 | 0.000511784  | 0.000388728 | Efficient     |
| 2  | BBRI   | 0.518966 | 0.000412542  | 0.000288132 | Efficient     |
| 3  | BMRI   | 0.511735 | 0.000637929  | 0.000401601 | Efficient     |
| 4  | BYAN   | -0.00987 | 0.003369269  | 0.00012218  | Efficient     |
| 5  | TLKM   | 0.496667 | 0.000123705  | 0.000138909 | Not Efficient |
| 6  | ASII   | 0.46991  | 1.25E-04     | 8.75E-05    | Efficient     |
| 7  | TPIA   | 0.185708 | 0.00016374   | 0.000155737 | Efficient     |
| 8  | BBNI   | 0.495093 | 0.000601433  | 0.000375481 | Efficient     |
| 8  | UNVR   | 0.308831 | -0.000595448 | -7.75E-05   | Not Efficient |
| 10 | ICBP   | 0.430835 | 427E-05      | 9.88E-05    | Not Efficient |

# References
[1] Andriyani, Lilik., dan Machfiroh, Dwi Lailatul. Analisis Komparatif Pembentukan Portofolio Optimal menggunakan Capital Asset Pricing Model (CAPM) dan Stochastic Dominance.  Jurnal Bisnis & Ekonomi. 14(1) : 19-33. 2016.

[2] Komara, Esi., dan Yulianti, Eka., Pembentukan Portofolio Optimal dengan Menggunakan Capital Asset Pricing model (CAPM) pada Indeks LQ-45 periode 2016-2018. Jurnal Ilmu Manajemen dan Bisnis 12(1) : 173-183. 2021

[3] Liadi, Elvina.,  Dharmawan., Komang.,  Nilakusmawati., dan Desak Putu. (). Menentukan Saham Yang Efisien Dengan Menggunakan Metode Capital Asset Pricing Model (CAPM). E-Jurnal Matematika. 9. 23. 10.24843/MTK.2020.v09.i01.p274. 2022

[4] Retno, S. Aplikasi Model Black-Litterman dengan pendekatan Bayes (Studi kasus : Portfolio dengan 4 saham dari S&P500). Proceeding Semnas Matematika UNY November 2008. Yogyakarta : Prosiding Seminar Nasional MIPA UNY. 2009

[5] Rohaeni, O., dan Hartono, N, P. Menentukan Portofolio Optimal Menggunakan Model Markowitz. Jurnal Riset Matematika 1(1) : 57-64. 2021. ISSN: 2460-6464. https://doi.org/10.29313/jrm.v1i1.162  

[6] Rosadi, Dedi. Ekonometrika & Analisis Runtun Waktu Terapan dengan Eviews: Aplikasi bidang ekonomi, bisnis dan keuangan. Andi. Yogyakarta. 2010.
Rosadi, Dedi. Diktat Manajemen Risiko Kuantitatif. Program Studi Statistika. FMIPA UGM. Yogyakarta 2012.

[7] Saputra, Wildan., Suhadak., Penggunaan Metode Capital Asset Pricing Model (CAPM) Dalam Menentukan Saham Efisien (Studi pada Saham-Saham Perusahaan yang Terdaftar di Indeks Kompas100 Periode 2010-2013). Jurnal Administrasi Bisnis (JAB) 25(1) : 1-6. 2015

[8] Sulistyorini, A. Analisis Kinerja Portofolio Saham Dengan Metode Sharpe, Treynor Dan Jensen, Tesis, Magister Manajemen, Universitas Diponegoro Semarang  2009

[9] Syarif, A., Zulfikri, F., Tryanda, D., dan Patria H. Analisis Optimasi Portofolio Sebelum dan Sesudah Covid19: Studi Pada Perusahaan Sektor Kesehatan di Bursa Efek Indonesia. Jurnal Akuntansi Terapan. Indonesia 05(01) : 51-63. 2022.

[10] Yolanda, A, A., Satyahadewi, N., dan Rizki, S, W. Analisis Risiko Portofolio Saham Dengan Metode Varian-Kovarian. Buletin Ilmiah Math. Stat dan Terapannya (Bimaster). 12(3) : 221-228. 2022
