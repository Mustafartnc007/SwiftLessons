import Foundation
import SwiftUI

// ----------------------------------------------------------
// 🔹 Swift Dictionary (Sözlük) Nedir?
// - Dictionary, her elemanı "anahtar: değer" (key:value) şeklinde tutan koleksiyon tipidir.
// - Array’den farkı:
//   ✅ Array index tabanlıdır, Dictionary key tabanlıdır.
//   ✅ Key benzersizdir (unique olmalı).
//   ✅ Value tekrar edebilir.
// ----------------------------------------------------------


// ----------------------------------------------------------
// 1. Dictionary Tanımlama
// ----------------------------------------------------------

// Boş dictionary
var emptyDict: [String: Int] = [:]

// Başlangıç değerleri ile dictionary
var studentAges: [String: Int] = [
    "Ahmet": 20,
    "Ayşe": 22,
    "Mehmet": 19
]

// Tip çıkarımı (inference)
var countryCodes = ["TR": "Turkey", "US": "United States", "DE": "Germany"]


// ----------------------------------------------------------
// 2. Eleman Ekleme & Güncelleme
// ----------------------------------------------------------
var scores = ["Ali": 85, "Veli": 90]

// Yeni eleman ekleme
scores["Ayşe"] = 95

// Var olan elemanı güncelleme
scores["Ali"] = 100

print(scores)


// ----------------------------------------------------------
// 3. Elemanlara Erişim
// ----------------------------------------------------------
let ages = ["Ahmet": 20, "Ayşe": 22]

// Optional döner, çünkü key olmayabilir
print(ages["Ahmet"])   // Optional(20)
print(ages["Mehmet"])  // nil

// Güvenli erişim (if let)
if let age = ages["Ayşe"] {
    print("Ayşe \(age) yaşında")
} else {
    print("Bulunamadı")
}


// ----------------------------------------------------------
// 4. Eleman Silme
// ----------------------------------------------------------
var cities = ["34": "Istanbul", "06": "Ankara", "35": "Izmir"]

// Key ile silme
cities.removeValue(forKey: "06")

// Tümünü silme
cities.removeAll()

print(cities)


// ----------------------------------------------------------
// 5. Dictionary Döngüleri
// ----------------------------------------------------------
let students = ["Ali": 70, "Veli": 80, "Ayşe": 90]

// key-value birlikte
for (name, score) in students {
    print("\(name): \(score)")
}

// sadece key
for name in students.keys {
    print(name)
}

// sadece value
for score in students.values {
    print(score)
}


// ----------------------------------------------------------
// 6. Temel Özellikler
// ----------------------------------------------------------
let phones = ["Ahmet": "iPhone", "Ayşe": "Samsung"]

print(phones.count)    // Eleman sayısı
print(phones.isEmpty)  // Boş mu?

// Key ve Value listeleri
print(phones.keys)     // ["Ahmet", "Ayşe"]
print(phones.values)   // ["iPhone", "Samsung"]


// ----------------------------------------------------------
// 7. Default Değer ile Erişim
// ----------------------------------------------------------
// Eğer key yoksa varsayılan değer döner
let dict = ["A": 1, "B": 2]
print(dict["C", default: 0]) // 0


// ----------------------------------------------------------
// 8. Nested Dictionary (İç içe sözlükler)
// ----------------------------------------------------------
let classrooms: [String: [String: Int]] = [
    "ClassA": ["Ali": 85, "Veli": 90],
    "ClassB": ["Ayşe": 95, "Fatma": 100]
]

// Eleman erişim
if let classA = classrooms["ClassA"] {
    print(classA) // ["Ali": 85, "Veli": 90]
}


// ----------------------------------------------------------
// 9. İleri Seviye Kullanım
// ----------------------------------------------------------

// reduce ile dictionary'den toplam almak
let salaries = ["Ali": 3000, "Ayşe": 3500, "Veli": 4000]
let totalSalary = salaries.values.reduce(0, +)
print("Toplam maaş: \(totalSalary)")

// map ile dictionary dönüştürme
let upperCaseKeys = salaries.map { (key, value) in
    return key.uppercased()
}
print(upperCaseKeys)


// ----------------------------------------------------------
// 10. Profesyonel Kullanım Senaryoları
// - Kullanıcı bilgilerini saklamak (id:name, email:password)
// - API’den gelen JSON verilerini karşılamak
// - Config / ayar dosyaları
// - Key bazlı hızlı erişim (örn: ürünID → ürün bilgisi)
// - İstatistik tutmak (örn: kelime frekans sayacı)
// ----------------------------------------------------------


// ----------------------------------------------------------
// 🎯 Örnek: Kelime Frekansı Sayacı
// Bir metindeki kelimelerin kaç defa geçtiğini hesaplama
// ----------------------------------------------------------
let text = "swift swift apple code swift apple"
var wordCount: [String: Int] = [:]

for word in text.split(separator: " ") {
    wordCount[String(word), default: 0] += 1
}

print(wordCount)
// Çıktı: ["apple": 2, "code": 1, "swift": 3]

