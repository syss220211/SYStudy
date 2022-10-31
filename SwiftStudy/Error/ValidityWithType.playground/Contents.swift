import UIKit

// 이메일 유효성 검사 시나리오

enum ValidationError: Error { // error 종류 정의
    case noEmptyValueAllowed
    case invalidEmail
}

func validateEmail(_ email: String) throws {
    
    // email empty or not 검사
    guard !email.isEmpty else {
        // email이 emptyd일때 실행되는 구문
        throw ValidationError.noEmptyValueAllowed
    }
    
    let pattern = "[A-Z0-9z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    // 이메일과 패턴이 일치하는지 확인
    let emailPredicate = NSPredicate(format: "SELF MATCHES %@", pattern)
    let isValid = emailPredicate.evaluate(with: email)
    if !isValid {
        throw ValidationError.invalidEmail
    }
    
}

do {
    try validateEmail("syss220211@gmail.com")
    print("Email is valid")
} catch {
    print(error)
}

struct Email {
    let text: String
    
    init(_ text: String) throws {
        guard !text.isEmpty else {
            throw ValidationError.noEmptyValueAllowed
        }
        
        let pattern = "[A-Z0-9z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", pattern)
        let isValid = emailPredicate.evaluate(with: text)
        
        if isValid {
            self.text = text
        } else {
            throw ValidationError.invalidEmail
        }
    }
}

do {
    let email = try Email("syss2202112@gmail.com")
    print(email)
} catch {
    print(error)
}
