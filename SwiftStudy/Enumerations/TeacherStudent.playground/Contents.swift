import UIKit
// MARK: - 100% 확신할 수 있는 정보라면, 기본 클래스를 생성하고 서브 클래싱에서 활용하면 되지만 그것이 아니라면 enum을 사용하는 것이 낫다
/*
// teacher 와 student의 공통 속성 User 클래스
class User {
    var name: String
//    var courses: [String]
    var isFullTime: Bool
    
    init(name: String, isFullTime: Bool){
        self.name = name
//        self.courses = courses
        self.isFullTime = isFullTime
    }
}

class Staff: User {
    // staff는 강의를 제공하지 않기 때문에 User 클래스의 courses를 사용하지 않음
}

class Teacher: User {
    var courses: [String]
    
    init(name: String, courses: [String], isFullTime: Bool){
        self.courses = courses
        super.init(name: name, isFullTime: isFullTime)
    }
}

class Student: User {
    var courses: [String]
    
    init(name: String, courses: [String], isFullTime: Bool){
        self.courses = courses
        super.init(name: name, isFullTime: isFullTime)
    }
}
*/

struct Student {
    let name: String
    let courses: [String]
    let isFullTime: Bool
}

struct Teacher {
    let name: String
    let courses: [String]
    let isFullTime: Bool
}

struct Staff {
    let name: String
    let isFullTime: Bool
}

// 바로 새로운 struct 추가 가능
struct International {
    let name: String
    let inFullTime: Bool
    let course: [String]
    let countryOfOrgin: String
}

enum User {
    case student(Student)
    case teacher(Teacher)
    case staff(Staff)
    case international(International) // 추가
}

func updateProfile(user: User) {
    switch user {
    case .student(let student):
        print(student)
    case .teacher(let teacher):
        print(teacher)
    case .staff(let staff):
        print(staff)
    case .international(let international):
        print(international)
    }
}

updateProfile(user: User.student(Student(name: "SeoYeon", courses: ["Math", "Swift"], isFullTime: true)))
