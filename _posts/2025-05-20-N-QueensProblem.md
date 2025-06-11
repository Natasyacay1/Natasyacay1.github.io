---
title: "N-QueensProblem - Kelompok 4"
date: 2025-06-11 14:30:00 +0700
categories: [Computer Science, Algorithms]
tags: [Daa, Rangkuman]
---

## Apa itu N-Queens Problem?

N-Queens Problem adalah masalah klasik dalam ilmu komputer dan matematika. Tujuannya adalah menempatkan **N ratu** pada papan catur berukuran **N x N** sedemikian rupa sehingga tidak ada dua ratu yang saling menyerang. Artinya, tidak ada dua ratu yang boleh berada di baris, kolom, atau diagonal yang sama.

### Tujuan Utama N-Queens Problem
1.  **Penempatan Ratu:** Menemukan posisi yang valid untuk setiap ratu.
2.  **Mengidentifikasi Konflik:** Memastikan tidak ada dua ratu yang saling menyerang.
3.  **Mencari Solusi:** Menemukan satu atau semua kemungkinan konfigurasi yang valid.
4.  **Melatih Pemahaman:** Mengembangkan kemampuan problem-solving dan pemahaman algoritma.

## Batasan Masalah (Constraints)

Dalam menyelesaikan N-Queens Problem, kita perlu memperhatikan beberapa batasan penting:

1.  Setiap baris hanya dapat memiliki satu ratu.
2.  Setiap kolom hanya dapat memiliki satu ratu.
3.  Setiap diagonal kiri atas ke kanan bawah hanya dapat memiliki satu ratu.
4.  Setiap diagonal kanan atas ke kiri bawah hanya dapat memiliki satu ratu.
5.  Ukuran papan catur (N) harus bilangan bulat positif.
6.  Jumlah ratu harus sama dengan ukuran papan (N).
7.  Solusi harus unik (jika mencari semua solusi).

## Dasar Teori dan Konsep Backtracking

N-Queens Problem umumnya diselesaikan menggunakan algoritma **Backtracking**.

### Apa Sih Itu Backtracking?
Backtracking adalah teknik algoritmik untuk memecahkan masalah rekursif dengan mencoba membangun solusi secara bertahap. Jika pada suatu titik ditemukan bahwa kandidat solusi saat ini tidak dapat mengarah ke solusi yang valid, algoritma akan "mundur" (backtrack) ke langkah sebelumnya dan mencoba jalur atau pilihan lain. Ini seperti mencari jalan keluar dari labirin: jika menemui jalan buntu, kita kembali ke persimpangan terakhir dan mencoba jalur lain.

### Mengapa N-Queens Bisa Diselesaikan dengan Backtracking?
N-Queens sangat cocok untuk Backtracking karena:
* **Masalah Bersifat Rekursif:** Penempatan ratu di satu baris bergantung pada penempatan ratu di baris berikutnya.
* **Ada Pilihan Solusi Parsial:** Kita bisa menempatkan satu ratu per baris dan memeriksa keamanannya.
* **Memerlukan Enumerasi:** Kita perlu mengeksplorasi banyak kemungkinan solusi.
* **Efisiensi:** Lebih efisien daripada mencoba semua kemungkinan secara brutal (Brute Force) karena kita bisa memangkas jalur yang tidak valid lebih awal.

## Langkah-Langkah Penyelesaian dengan Backtracking

Secara umum, proses penyelesaian N-Queens Problem dengan Backtracking mengikuti langkah-langkah berikut:

1.  **Mulai dari Baris Pertama:** Mulai penempatan ratu dari baris `0`.
2.  **Periksa Keamanan Posisi:** Untuk setiap kolom di baris saat ini, periksa apakah menempatkan ratu di posisi tersebut aman (tidak ada ratu lain di baris, kolom, atau diagonal yang sama).
3.  **Tempatkan Ratu Jika Aman:** Jika posisi aman, tempatkan ratu di sana.
4.  **Lanjutkan ke Baris Berikutnya:** Pindah ke baris `current_row + 1` dan ulangi proses (rekursif).
5.  **Backtrack Jika Tidak Ada Posisi Aman:** Jika tidak ada kolom yang aman di baris saat ini, "mundur" (backtrack) ke baris sebelumnya, hapus ratu dari posisi tersebut, dan coba posisi lain.
6.  **Simpan Solusi Jika Semua Ratu Berhasil Ditempatkan:** Jika semua ratu (N ratu) berhasil ditempatkan tanpa konflik (misalnya, sampai `current_row == N`), maka solusi ditemukan dan dapat disimpan.
7.  **Lanjutkan untuk Mencari Semua Solusi (Opsional):** Setelah menemukan satu solusi, untuk mencari solusi lain, kita akan tetap backtrack dari posisi terakhir dan mencari konfigurasi alternatif.

## Contoh Implementasi (Gambaran Umum)

(Bagian ini bisa diisi dengan cuplikan kode C++ atau penjelasan alur algoritmanya)

### Contoh Output Visual
(Gambar papan catur dengan ratu yang ditempatkan secara valid, jika ada)

## Kesimpulan

N-Queens Problem adalah contoh yang sangat baik untuk memahami kekuatan algoritma Backtracking. Dengan pendekatan rekursif dan kemampuan untuk "mundur" dari jalur yang tidak valid, kita dapat secara efisien menemukan solusi untuk masalah kombinatorial yang kompleks ini. Ini membantu mengasah kemampuan berpikir logis dan strategis dalam mencari solusi optimal.

---
