import UIKit

let students = ["Alex","Mary","John","Steven"]
let grades = [4, 3, 6, 7]

let pair = zip(students, grades)


for studentAndGrade in pair {
    print(studentAndGrade.0)
    print(studentAndGrade.1)
} // students와 grades가 매칭되어 나옴

// 만약 한쪽이 적은 경우 매칭은 적은 변수에 맞추어서 결합됨
let fruit = ["peach","cherry","orange","apple"]
let price = [10, 12]

let store = zip(fruit, price)
for fruitAndPrice in store {
    print(fruitAndPrice.0)
    print(fruitAndPrice.1)
}
// peach, cherry만 출력
