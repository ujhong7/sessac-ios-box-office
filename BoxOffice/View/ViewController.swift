//
//  ViewController.swift
//  BoxOffice
//
//  Created by yujaehong on 2/15/24.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let movieManager = MovieManager(networkManager: NetworkManager.shared)
        
        // 오늘의 일일 박스오피스 조회
        movieManager.fetchDailyBoxOfficeList(date: "20210201") { movies in
            if let movies = movies {
                let myMovies = movies.boxOfficeResult.dailyBoxOfficeList.map {
                    MyDailyBoxOfficeList(movieNm: $0.movieNm, rank: $0.rank, openDate: $0.openDt, audiCnt: $0.audiCnt, accAudi: $0.audiAcc, movieCodeNm: $0.movieCD)
                }
                dump(myMovies)
            } else {
                print("영화데이터가 없습니다. 다운로드에 실패했습니다.")
            }
        }
        
        
        // 영화 개별 상세 조회
        movieManager.fetchMovieInfo(movieCode: "20124079") { movieCodeNumber in
            if let movieCodeNumber = movieCodeNumber {
                dump(movieCodeNumber)
            } else {
                print("X")
            }
        }
        
    }
    
}


