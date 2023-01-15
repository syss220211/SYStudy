import UIKit

/*
(label name: Type)
 label : Argument Label
 name : Parameter Name
 */

// Argument Label
func parameterHello(name: String) {
    print("func name: \(name)")
}

func argumentHello(to name: String) {
    print("func name: \(name)")
}

parameterHello(name: "parameterHello")
argumentHello(to: "argumentHello to")

func argumentHello(name: String) {
    print("func name: \(name)")
}

argumentHello(name: "argumentHello")

func argumentHello(_ name: String) {
    print("func name: \(name)")
}

// 와일드 카드를 사용하여 argument 생략하기
argumentHello("argument 생략")

// Variadic Parameters (가변 파라미터)
// argument는 배열 형태로 저장
func printSum(of nums: Int...) { // ... = 가변 파라미터
    var sum = 0
    for num in nums {
        sum += num
    }
    print(sum)
}

printSum(of: 1, 2, 3, 4, 5)

// In - Out Parameters
// 함수 안에서 파라미터 값 변경하기
// argument 는 var 변수이어야 사용 가능
// MARK: 
var num1 = 12
var num2 = 34

func swapNumber(_ a: inout Int, with b: inout Int) {
    let tmp = a
    a = b
    b = tmp
}

// 함수 전 숫자 확인
num1
num2

// 함수 후 숫자 확인
swapNumber(&num1, with: &num2)
num1
num2
