
import Foundation
import SwiftUI
// ----------------------------------------------------------
// 🔹 Swift Set Nedir?
// - Set, aynı tipteki değerleri sırasız ve benzersiz şekilde saklayan koleksiyon tipidir.
// - Array’den farkı:
//   ✅ Sıra önemli değildir.
//   ✅ Tekrarlayan değerler saklanmaz.
// ----------------------------------------------------------

// 1. Set Tanımlama
// Boş set
var numbers = Set<Int>()

// Başlangıç değerleri ile set
var fruits: Set<String> = ["Apple", "Banana", "Orange"]

// Tipi otomatik çıkarır
var colors: Set = ["Red", "Blue", "Green"]


// ----------------------------------------------------------
// 2. Eleman Ekleme & Silme
// ----------------------------------------------------------
var nums: Set = [1, 2, 3]

// Eleman ekleme
nums.insert(4)
nums.insert(2)   // Tekrar eklenmez

// Eleman silme
nums.remove(1)
nums.removeAll()

// Eleman var mı?
print(nums.contains(3))  // true / false


// ----------------------------------------------------------
// 3. Elemanlara Erişim
// - Set sırasız olduğu için index ile erişim yoktur
// - Döngü ile gezilebilir
// ----------------------------------------------------------
let fruitSet: Set = ["Apple", "Banana", "Orange"]

for fruit in fruitSet {
    print(fruit)
}


// ----------------------------------------------------------
// 4. Temel Özellikler
// ----------------------------------------------------------
let fruitsSet: Set = ["Apple", "Banana", "Orange"]

print(fruitsSet.count)     // Eleman sayısı
print(fruitsSet.isEmpty)   // Boş mu?

// first ve random erişim
print(fruitsSet.first!)
print(fruitsSet.randomElement()!)


// ----------------------------------------------------------
// 5. Küme Operasyonları
// - union: birleşim
// - intersection: kesişim
// - subtracting: fark
// - symmetricDifference: simetrik fark
// ----------------------------------------------------------
let odd: Set = [1, 3, 5, 7, 9]
let even: Set = [2, 4, 6, 8]
let primes: Set = [2, 3, 5, 7]

print(odd.union(even))              // Birleşim → [1,2,3,4,5,6,7,8,9]
print(odd.intersection(primes))     // Kesişim → [3, 5, 7]
print(odd.subtracting(primes))      // Fark → [1, 9]
print(odd.symmetricDifference(primes)) // Simetrik fark → [1, 2, 9]


// ----------------------------------------------------------
// 6. Alt Küme & Eşitlik Kontrolü
// ----------------------------------------------------------
let smallSet: Set = [1, 2]
let bigSet: Set = [1, 2, 3, 4]

print(smallSet.isSubset(of: bigSet))     // Alt küme mi? → true
print(bigSet.isSuperset(of: smallSet))   // Üst küme mi? → true
print(smallSet.isDisjoint(with: [5, 6])) // Kesişim yok mu? → true


// ----------------------------------------------------------
// 7. İleri Seviye Kullanım
// Array içindeki tekrar eden elemanları kaldırmak
// ----------------------------------------------------------
let numberList = [1, 2, 3, 2, 1, 4, 5]
let uniqueNumbers = Set(numberList)   // {1,2,3,4,5}
print(uniqueNumbers)


// ----------------------------------------------------------
// 8. Profesyonel Kullanım Senaryoları
// - Tekrarları önlemek (ör. e-mail, favori ürünler)
// - Hızlı arama (yasaklı kelimeler, kara liste)
// - Küme işlemleri (ortak arkadaş, ortak dersler)
// - Unique ID saklamak (okunan makaleler, oyun bölümleri)
// - Veri temizleme (duplicate silmek)
// - Çapraz kontrol (stokta olan ürünler, zorunlu dersler)
// ----------------------------------------------------------


// ----------------------------------------------------------
// 🎯 Örnek: Sosyal Medya Ortak Arkadaş Bulma
// ----------------------------------------------------------
let mustafaFriends: Set = ["Ali", "Ahmet", "Zeynep"]
let mehmetFriends: Set = ["Zeynep", "Ayşe", "Ali"]

let commonFriends = mustafaFriends.intersection(mehmetFriends)
print(commonFriends) // {"Ali", "Zeynep"}
