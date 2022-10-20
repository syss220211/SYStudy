import UIKit

// MARK: - Property Observers
// 프로퍼트 값의 변화를 관찰하는 것, 저장 프로퍼티에 추가할 수 있으며 새 값의 속성이 현재 값과 동일하더라도 속성 값이 설정되면 호출됨

// MARK: - 호출 웹사이트 예제

// addingPercentEncoding(withAllowedCharacters:) -> 인자로 받은 set을 제외한 모든 char를 페센트 인코딩된 char로 대체하여 새 문자열을 반환함
// urlHostAllowed set : ! $ & \ ( ) * +  - . : ; = [ ] _ ~

struct Website {
    
    var url: String {
        didSet {
            url = url.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? url
        }
    }
}

var website = Website(url: "www.movies.com/?search=Lord of the Rings")
website.url = "www.movies.com/?search=Lord of the Rings"
print(website) 


