import UIKit

protocol Account {
    
    var balance: Double { get set }
    
    mutating func deposit(_ amount: Double)
    mutating func withdraw(_ amount: Double)
    func transfer(from: Account, to: Account, amount: Double)
    func calculatedIntersetEarned() -> Double
}
extension Account {
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
    
    func calcuateInterestEarned() -> Double {
        return (balance * (0.1/100))
    }
}

struct VerificationRequest {
    let accounts: [Account]
}

struct VerificationResponse {
    let verified: Bool
}

protocol Verification {
    func perfromVerification(_ request: VerificationRequest, completion: (VerificationResponse) -> Void)
}

extension Verification {
    func perfromVerification(_ request: VerificationRequest, completion: (VerificationResponse) -> Void) {
        // perform the verification
    }
}

struct CheckingAccount: Account, Verification {
    var balance: Double
    
//    mutating func deposit(_ amount: Double) {
//        balance += amount
//    }
//
//    mutating func withdraw(_ amount: Double) {
//        balance -= amount
//    }
//
    func calculatedIntersetEarned() -> Double {
        return (balance * (0.2/100))
    }
    
    func transfer(from: Account, to: Account, amount: Double) {
        perfromVerification(VerificationRequest(accounts: [from, to])) {
            (response) in if response.verified {
                
            }
        }
    }
}

struct MoneyMarketAccount: Account {
        
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
    
    func calculatedIntersetEarned() -> Double {
        return (balance * (0.1/100))
    }
    func transfer(from: Account, to: Account, amount: Double) {
        
    }
}

let checkingAccount = CheckingAccount(balance: 100)
