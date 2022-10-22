import UIKit

// MARK: - Unwrapping Optional

struct Student {
    let firstName : String
    let lastName: String
    var middleName: String?
    var grade: String?
}

var student = Student(firstName: "Yeon", lastName: "Park")
student.middleName = "Seo"
student.grade = "A"

print(student.middleName) // Optional("Seo")

// if let은 여러개로 사용 가능
if let middleName = student.middleName, let grade = student.grade {
    print(middleName) // Seo
    print(grade) // A
}

if let _ = student.grade { // 옵셔널을 쓰지 않지만(값은 필요 없지만), 풀어야 할때 _ 사용
    print("Student has been graded")
}

func displayStudent(student: Student) {
    guard let middleName = student.middleName,
          let grade = student.grade else {
        return
    }
    print(middleName, grade)
}

displayStudent(student: student)



