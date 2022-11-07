import UIKit

protocol Parser {
    // associatedtype = 연관 타입
    associatedtype Input // 모든것이 가능, string, iknt, array,,,
    associatedtype Output
    
    func parse(input: Input) -> Output
    // func parse(input: String) -> String
    // 변환의 이유 : HTML에서는 return 배열을 하고 싶어하기 때문에, input, ouput 설정 후 수정
}

class TextFlipParser: Parser {
    func parse(input: String) -> String {
        return ""
    }
}

class HTMLParser: Parser {
    func parse(input: String) -> [String] {
        return []
    }
}

class JsonParser: Parser {

    // Input, output 생략 가능
    typealias Input = String
    typealias Output = [String:String]
    
    func parse(input: Input) -> Output {
        return [:]
    }
}

func runParser<P: Parser>(parser: P, input: [P.Input]) where
    // p는 타입, 그 타입은 Parser 프로토콜 준수
    P.Input == JsonParser { // JsonParser 로 Input 제한하기
    input.forEach{
        _ = parser.parse(input: $0)
    }
}


