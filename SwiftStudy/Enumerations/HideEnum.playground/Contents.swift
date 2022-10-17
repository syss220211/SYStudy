import UIKit


// 구조체에서의 다형성
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
    // 캐스팅을 사용한 안 좋은 방법
    // 단순 for문 사용 시 user가 teachr인지 student인지 모르기 때문에 switch문 사용
    switch user {
    case let user as Student:
        print(user.grade ?? "") // graude 값이 없으면 "" 공백 출력
    case let user as Teacher:
        print(user.courses)
    default: // Any로 타입을 식별했기 때문에 teachr, student, ? 인지 모르기 때문에 디폴트 지정
        print("Not student or teacher")
    }
}

// enum 예제
enum User { // 두가지 type 포함ﬁ
    case teacher(Teacher)
    case studnet(Student)
}

let allUsers = [User.teacher(teacher), User.studnet(student)] // User type의 변수

for user in allUsers{
    switch user{
    case .studnet(let student):
        print(student.grade ?? "")
    case .teacher(let teacher):
        print(teacher.courses)
    }
}
