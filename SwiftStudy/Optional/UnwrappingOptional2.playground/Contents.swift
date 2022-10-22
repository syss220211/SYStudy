import UIKit

struct Student: CustomStringConvertible {
    
    var description: String {
        var studentDescription = "\(firstName)"
        if let middleName = middleName {
            studentDescription += "\(middleName)"
        }
        
        studentDescription += " \(lastName)"
        
        if let grade = grade {
            studentDescription += " \(grade)"
        }
    
        return studentDescription
    }
    
    let firstName: String
    let lastName: String
    let middleName: String?
    let grade: String?
}

let student = Student(firstName: "Yeon", lastName: "Park", middleName: "Seo", grade: "A")

print(student)

