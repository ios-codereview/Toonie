//
//  RecommendPopUpViewController.swift
//  Toonie
//
//  Created by 이재은 on 21/07/2019.
//  Copyright © 2019 Yapp. All rights reserved.
//

import UIKit

class RecommendPopUpViewController: UIViewController {
    @IBOutlet private weak var recommendPopUpView: UIView!
    @IBOutlet private weak var recommendCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViewCorner()
    }
    
    @IBAction func recommendButtonDidTap(_ sender: Any) {
    }
    
    @IBAction func cancelButtonDidTap(_ sender: Any) {
    }
    
    func setViewCorner() {
        recommendPopUpView.setCorner(cornerRadius: 5.0)
    }
}

extension RecommendPopUpViewController: UICollectionViewDelegate {
    
}
