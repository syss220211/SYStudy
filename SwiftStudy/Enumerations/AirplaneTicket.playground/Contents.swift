import UIKit

class Ticket{
    
}

class Economy {
    var departure: String
    var arrival: String
    var price: Double
    
    init(departure: String, arrival: String, price: Double){
        self.departure = departure
        self.arrival = arrival
        self.price = price
    }
}

class FirstClass {
    
    var departure: String
    var arrival: String
    var price: Double
    var meal: Bool
    init(departure: String, arrival: String, price: Double, meal: Bool){
        self.departure = departure
        self.arrival = arrival
        self.price = price
        self.meal= meal
    }
}
