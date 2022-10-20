import UIKit


// MARK: - StructInitializer
// struct에 대해서 기본 초기화를 유지하면서 새로운 initializer를 만들고 싶을 때는 extension을 사용하면 됨
struct Student {
    let firstName: String
    let lasetName: String
    let grade: String
}

// grade 값을 사용하지 않도록 커스터마이징 초기화하기
extension Student {
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lasetName = lastName
        self.grade = ""
    }
    
}

// grade 없는 변수 생성
// extension으로 초기화 하면 커스터마이징한 초기화와 원래 struct의 기본 초기화 모두 사용 가능
let student = Student(firstName: "SeoYeon", lastName: "Park")

let student2 = Student(firstName: "SY", lasetName: "P", grade: "1")
