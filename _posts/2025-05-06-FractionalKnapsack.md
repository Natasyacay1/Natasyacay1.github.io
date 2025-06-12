---
title: "Fractional Knapsack Problem - Kelompok 2"
date: 2025-06-11 14:30:00 +0700
categories: [Computer Science, Algorithms]
tags: [greedy-algorithm, fractional-knapsack, optimization, daa]
---

## Pengantar
Fractional knapsack adalah varian dari masalah
knapsack (ransel) dalam algoritma, di mana kita boleh mengambil sebagian dari suatu item (misalnya
setengah, seperempat, dsb.) untuk memaksimalkan
nilai total barang dalam kapasitas ransel tertentu.
Berasal dari kata fractional yang berarti pecahan atau
bagian. Dalam konteks ini, kamu boleh mengambil
sebagian dari suatu item (tidak harus utuh) dan dari
kata knapsack yang artinya ransel atau tas. Ini adalah
metafora untuk kapasitas penyimpanan terbatas.

### Kenapa Masalah Ini Penting?
Pada dasarnya, Knapsack Problem
adalah sebuah masalah yang
muncul ketika kita memiliki sebuah
tas yang memiliki kapasitas terbatas, dan kita ingin memilih barang-barang yang dapat dimasukkan ke dalam tas tersebut untuk memaksimalkan nilai total barang yang kita bawa.

## Jenis Knapsack Problem

## Batasan Masalah (Constraints)
- Setiap item memiliki berat dan nilai.
- Total berat barang yang dipilih tidak boleh melebihi kapasitas knapsack.
- Berbeda dari 0/1 Knapsack, **item dapat diambil sebagian** (misal 40% dari 1 item).

### Tujuan:
Maksimalkan total nilai dari barang-barang yang dimasukkan ke dalam knapsack.

---

## Dasar Teori dan Konsep Greedy

**Apa itu Greedy Algorithm?** 
 
Greedy algorithm memilih opsi terbaik _saat itu juga_, yaitu barang dengan **rasio nilai terhadap berat tertinggi** (`value/weight`). Strategi ini memberikan solusi optimal untuk fractional knapsack, karena kita bisa mengambil sebagian barang.

---

##Kesimpulan
Fractional Knapsack adalah contoh ideal dari penerapan algoritma greedy yang menjamin solusi optimal. Dengan cara memilih item berdasarkan rasio nilai per berat, kita dapat memaksimalkan nilai dengan efisien tanpa perlu pemrograman dinamis.

