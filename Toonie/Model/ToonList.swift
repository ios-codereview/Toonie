//
//  ToonList.swift
//  Toonie
//
//  Created by 이재은 on 31/03/2019.
//  Copyright © 2019 Yapp. All rights reserved.
//

import Foundation

struct ToonList : Codable {
  let toonID : String?
  let toonName : String?
  let instaID : String?
  let instaUrl : String?
  let instaThumnailUrl : String?
  let instaInfo : String?
  let instafollowerCnt : String?
  let instaPostCnt : String?
  let instaLatestPostUrl : String?
  let toonTagList : [String]?
  let curationTagList : [String]?
}
