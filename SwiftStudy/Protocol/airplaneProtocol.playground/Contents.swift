import UIKit

extension Date {
    static func fiveHoursFromNow() -> Date {
        return Date().addingTimeInterval(5 * 60 * 60)
    }
}

protocol AirlineTicket {
    var name: String { get }
    var departure: Date? { get set }
    var arrival: Date? { get set }
}

struct Economy: AirlineTicket {
    let name = "ECON"
    var departure: Date?
    var arrival: Date?
}

struct Business: AirlineTicket {
    let name = "BUS"
    var departure: Date?
    var arrival: Date?
}

struct First: AirlineTicket {
    let name = "FIRST"
    var departure: Date?
    var arrival: Date?
}

class CheckoutService {
    
    var tickets: [AirlineTicket]
    // var tickets: [Ticket]
    init(tickets: [AirlineTicket]) {
        self.tickets = tickets
    }
    
    func addTicket(_ ticket: AirlineTicket) {
        self.tickets.append(ticket)
    }
    // 무슨 티켓인지 확인하기
    func processTicket() {
        tickets.forEach {
            print($0)
        }
    }
}


let economyTickets = [Economy(departure: Date(), arrival: Date.fiveHoursFromNow())]

let service = CheckoutService(tickets: economyTickets) // service는 이코노미 티켓을 사용하도록 설정됨

// tickets의 타입을 AirlineTicket으로 설정하면, 이코노미 티켓만 허용되는것이 아니라
// 항공권 프로토콜을 준수하는 사람은 누구나 체크아웃 서비스를 사용가능하게 됨
service.addTicket(First(departure: Date(), arrival: Date.fiveHoursFromNow()))

service.processTicket()
 

