import UIKit

struct Student {
    let firstName: String?
    let lastName: String?
    
    var displayName: String? {
        switch (firstName, lastName) {
        case let (first?, last?): return "\(first) \(last)" // firstName, lastName 둘 다 존재할 때
        case let (first?, nil): return first
        case let (nil, last?): return last
        default: return nil // 둘 다 nil 일 때
        }
    }
}

let student = Student(firstName: nil, lastName: nil)

func creatGreetingMessage(stduent: Student) -> String {
    let message = """
        Dear \(student.displayName ?? "Student"), Welcome to Swift university.
    """ // displayName이 nil인 경우 Student 출력
    return message
}

let message = creatGreetingMessage(stduent: student)
print(message)
