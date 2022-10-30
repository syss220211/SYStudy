import UIKit

// MARK: - Error - Throwing errors
/*
 Type of Errors
 1. Syntax Errors
 2. Runtime Errors
 3. Logic Errors
 */

enum BankAccountError: Error {
    case insufficientFunds
    case accountClosed
}

class BankAccount {
    var balance: Double
    
    init(balance: Double) {
        self.balance = balance
    }
    
    func withdraw(amount: Double) throws {
        if balance < amount {
            throw BankAccountError.insufficientFunds
        }
        balance -= amount
    }
    
}

let account = BankAccount(balance: 100)
//account.withdraw(amount: 300)

do {
    try account.withdraw(amount: 300)
} catch {
    print(error)
}
