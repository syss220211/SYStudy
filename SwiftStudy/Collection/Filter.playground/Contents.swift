import UIKit

/*
var names = ["Alex","John","Steven","Mary"]

let finalNames = names.filter { name in
    return name.count > 4
}
print(finalNames) // 결과 : Steven (4글자 이상)
*/

struct Movie {
    let title: String
    let genre: String
}

var movies = [Movie(title: "Lord of the Rings", genre: "Fiction"),
            Movie(title: "ET", genre: "Ficiton"),
            Movie(title: "Finding Nemo", genre: "Kids"),
            Movie(title: "Cars", genre: "Kids")]

// 영화 지우기
let movieToRemove = Movie(title: "Finding Nemo", genre: "Kids")

movies = movies.filter{movie in
    return movie.title != movieToRemove.title
}
print(movies)

// kids movies 만 얻기
//let kidMovies = movies.filter { movie in
//    return movie.genre == "Kids"
//}
//print(kidMovies)
