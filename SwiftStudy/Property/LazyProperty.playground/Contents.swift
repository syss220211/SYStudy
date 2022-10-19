import UIKit

// MARK: - Property
/* 프로퍼티
프로퍼티는 클래스, 구조체, 열거형과 관련한 값 (저장 / 계산된 프로퍼티로 나뉨
저장 프로퍼티 : 단순히 값을 저장하고 있는 프로퍼티
let 혹은 var 를 통해 변수로 선언해 사용할 수 있다.
 
Laxy Proptery : 값이 처음으로 사용 되기 전에는 계산되지 않는 프로퍼티, 반드시 var로 선언해야 함 */

enum Level {
    case easy
    case medium
    case hard
}

struct Exam {
    var level: Level
    
//    var questions: [String] {
    lazy var questions: [String] = {
        
        // 타임 딜레이
        sleep(5) // exam.___ 가 5초 뒤에 실행됨
        // 그 뒤로 똑같은 값을 호출하면 한번 호출 했음에도 불구하고 계속 5초를 기다려야 함 -> lazy로 해결
        
        switch level {
        case .easy:
            return ["What is 1+2", "What is 1+2", "What is 1+2"]
        case .medium:
            return ["What is 11+22", "What is 11+22", "What is 11+22"]
        case .hard:
            return ["What is 122+332", "What is 122+332", "What is 122+332"]
        }
    }()
}

var exam = Exam(level: .easy)
print(exam.questions)
// lazy를 사용하면 .easy로 초기화 되어서 1초만 기다리면 바로 실행됨
//print("wait for 1 second")
//sleep(1)
//print(exam.questions)
// lazy를 언제 사용하냐에 따라 초기값 설정 가능
var hardExam = exam
hardExam.level = .hard

print("Hard exam")
print(hardExam.questions) // 실행하면 위에서 .easy로 한번 초기화 되었기 때문에 그대로 실행됨
// print(exam.questions)를 없애면 .hard 실행 가능
        
