//
//  RankingFeature.swift
//  AppStore
//
//  Created by juyeong koh on 2022/11/06.
//

import Foundation

struct RankingFeature: Decodable {
    let title: String
    let description: String
    let isInPurchaseApp: Bool
}
