import SwiftUI
import Foundation


//In Swift, switch is used to check a value against multiple possible cases.
//All possibilities must be covered (or you must include a default).
//Cases end automatically (no need for break).
//It supports advanced features like pattern matching and where clauses.

let number = 2

switch number {
case 1:
    print("Number is 1")
case 2:
    print("Number is 2")
case 3:
    print("Number is 3")
default:
    print("Unknown number")
}
//✅ Output: Number is 2

//MULTIPLE CASES
let letter = "a"

switch letter {
case "a", "e", "i", "o", "u":
    print("It's a vowel")
default:
    print("It's a consonant")
}

//Example2 Input validation
let input = "de"

switch input.uppercased() {
case "US", "UK":
    print("✅ Accepted: English-speaking country (\(input.uppercased()))")

case "DE", "FR":
    print("✅ Accepted: European Union country (\(input.uppercased()))")

case "TR":
    print("✅ Accepted: Turkey (\(input.uppercased()))")

case let code where code.count == 2:
    print("⚠️ Unknown but looks like a valid 2-letter country code: \(code)")

default:
    print("❌ Invalid input: \(input)")
}

//Example3 HTTP Response Handling

let statusCode = 401

switch statusCode {
case 200, 201, 202:
    print("✅ Success – request completed successfully")

case 204:
    print("ℹ️ No Content – nothing to return, but request was fine")

case 301, 302, 307, 308:
    print("➡️ Redirection – resource moved, follow the new location")

case 400:
    print("⚠️ Bad Request – check request format or parameters")
case 401, 403:
    print("🔒 Authentication/Authorization error – login required or access denied")
case 404:
    print("❌ Not Found – resource does not exist")

case 429:
    print("⏳ Too Many Requests – rate limit exceeded")

case 500, 502, 503, 504:
    print("💥 Server Error – try again later")

case 100..<200:
    print("🔍 Informational – request is being processed")
case 200..<300:
    print("✅ General Success range")
case 300..<400:
    print("➡️ General Redirection range")
case 400..<500:
    print("⚠️ General Client Error range")
case 500..<600:
    print("💥 General Server Error range")

default:
    print("🤔 Unknown status code: \(statusCode)")
}

//Example4 USING SWITCH AND ENUMS FOR CLASSIFYING DATE - SPECIAL DATE - HOLIDAYS


enum DayType {
    case workday
    case weekend
    case holiday(name: String)
    case unknown
}

func classifyDay(_ date: Date) -> DayType {
    let calendar = Calendar.current
    
    let weekday = calendar.component(.weekday, from: date) // 1=Sunday, 7=Saturday
    let components = calendar.dateComponents([.month, .day], from: date)
    
    // Resmi tatiller
    let holidays: [(month: Int, day: Int, name: String)] = [
        (1, 1, "New Year"),
        (12, 25, "Christmas"),
        (4, 23, "National Sovereignty and Children's Day (Turkey)")
    ]
    
    // Tatil kontrolü
    if let month = components.month,
       let day = components.day,
       let holiday = holidays.first(where: { $0.month == month && $0.day == day }) {
        return .holiday(name: holiday.name)
    }
    
    // Hafta içi mi?
    switch weekday {
    case 2...6:
        return .workday
    case 1, 7:
        return .weekend
    default:
        return .unknown
    }
}

// ✅ Kullanım
let today = Date()
let result = classifyDay(today)

switch result {
case .workday:
    print("📅 Today is a workday")
case .weekend:
    print("🎉 Today is the weekend")
case .holiday(let name):
    print("🎊 Today is a public holiday: \(name)")
case .unknown:
    print("🤔 Unable to classify today")
}

//SWITCH-RANGE

let score = 87

switch score {
case 0..<50:
    print("Idiot")
case 50..<70:
    print("median")
case 70..<90:
    print("fine")
case 90...100:
    print("perfect")
default:
    print("Invalid grade")
}

//VALUE BINDING

let age = 20

switch age {
case let x where x < 18:
    print("Reşit değil (\(x) yaşında)")
case let x where x >= 18 && x < 65:
    print("Yetişkin (\(x) yaşında)")
case let x:
    print("Yaşlı (\(x) yaşında)")
}

//Example2 Processing the different type of messages

enum Message {
    case text(String)
    case photo(url: String, caption: String?)
    case video(url: String, duration: Int)
}

let incomingMessage = Message.photo(url: "https://example.com/image.jpg", caption: "Vacation!")

switch incomingMessage {
case .text(let content):
    print("📝 Text message: \(content)")

case .photo(let url, let caption):
    if let caption = caption {
        print("📷 Photo at \(url) with caption: \(caption)")
    } else {
        print("📷 Photo at \(url) with no caption")
    }

case .video(let url, let duration) where duration < 60:
    print("🎬 Short video at \(url), duration: \(duration)s")
case .video(let url, let duration):
    print("🎥 Long video at \(url), duration: \(duration)s")
}

//SWITCH-ENUM
//When using enum, all cases must be covered → otherwise, a default must be added.
enum Direction {
    case north, south, east, west
}

let dir = Direction.east

switch dir {
case .north:
    print("Kuzeye gidiliyor")
case .south:
    print("Güneye gidiliyor")
case .east:
    print("Doğuya gidiliyor")
case .west:
    print("Batıya gidiliyor")
}


