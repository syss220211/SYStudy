import UIKit

var greeting = "Hello, playground"

func calculate(_ a: Int, b: Int, operator: String) -> Int {
    switch `operator` {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    case "/":
        return a / b
    case "%":
        return a % b
    default:
        return 0
    }
}
calculate(10, b: 20, operator: "+")


func sum(_ array: [Int]) -> Int {
    return array.reduce(0, +)
}
sum([1,2,3])



struct Cloth {
    let name: String
    let price: Double
    var type: String
    var tag: [String]
}

//enum Kind: String {
//    case cap = "모자"
//    case top = "상의"
//    case bottom = "하의"
//    case shoes = "신발"
//}
//
//Cloth(name: "옷", price: 200, type: Kind.cap.rawValue, tag: ["상의", "하의"])


enum Kind {
    case cap
    case top
    case bottom
    case shoes
    
    var localized: String {

        switch self {
        case .cap: return "모자"
        case .top: return "상의"
        case .bottom: return "하의"
        case .shoes: return "신발"
        }
    }
    
    var price: Double {
        switch self {
        case .top: return 5000
        case .shoes: return 40
        case .bottom: return 400
        case .cap: return 1000
        }
    }
}

Kind.cap.price
Cloth(name: "옷", price: 200, type: Kind.shoes.localized, tag: ["상의", "하의"])


enum Shape {
    case rectangle(Double, Double)
    case triangle(Double, Double)
    case circle(Double)
    
    var area: Double {
        switch self {
        case .rectangle(let width, let height):
            return width * height
        case .triangle(let width, let height):
            return width * height / 2
        case .circle(let radius):
            return radius * radius * 3.14
        }
    }
}

Shape.rectangle(10, 10).area
Shape.triangle(3, 4).area
Shape.circle(3).area
