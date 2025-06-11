---
title: "Activity Selection Problem - Penyelesaian dengan Algoritma Greedy"
date: 2025-06-11 14:30:00 +0700
categories: [Computer Science, Algorithms]
tags: [greedy-algorithm, activity-selection, optimization, daa] 
---

## Pengantar
Activity Selection Problem (ASP) adalah masalah klasik dalam ilmu
komputer yang bertujuan untuk memilih serangkaian aktivitas yang
dapat dilakukan dalam satu periode waktu, dengan batasan bahwa
aktivitas-aktivitas tersebut tidak boleh tumpang tindih.

*Kenapa masalah ini penting?*
Jadwal ruangan
Wawancara kerja
Pengelolaan sumber daya

**Batasan Masalah (Constraints)**
Tidak boleh ada tumpang tindih aktivitas: Aktivitas yang
dipilih harus memiliki waktu mulai yang lebih besar atau
sama dengan waktu selesai aktivitas yang sebelumnya
dipilih.
Hanya satu aktivitas dalam satu waktu: Kita tidak bisa
melakukan lebih dari satu aktivitas yang berlangsung
pada waktu yang sama. Artinya, kita harus memikirkan
bagaimana cara memanfaatkan waktu yang ada dengan
sebaik-baiknya.

**Contoh Penerapan**:
- Penjadwalan ruangan meeting
- Pengaturan jadwal wawancara
- Alokasi sumber daya terbatas

**Dasar Teori dan Konsep Greedy**
Apa iru Greedy Algorithm?
Greedy Algorithm adalah pendekatan
pemecahan masalah yang membuat
keputusan terbaik atau optimal pada setiap
langkah, dengan harapan bahwa
keputusan-keputusan lokal yang optimal ini
akan menghasilkan solusi yang global
optimal.

## Implementasi Kode C++

```cpp
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

struct Activity {
    int start;
    int finish;
};

bool compareFinishTime(Activity a1, Activity a2) {
    return (a1.finish < a2.finish);
}

void activitySelection(vector<Activity>& activities) {
    sort(activities.begin(), activities.end(), compareFinishTime);
    
    cout << "Selected Activities:\n";
    int lastFinish = activities[0].finish;
    cout << "• Activity 0 (" << activities[0].start << "-" << activities[0].finish << ")\n";
    
    for (int i = 1; i < activities.size(); i++) {
        if (activities[i].start >= lastFinish) {
            cout << "• Activity " << i << " (" << activities[i].start << "-" << activities[i].finish << ")\n";
            lastFinish = activities[i].finish;
        }
    }
}

int main() {
    vector<Activity> activities = {{1,3}, {2,5}, {4,7}, {6,8}, {5,9}};
    activitySelection(activities);
    return 0;
}
