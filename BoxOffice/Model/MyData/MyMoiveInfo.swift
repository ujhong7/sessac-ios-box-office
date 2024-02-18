//
//  MovieDetail.swift
//  BoxOffice
//
//  Created by yujaehong on 2/16/24.
//

import Foundation

// 내가 만들고 싶은 데이터
struct MyMoiveInfo: Decodable {
    let directors: String
    let actors: String
    
    init(directors: String, actors: String) {
        self.directors = directors
        self.actors = actors
    }
}



// TODO ✅
// MyDailyBoxOfficeList처럼 내가 필요한 정보만 빼오기
