import UIKit

// MARK: - Force Unwrapping

struct Student {
    let firstName: String
    let lastName: String
    let grade: String?
}

let student = Student(firstName: "John", lastName: "Doe", grade: "A")

// grade : nill 일때 !로 unwrapp -> error
print(student.grade!)

let url = URL(string: "http://www.google.com")! // URL -> return optional
print(url) // 올바른 url 형식이 아닌 경우 아무것도 출력x

//guard let url = URL(string: "aa bbb cc") else {
//    fatalError("URL is not defined!")
//}

print(url)
