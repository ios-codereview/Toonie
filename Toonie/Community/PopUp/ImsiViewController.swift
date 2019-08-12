//
//  ImsiViewController.swift
//  Toonie
//
//  Created by 이재은 on 21/07/2019.
//  Copyright © 2019 Yapp. All rights reserved.
//

import UIKit

class ImsiViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func writeButtonDidTap(_ sender: Any) {
        writePopUpPresent()
    }
    
    @IBAction func editButtonDidTap(_ sender: Any) {
        writePopUpPresent()
    }
    
    @IBAction func recommendButtonDidTap(_ sender: Any) {
        recommendPopUpPresent()
    }
    
    private func writePopUpPresent() {
        let storyboard = UIStoryboard(name: "Community", bundle: nil)
        if let viewController = storyboard
            .instantiateViewController(withIdentifier: "WriteViewController")
            as? WriteViewController {
            viewController.modalPresentationStyle = .overCurrentContext
            
//            CommonUtility.sharedInstance
//                .communityNavigationViewController?
//                .present(viewController, animated: true, completion: nil)
            
            
            self.navigationController?.present(viewController, animated: true, completion: {
                
            })
        }
    }
    
    private func recommendPopUpPresent() {
        let storyboard = UIStoryboard(name: "Community", bundle: nil)
        if let viewController = storyboard
            .instantiateViewController(withIdentifier: "RecommendPopUpViewController")
            as? RecommendPopUpViewController {
            viewController.modalPresentationStyle = .overCurrentContext
            
            CommonUtility.sharedInstance
                .communityNavigationViewController?
                .present(viewController,
                         animated: false,
                         completion: nil)
        }
    }
    
}
