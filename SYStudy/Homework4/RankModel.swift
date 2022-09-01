//
//  RankModel.swift
//  SYStudy
//
//  Created by geonhui Yu on 2022/09/01.
//

import Foundation

struct RankModel {
    let rank: Int
    let imageName: String
    let name: String
    let price: Int
    let diff: Double
}

extension RankModel {
    static let list: [RankModel] = [
        RankModel(rank: 1, imageName: "TSLA", name: "테슬라", price: 1238631, diff: 0.04),
        RankModel(rank: 2, imageName: "AAPL", name: "애플", price: 238631, diff: 1.04),
        RankModel(rank: 3, imageName: "NFLX", name: "넷플릭스", price: 438_631, diff: -0.04),
        RankModel(rank: 4, imageName: "GOOG", name: "알파벳 A", price: 3_176_631, diff: 0.04),
        RankModel(rank: 5, imageName: "AMZN", name: "아마존", price: 3_538_631, diff: 0.04),
        RankModel(rank: 6, imageName: "NIKE", name: "나이키", price: 158_631, diff: 0.04),
        RankModel(rank: 7, imageName: "DIS", name: "디즈니", price: 138_631, diff: 0.04),
        RankModel(rank: 8, imageName: "TSLA", name: "테슬라", price: 1_238_631, diff: 0.04),
        RankModel(rank: 9, imageName: "AAPL", name: "애플", price: 238_631, diff: 1.04),
        RankModel(rank: 10, imageName: "NFLX", name: "넷플릭스", price: 438_631, diff: -0.04),
        RankModel(rank: 11, imageName: "GOOG", name: "알파벳 A", price: 3_176_631, diff: 0.04),
        RankModel(rank: 12, imageName: "AMZN", name: "아마존", price: 3_538_631, diff: 0.04),
        RankModel(rank: 13, imageName: "NIKE", name: "나이키", price: 158_631, diff: 0.04),
        RankModel(rank: 14, imageName: "DIS", name: "디즈니", price: 138_631, diff: 0.04)]
    
}
