import UIKit

// MARK: - Error - Throwing errors
/*
 Type of Errors
 1. Syntax Errors
 2. Runtime Errors
 3. Logic Errors
 */

// enum을 사용하여 사용자 정의 오류 생성
enum BankAccountError: Error {
    case insufficientFunds // 자금 부족
    case accountClosed
}

// 은행 계좌 class, 특정 잔액 보유 가능
class BankAccount {
    var balance: Double
    
    init(balance: Double) {
        self.balance = balance
    }
    
    // 일정 금액 인출 기능
    func withdraw(amount: Double) throws {
        if balance < amount { // 잔액이 금액보다 적은 경우
            throw BankAccountError.insufficientFunds
        }
        balance -= amount
    }
    
}

// 잔액이 100 달러인 은행 계좌 생성
let account = BankAccount(balance: 100)
/* account.withdraw(amount: 300) -> 사용 불가능
throws로 인하여 오류가 났을 때 어떤것을 해야하는지 명시해야 하기 때문에 do - catch 문을 사용해야함
*/
do {
    // try : 실제로 예외를 throw 할 수 있음을 나타냄
    try account.withdraw(amount: 300)
} catch { // error 발생 시 catch
    print(error)
}

/*
 swift 오류 처리 방법
 1) 함수에서 발생한 오류를 해당 함수를 호출한 코드에 전파하기 (do-catch)
 do {
    try 오류 발생 가능 코드
} catch 오류 패턴 {
        처리 코드 = 오류 전달 받아 예외처리 진행
 }
 */
