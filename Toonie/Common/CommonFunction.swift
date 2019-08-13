//
//  CommonFunc.swift
//  Toonie
//
//  Created by 양어진 on 26/05/2019.
//  Copyright © 2019 Yapp. All rights reserved.
//

import Foundation

/// 배열 랜덤 n개 목록 만들기
// Review: extesion 함수로 대체하는 것이 좋습니다.
/*
 extension Array {
 func makeRandomList() -> [Element] {
 var temporaryList = self
 var randomList = [Element]()
 for _ in 0..<self.count {
 let index = Int(arc4random_uniform(UInt32((temporaryList.count - 1))))
 randomList.append(temporaryList[index])
 temporaryList.remove(at: index)
 }
 return randomList
 }
 }
 */

func makeRandomList<T>(_ list: [T], number: Int) -> [T] {
    var temporaryList = list
    var randomList: [T] = []
    for _ in 0..<number {
        let index = Int(arc4random_uniform(UInt32((temporaryList.count - 1))))
        randomList.append(temporaryList[index])
        temporaryList.remove(at: index)
    }
    return randomList
}

///키워드에 쓰일 문자열, 문자열에 대한 이미지 매핑
func tagImage(name: String, storyboardName: String) -> String {
    switch name {
    case "반려동물":
        return storyboardName == "Look" ? "LookCategoryImg_1" : "tagPet"
    case "직업":
        return storyboardName == "Look" ? "LookCategoryImg_2" : "tagCareer"
    case "음식":
        return storyboardName == "Look" ? "LookCategoryImg_3" : "tagFood"
    case "자취생활":
        return storyboardName == "Look" ? "LookCategoryImg_4" : "tagLivealone"
    case "해외":
        return storyboardName == "Look" ? "LookCategoryImg_5" : "tagAbroad"
    case "페미니즘":
        return storyboardName == "Look" ? "LookCategoryImg_6" : "tagFeminism"
    case "심리 감정":
        return storyboardName == "Look" ? "LookCategoryImg_7" : "tagPsychology"
    case "여행":
        return storyboardName == "Look" ? "LookCategoryImg_8" : "tagTrip"
    case "학교생활":
        return storyboardName == "Look" ? "LookCategoryImg_9" : "tagCampus"
    case "가족":
        return storyboardName == "Look" ? "LookCategoryImg_10" : "tagFamily"
    case "자기계발":
        return storyboardName == "Look" ? "LookCategoryImg_11" : "tagSelfDevelopment"
    case "사랑 연애":
        return storyboardName == "Look" ? "LookCategoryImg_12" : "tagLove"
    default:
        return "dum2"
    }
}
