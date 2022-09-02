//
//  Animal.swift
//  SYStudy
//
//  Created by geonhui Yu on 2022/09/02.
//

import Foundation

struct Animal {
    let photo: String
    let petName: String
    let petDesc: String
    let isDeath: Bool
}

extension Animal {
    
    static let list: [Animal] = [
        Animal(photo: "007PetListPicBorder", petName: "반려가족이름최대열자", petDesc: "7년 2개월 (여아)", isDeath: true),
        Animal(photo: "007PetListPicBorderNone", petName: "두부", petDesc: "10년 (남아)", isDeath: false),
        Animal(photo: "007CatListPicBorder", petName: "고먐미", petDesc: "1일 (여아)", isDeath: false)
        
    ]
}
