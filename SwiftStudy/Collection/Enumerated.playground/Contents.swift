import UIKit

struct Movie {
    let title: String
    let genre: String
}

var movies = [Movie(title: "Lord of the Rings", genre: "Fiction"),
            Movie(title: "ET", genre: "Ficiton"),
            Movie(title: "Finding Nemo", genre: "Kids"),
            Movie(title: "Cars", genre: "Kids")]

// enumerated : 배열의 인덱스 가져오기

movies.forEach{ movie in
    addToFavoriteList(movie)
}

func addToFavoriteList(_ movi: Movie){
    
}

movies.forEach{ movie in
    print(movie.title)
}

movies.enumerated().forEach{ (index, movie) in
    print("Movie at \(index) has a title \(movie.title)")
}
