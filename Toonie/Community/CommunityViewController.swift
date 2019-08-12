//
//  CommunityViewController.swift
//  Toonie
//
//  Created by 이재은 on 21/07/2019.
//  Copyright © 2019 Yapp. All rights reserved.
//

import UIKit

///Community의 NavigationController
final class CommunityNavigationController: UINavigationController {
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        CommonUtility.sharedInstance
            .communityNavigationViewController = self
    }
}

final class CommunityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
