import UIKit

enum NetWorkError: Error {
    case badURL
    case decodingError
}


// 문자열의 원시값(rawValue)을 가진 열거형
enum TemperatureUnit: String {
    case imperial = "fahreheit"
    case metric = "celsius"
}

func getWEather(unit: TemperatureUnit) throws {
    guard let url = URL(string: "www.weather.com/?unit\(unit.rawValue)") else {
        throw NetWorkError.badURL
    }
    print(url)
}

do {
    try getWEather(unit: .metric)
} catch {
    print(error)
}
