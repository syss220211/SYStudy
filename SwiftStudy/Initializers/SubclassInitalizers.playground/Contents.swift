import UIKit


// MARK: - Subclass Initializer
// class는 상속 가능, 다른 클래스로부터 상속 받으면 상속 클래스는 subclass, 이 클래스를 상속해주는 클래스는 superclass라고 함

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
    }
}

// Car를 상속받는 Tesla 클래스 생성
class Tesla: Car {
    // Tesla의 추가 속성 range
    var range: Double
    
    // 상속 후 range를 포함해서 모두 초기화하면 그 초기화만 사용가능
    // 슈퍼 클래스의 convenience init와 기본 init 도 사용하기 위해서는 override init으로 사용 가능
    // car 클래스의 초기화를 다시 재정의
    override init(make: String, model: String, color: String){
        self.range = 300 // 기존거 재정의 이기 때문에 ranges는 임의값 넣기
        super.init(make: make, model: model, color: color)
    }
}

// 두개의 init 사용 가능
let tesla = Tesla(make: "test", model: "model1", color: "Red")

let tesla2 = Tesla(make: "test2", model: "model2")
