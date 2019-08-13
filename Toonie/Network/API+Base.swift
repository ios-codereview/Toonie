//
//  API+Base.swift
//  Toonie
//
//  Created by 양어진 on 23/03/2019.
//  Copyright © 2019 Yapp. All rights reserved.
//

import Foundation
/*
 API의 기본 형태
 Base URL과 JSONDecoder의 디코딩 전략 설정
 */
// Review: dynamic 하게 path 를 변경할 수 없습니다.
// Builder 패턴을 적용하는 것이 좋을 것 같습니다.
// https://github.com/start-rxswift/MVVMGithubTDD/blob/master/TddMVVMGithub/Networking/URLRequestBuilder.swift
class API {
    static let baseURL = "http://101.101.167.91:8080"
    
    static let jsonDecoder: JSONDecoder = {
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        return jsonDecoder
    }()
    
    static let chkToonieUpdate = {
        return baseURL + "/version"
    }()
    
    static let token = {
        return baseURL + "/token"
    }()
    
    static let keywords = {
        return baseURL + "/keywords"
    }()
    
    //    static let myKeywords = {
    //        return baseURL + "/mykeywords/\(String(describing: CommonUtility.userToken))"
    //    }()
    
    static let myKeywords = {
        return baseURL + "/mykeywords"
    }()
    
    static let tags = {
        return baseURL + "/tags"
    }()
    
    static let forYouToons = {(token) in
        return baseURL + "/tags/token/" + token
    }
    
    static let toons = {
        return baseURL + "/toons"
    }()
    
    //mykeywords/:token
    static let myKeywordsToken = { (token) in
        return myKeywords + "/" + token
    }
    
    //kewords/:keyword
    static let keywordInfo = { (keyword) in
        return keywords + "/" + keyword
    }
    
    static let worklist = {
        return baseURL + "/worklist"
    }()
    
    static let myFavoriteList = { (token) in
        return baseURL + "/worklist/" + token + "/default"
    }
    
    static let myLatestList = { (token) in
        return baseURL + "/worklist/" + token + "/latest"
    }
    
    static let tagFavoriteList = { (token) in
        return baseURL + "/tags/worklist/" + token + "/default"
    }
    
    static let tagLatestList = { (token) in
        return baseURL + "/tags/worklist/" + token + "/latest"
    }
    
}
