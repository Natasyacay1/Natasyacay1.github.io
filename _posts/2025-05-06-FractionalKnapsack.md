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

## Implementasi Kode C++

```cpp
#include <iostream>
#include <vector>
#include <algorithm>
#include <iomanip>
using namespace std;

struct Item {
    int weight;
    int value;
};

// Fungsi pembanding berdasarkan rasio nilai/berat
bool compare(Item a, Item b) {
    double r1 = (double)a.value / a.weight;
    double r2 = (double)b.value / b.weight;
    return r1 > r2;
}

double fractionalKnapsack(int W, vector<Item>& items) {
    sort(items.begin(), items.end(), compare);
    double totalValue = 0.0;

    for (int i = 0; i < items.size(); i++) {
        if (W == 0) break;

        if (items[i].weight <= W) {
            W -= items[i].weight;
            totalValue += items[i].value;
            cout << "• Ambil 100% item " << i << " ("
                 << items[i].weight << "kg, nilai: " << items[i].value << ")\n";
        } else {
            double fraction = (double)W / items[i].weight;
            totalValue += items[i].value * fraction;
            cout << "• Ambil " << fixed << setprecision(2) << (fraction * 100)
                 << "% item " << i << " (" << items[i].weight << "kg, nilai: " 
                 << items[i].value << ")\n";
            W = 0;
        }
    }

    return totalValue;
}

int main() {
    vector<Item> items = {{10, 60}, {20, 100}, {30, 120}};
    int capacity = 50;
    cout << "Item yang dipilih:\n";
    double maxValue = fractionalKnapsack(capacity, items);
    cout << "Total nilai maksimum: " << maxValue << endl;
    return 0;
}

##Kesimpulan
Fractional Knapsack adalah contoh ideal dari penerapan algoritma greedy yang menjamin solusi optimal. Dengan cara memilih item berdasarkan rasio nilai per berat, kita dapat memaksimalkan nilai dengan efisien tanpa perlu pemrograman dinamis.

