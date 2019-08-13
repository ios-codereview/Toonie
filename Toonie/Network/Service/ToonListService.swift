//
//  ForYouToonListService.swift
//  Toonie
//
//  Created by 이재은 on 07/04/2019.
//  Copyright © 2019 Yapp. All rights reserved.
//

import Foundation

struct ToonListService: Requestable {
    typealias NetworkData = ToonLists
    static let shared = ToonListService()
    
    /// '당신을 위한 공감툰' 정보 조회
    // Review: Error 처리 확실히!
    func getForYouToonList(completion: @escaping ([ToonList]?) -> Void) {
        get(API.forYouToons(CommonUtility.getUserToken() ?? "")) { result in
            switch result {
            case .networkSuccess(let data):
                guard let toonList = data.resResult.toonList else { return }
                completion(toonList)
            case .networkError(let error):
                print(error)
            case .networkFail:
                print("ForYouToonList Network Fail")
            }
        }
    }
    
    /// '찜한 작품과 연관된' 정보 조회
    func getFavoriteToonList(completion: @escaping ([ToonList]?) -> Void) {
        get(API.tagFavoriteList(CommonUtility.getUserToken() ?? "")) { result in
            switch result {
            case .networkSuccess(let data):
                guard let toonList = data.resResult.toonList else { return }
                completion(toonList)
            case .networkError(let error):
                print(error)
            case .networkFail:
                print("FavoriteToonList Network Fail")
            }
        }
    }

    /// '최근 본 작품과 연관된' 정보 조회
    func getLatestToonList(completion: @escaping ([ToonList]?) -> Void) {
        get(API.tagLatestList(CommonUtility.getUserToken() ?? "")) { result in
            switch result {
            case .networkSuccess(let data):
                guard let toonList = data.resResult.toonList else { return }
                completion(toonList)
            case .networkError(let error):
                print(error)
            case .networkFail:
                print("LatestToonList Network Fail")
            }
        }
    }
    
}
