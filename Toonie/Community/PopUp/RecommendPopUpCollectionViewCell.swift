//
//  RecommendPopUpCollectionViewCell.swift
//  Toonie
//
//  Created by 이재은 on 21/07/2019.
//  Copyright © 2019 Yapp. All rights reserved.
//

import UIKit

final class RecommendPopUpCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var toonImageView: UIImageView!
    @IBOutlet private weak var toonTitleLabel: UILabel!
    @IBOutlet private weak var toonTagLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        toonImageView.image = nil
        toonTitleLabel.text = nil
        toonTagLabel.text = nil
        
        toonImageView.setCorner(cornerRadius: self.frame.width / 2)
    }
    
}
