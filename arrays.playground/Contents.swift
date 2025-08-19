import Foundation
import SwiftUI


//Swift’te Array (Dizi), aynı türdeki birden fazla değeri sıralı bir şekilde tutmaya yarayan koleksiyon tipidir. Yani, bir “listeler” yapısıdır.
//ARRAY: AYNI TİPTE DEĞERİ TUTAR!!!!!!!

// Boş array oluşturma
var points: [Int] = []
// İçinde değer olan array
var scores:[Int] = [90, 85, 100]

// Swift, tipleri otomatik çıkarabilir
var fruits = ["Apple", "Banana", "Orange"]

//METHODLAR

//EKLEME İŞLEMLERİ
// Tek eleman ekleme
fruits.append("Orange")
// Birden fazla eleman ekleme
fruits += ["Mango", "Pineapple"]
// Belirli index'e ekleme
fruits.insert("Strawberry", at: 1)

//ELEMANA ERİŞİM İŞLEMLERİ
// Index ile erişim (0’dan başlar)
print(fruits[0])  // Apple
// İlk ve son eleman
print(fruits.first!)
print(fruits.last!)
// Eleman sayısı
print(fruits.count)

//SİLME İŞLEMLERİ
// Belirli index'teki elemanı silme: fruits.remove(at: 2)
// İlk elemanı silme: fruits.removeFirst()
// Son elemanı silme: fruits.removeLast()

// Tümünü silme: numbers.removeAll()



// for-in döngüsü
for fruit in fruits {
    print(fruit)
}

// index + value döngüsü
for (index, fruit) in fruits.enumerated() {
    print("Index \(index): \(fruit)")
}


//ARRAY METHODLARI
var numbers = [5, 2, 8, 1]

// Sıralama
numbers.sort()          // [1, 2, 5, 8]
numbers.sorted()        // Yeni sıralı dizi döner

// Ters çevirme
let reversed = numbers.reversed()

// İçeriyor mu?
print(numbers.contains(5))   // true

// Filtreleme
let even = numbers.filter { $0 % 2 == 0 }  // [2, 8]

// Map (dönüştürme)
let squares = numbers.map { $0 * $0 }      // [1, 4, 25, 64]

// Reduce (tek değere indirgeme)
let sum = numbers.reduce(0, +)             // 16


//ÇOK BOYUTLU ARRAY
let matrix: [[Int]] = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

// Eleman erişimi
print(matrix[1][2]) // 6
  
//TEKRAR ADAN SAYIYI ARRAYDAN KALDIRMAK
let numbers1 = [1, 2, 3, 2, 1, 4, 5]
let unique = Array(Set(numbers1))  // [5, 2, 3, 1, 4]

