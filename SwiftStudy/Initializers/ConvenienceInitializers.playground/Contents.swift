import UIKit

// MARK: - Convenience Initializers
// init : 클래스의 모든 프로퍼티가 초기화
// convenience : init의 파라미터 중 일부를 기본값으로 설정하여 초기화 진행 가능(보조 느낌), 사용하기 위해서 기본 init이 선언되어 있어야 함

class Car {
    var make: String
    var model: String
    var color: String
    
    init(make: String, model: String, color: String){
        self.make = make
        self.model = model
        self.color = color
    }
    
    convenience init(make: String, model: String){
        self.init(make: make, model: model, color: "white")
        // color는 white로 디폴트한 커스터마이징 초기화
    }
}

let car = Car(make: "Honda", model: "Accord") // car의 color는 white로 설정되어 들어옴
let car2 = Car(make: "Kia", model: "K7", color: "Red") // 기본 초기화를 불러서 색상도 설정 가능
