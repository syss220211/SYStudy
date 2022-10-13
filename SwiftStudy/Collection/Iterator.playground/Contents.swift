import UIKit

let names = ["apple", "peach", "orange"]

// 기본적인 방법으로 배열 안의 값 출력
//for name in names {
//    print(name)
//}

// Iterator를 사용하여 값을 출력하기
var nameIterator = names.makeIterator()
while let name = nameIterator.next(){
    print(name)
}

// Iterator protocol의 기본 구조
//protocol IteratorProtocol {
//    associatedtype Element
//
//    mutating func next() -> Element
//}

// countdown 예제
struct Countdown: Sequence {
    let start: Int
    func makeIterator() -> some IteratorProtocol {
        return CountdownIterator(self)
    }
}

struct CountdownIterator: IteratorProtocol{
    let countdown: Countdown
    var currentValue = 0
    
    init(_ countdown: Countdown) {
        self.countdown = countdown
        self.currentValue = countdown.start
    }
    
    mutating func next() -> Int? {
        if currentValue > 0 {
            let value = currentValue
            currentValue -= 1
            return value
        } else {
            return nil
        }
    }
}

// 예제 실행

let countdown = Countdown(start: 10)
for count in countdown {
    print(count)
}





