//
//  LatestService.swift
//  Toonie
//
//  Created by 이재은 on 05/05/2019.
//  Copyright © 2019 Yapp. All rights reserved.
//

import Foundation

struct LatestService: Requestable {
    typealias NetworkData = WorkList
    static let shared = LatestService()
    
    /// 최근 본 툰 post 통신
    // Review: Error 처리 확실히!
    func postLatestToon(params: [String: Any],
                        completion: @escaping () -> Void) {
        post((API.myLatestList(CommonUtility.getUserToken() ?? "")), params: params) { result in
                switch result {
                case .networkSuccess(let data):
                    if data.resResult.success == false {
                        return
                    }
                    completion()
                    print("LatestToon post success")
                case .networkError(let error):
                    print(error)
                case .networkFail:
                    print("LatestToon Post fail")
                }
        }
    }

    /// 최근 본 툰 get 통신
    // Review: Error 처리 확실히!
    func getLatestToon(completion: @escaping ([ToonList]?) -> Void) {
        get(API.myLatestList(CommonUtility.getUserToken() ?? "")) { result in
            switch result {
            case .networkSuccess(let data):
                completion(data.resResult.toonList)
            case .networkError(let error):
                print(error)
            case .networkFail:
                print("LatestToon Get Fail")
            }
        }
    }
}
