import UIKit

// MARK: - 연산 프로퍼티

struct CartItem {
    let name: String
    let price: Double
}

struct Cart {
    let items: [CartItem]
    
    var total: Double { //연산 프로퍼티로 인해 누적 되어서 더해지므로 총합금액을 출력함
        items.reduce(0) {
            return $0 + $1.price
        }
    }
}

let items = [CartItem(name: "Bread", price: 4.50), CartItem(name: "apple", price: 4.3   ), CartItem(name: "peach", price: 10.2)]

let cart = Cart(items: items)
print(cart.total)

/*
// 운동을 기록하는 구조체 예제
struct Workout {
    let startTime: Date
    let endTime: Date
    
    // 시간 측정
    var timeElapsed: TimeInterval {
        endTime.timeIntervalSince(startTime)
    }
}

let start = Date()
sleep(5) // 기록을 위한 5초
let end = Date()

let workout = Workout(startTime: start, endTime: end)
// 운동 시간 체크 basic 한 end - start
//print(workout.endTime.timeIntervalSince(workout.startTime))
workout.timeElapsed
*/


