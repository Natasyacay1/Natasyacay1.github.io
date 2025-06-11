---
title: "SubsetSum - Kelompok 5"
date: 2025-06-11 14:30:00 +0700
categories: [Computer Science, Algorithms]
tags: [DAA]
---


## Subset Sum Problem 
adalah masalah dalam teori kompleksitas yang mencari apakah ada subset dari himpunan bilangan bulat yang jumlahnya sama dengan angka target tertentu.

Masalah ini termasuk dalam kategori NP-Complete, yang berarti sulit untuk diselesaikan secara efisien, tetapi mudah untuk diverifikasi jika solusinya sudah diketahui.

## Pendekatan Penyelesaian:

Brute Force: Menggunakan pendekatan rekursif untuk mencoba semua kombinasi subset. Kompleksitas waktu adalah O(2^n).

Dynamic Programming: Menggunakan tabel untuk menyimpan hasil subproblem yang sudah dihitung untuk meningkatkan efisiensi. Kompleksitas waktu adalah O(n * T).

## Variasi Masalah:

Subset Sum dengan Elemen Negatif: Memerlukan penyesuaian pada metode yang digunakan.

Counting Subsets: Menghitung jumlah subset yang memenuhi target.

Closest Subset Sum: Mencari subset yang jumlahnya paling dekat dengan target jika tidak ada subset yang tepat.

Subset Sum adalah kasus khusus dari 0/1 Knapsack, di mana setiap elemen memiliki berat yang sama dengan nilai.