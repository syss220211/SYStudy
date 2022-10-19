import UIKit

/*
class Ticket{
    var departure: String
    var arrival: String
    var price: Double
    // var preCheck: Bool = false // first class, business   만 사용 가능한 변수
    
    init(departure: String, arrival: String, price: Double){
        self.departure = departure
        self.arrival = arrival
        self.price = price
    }
}

class BuddyPass: Ticket{
    // 가격 변수가 없는 ticket 타입의 클래스
    // price = 0으로 처리할 수 있지만, 식별되지 않은 프로퍼티를 갖고 있을 필요 없음 -> 해결 -> enum
}

class Economy: Ticket {
    
}

class FirstClass: Ticket {
    
    var meal: Bool
    init(departure: String, arrival: String, price: Double, meal: Bool){
        self.meal= meal
        super.init(departure: departure, arrival: arrival, price: price)
    }
}

class Business: Ticket {
    
    var meal: Bool
    var charingPorts: Bool
    
    init(departure: String, arrival: String, price: Double, meal: Bool, charingPots: Bool){
        self.meal= meal
        self.charingPorts = charingPots
        super.init(departure: departure, arrival: arrival, price: price)
    }
}


func checkIn(ticket: Ticket){
    switch ticket {
    case let ticket as Economy:
        print(ticket)
    case let ticket as FirstClass:
        print(ticket)
    case let ticket as Business:
        print(ticket)
    default:
        print("Unidentified ticket!")
        
    }
}*/

struct Economy {
    let departure: String
    let arrival: String
}

struct FirstClass {
    let departure: String
    let arrival: String
    let meal: Bool
}

struct Business {
    let departure: String
    let arrival: String
    let meal: Bool
    let chargingPorts: Bool
}

struct International {
    let departue: String
    let arrival: String
    let meal: Bool
    let chargingPorts: Bool
    let baggageAllowed: Bool
}

enum Ticket {
    case econmy(Economy)
    case firstClass(FirstClass)
    case business(Business)
    case international(International)
}

let ticket = Ticket.business(Business(departure: "Seoul", arrival: "Denver", meal: true, chargingPorts: true))

func checkIn(ticket: Ticket){
    switch ticket {
    case .econmy(let economy):
        print(economy)
    case .firstClass(let firstClass):
        print(firstClass)
    case .business(let business):
        print(business)
    case .international(let international):
        print(international)
    }
}

checkIn(ticket: .econmy(Economy(departure: "Seoul", arrival: "Busan")))





