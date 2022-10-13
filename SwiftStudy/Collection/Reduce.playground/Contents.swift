import UIKit

struct Item {
    let name: String
    let price: Double
}

struct Cart {
    
    // private(set) : 외부에서 읽기만 가능하고 변경은 내부에서만 가능한 프로퍼티 설정
    private(set) var items: [Item] = []
    
    mutating func addItem(_ item: Item){
        items.append(item)
    }
    
    var total: Double{
        items.reduce(0) { (value, item) -> Double in
            return value + item.price
        }
        // value : 이전 클로저의 결과값
        // item : reduce 메서드가 순환하는 컨테이너의 요소
        // 초기값 : 0
    }
}

var cart = Cart()
cart.addItem(Item(name: "Milk", price: 4.50))
cart.addItem(Item(name: "Bread", price: 2.50))

print(cart.total)

let items = [2.0, 4.0, 5.0, 7.0]
let total = items.reduce(0, +)

print(total)
