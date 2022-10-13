import UIKit

// good, bad ... 의 점수 기준을 두어서 reduce 하기

let ratings = [4, 8.5, 9.5, 2, 6, 3, 5.5, 7, 2.8, 9.8, 5.9, 1.5]

//let results = ratings.reduce([:]) { (results: [String: Int], rating : Double) in
//
//    var copy = results // let인 ratings를 사용하기 위하여
//    // 퀄리티 범위 값 지정
//    switch rating {
//        case 1..<4: copy["Very bad", default: 0] += 1
//        case 4..<6: copy["OK", default: 0] += 1
//        case 6..<8: copy["Good", default: 0] += 1
//        case 8..<11: copy["Excellent", default: 0] += 1
//        default: break // 범위 안에 없는 수라면 break
//    }
//
//    return copy
//}
//print(results)

// 매번 copy 할 수 없기 때문에 사용하는 것이 reduce into

let results = ratings.reduce(into: [:]) { (results: inout [String: Int], rating : Double) in
    
    switch rating {
        case 1..<4: results["Very bad", default: 0] += 1
        case 4..<6: results["OK", default: 0] += 1
        case 6..<8: results["Good", default: 0] += 1
        case 8..<11: results["Excellent", default: 0] += 1
        default: break // 범위 안에 없는 수라면 break
    }
}
print(results)

