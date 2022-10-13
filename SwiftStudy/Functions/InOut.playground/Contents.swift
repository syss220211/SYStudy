import UIKit


// In - Out Parameters
// 함수의 매개변수는 기본적으로 상수라서 함수 매개 변수의 값을 해당 함수의 본문 내에서 변경하려고 하면 에러가 난다
// in out 으로 해결 가능.
// var 인 경우에만 inout 매개변수로 전달 가능
// 상수 및 리터털은 수정이 불가능하므로 인수로 전달 불가능


struct User {
    var userId: Int?
    let name: String
}

//func saveUser(_ user: User) {
//    code to save the user
//    user.userId = 100
//    -> 오류 발생 -> copy로 해결 -> 개선 -> In out
//}

/*
var user = User(name: "John Doe")
saveUser(user)

func saveUser(_ user: User) -> User {
    var copyUser = user
    copyUser.userId = 100
    return copyUser
}
user = saveUser(user)
*/

// in out
func saveUser(_ user: inout User){
    user.userId = 100
}

var user = User(name: "John")
saveUser(&user)
// &를 통해서 변수가 변경될 수 있음을 나타냄
print(user)
