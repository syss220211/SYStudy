import UIKit

struct Post: Decodable {
    let title: String
    let body: String
}

enum NetworkError: Error {
    case badURL
    case DecodingError
    case badRequest
    case noData
    case custom(Error)
}

/*
 @escaping : 탈출 클로저
 탈출 클로저 : 함수 구문 밖에서 사용 가능
 -> 통신이 성공했을 경우 맞는 데이터를 넣어주고 탈출 클로저 실행, 실패 시에는 실패했다는 것을 알 수 있는 데이터를 넣고 탈출 클로저 실행
 -> 탈출 클로저로 분기 처리 유용
 */

func getPosts(completion:  @escaping (Result<[Post], NetworkError>) -> Void) {
    // post와 error return 
    guard let url = URL(string: "http://jsonplacdholder.typicode.com/posts") else {
        completion(.failure(.badURL))
        return
    }
    
    URLSession.shared.dataTask(with: url) { (data, response, error) in
        
        if let error = error {
            completion(.failure(.custom(error)))
        } else if (response as? HTTPURLResponse)?.statusCode != 200 {
            completion(.failure(.badRequest))
        } else {
            guard let data = data else {
                completion(.failure(.noData))
                return
            }
            
            let posts = try? JSONDecoder().decode([Post].self, from: data)
            if let posts = posts {
                completion(.success(posts))
            } else {
                completion(.failure(.DecodingError))
            }
        }
    }.resume()
}

getPosts { (result) in
    switch result {
    case .success(let posts):
        print(posts)
    case .failure(let error):
        print(error)
    }
}

/*
 2. try?를 사용하여 오류를 옵셔널 값으로 변환하여 처리하기
 : try?를 사용해서 오류를 던지면 반환값은 Nil이 됨
 : 에러가 발생하지 않을 것이라고 확실할 때만 사용
 : try? 사용 후 에러 발생 시 런타임 에러 발생 후 종료됨
 */
