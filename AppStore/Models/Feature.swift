//
//  File.swift
//  AppStore
//
//  Created by juyeong koh on 2022/11/06.
//

import Foundation

struct Feature: Decodable {
    let type: String
    let appName: String
    let description: String
    let imageURL: String
}
