//
//  Animation+.swift
//  Toonie
//
//  Created by 양어진 on 23/03/2019.
//  Copyright © 2019 Yapp. All rights reserved.
//

import UIKit

extension UIViewController {
    //커스텀 팝업 띄우기 애니메이션
    func showAnimate() {
        self.view.transform = CGAffineTransform(scaleX: 1.3,
                                                y: 1.3)
        
        // Review: view 범위에서 animation 동작을 정의하는 것이 좋아보입니다.
        // https://github.com/kimtaesu/MediaSearch/blob/master/MediaSearch/UIView%2BAnimation.swift
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0,
                                                    y: 1.0)
        })
    }
    
    //커스텀 팝업 끄기 애니메이션
    func removeAnimate() {
        // Review: removeFromSuperview 호출하면 검은화면이 나타나기 때문에 snapshotview 를 사용하거나 다른 View의 transition이 필요합니다.
        // https://developer.apple.com/documentation/uikit/uiview/1622531-snapshotview
        UIView.animate(withDuration: 0.25,
                       animations: {
                        self.view.transform = CGAffineTransform(scaleX: 1.3,
                                                                y: 1.3)
                        self.view.alpha = 0.0},
                       completion: { (_) in
                        self.view.removeFromSuperview()
        })
    }
    
}
