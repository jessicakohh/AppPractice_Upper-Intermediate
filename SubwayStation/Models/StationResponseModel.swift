//
//  StationResponseModel.swift
//  SubwayStation
//
//  Created by juyeong koh on 2023/01/02.
//

// 네비게이션 바 (서울시 지하철 정보 검색)

import Foundation

struct StationResponseModel: Decodable {
    
    var stations: [Station] { searchInfo.row }
    
    private let searchInfo: SearchInfoBuSubwayNameServiceModel
    
    enum CodingKeys: String, CodingKey {
        case searchInfo = "SearchInfoBuSubwayNameService"
    }
    struct SearchInfoBuSubwayNameServiceModel: Decodable {
        var row: [Station] = []
    }
}

struct Station: Decodable {
    let stationName: String
    let lineNumber: String
    
    enum CodingKeys: String, CodingKey {
        case stationName = "SATATION_NM"
        case lineNumber = "LINE_NUM"
    }
}
