import UIKit



struct Teacher{
    let name: String
    let courses: [String]
}

struct Student{
    let name: String
    let courses: [String]
    var grade: String?
}

let teacher = Teacher(name: "John", courses: ["Math", "Science"])
let student = Student(name: "seo yeon", courses: ["Math", "History"])

let users: [Any] = [teacher, student]

for user in users {
    switch user {
    case let user as Student:
        print(user.grade ?? "")
    case let user as Teacher:
        print(user.courses)
    default:
        print("Not student or teacher")
    }
}

enum User {
    case teacher(Teacher)
    case studnet(Student)
}

let allUsers = [User.teacher(teacher), User.studnet(student)]

for user in allUsers{
    switch user{
    case .studnet(let student):
        print(student.grade ?? "")
    case .teacher(let teacher):
        print(teacher.courses)
    }
}
