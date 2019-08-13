//
//  KeywordCell.swift
//  Toonie
//
//  Created by 박은비 on 28/02/2019.
//  Copyright © 2019 Yapp. All rights reserved.
//

import UIKit

final class KeywordCell: UICollectionViewCell {
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var cellStatus: Bool = false {
        didSet {
            setBorderViewLayout(status: cellStatus)
        }
    }

    ///didTap 일어날때마다 cellBackgroundView 레이아웃 바꿔주는 함수
    func setBorderViewLayout(status: Bool) {
        if status == false { //선택안함
            // Review: Style을 지정하는 객체로 관리되는 게 좋습니다.
            // https://gist.github.com/felginep/0148b40e26b19d07e81c2e1e4f2ff3d2
            backView.setBorder(color: UIColor.init(white: 0, alpha: 0.4).cgColor,
                               borderWidth: 1)
            titleLabel.textColor = UIColor.init(white: 0, alpha: 0.4)
            backView.backgroundColor = UIColor.white
            titleLabel.font = UIFont.getAppleSDGothicNeo(option: .regular,
                                                                   size: titleLabel.font.pointSize)
        } else {//선택함
            backView.setBorder(color: UIColor.init(white: 0, alpha: 0).cgColor,
                                                   borderWidth: 1)
            backView.backgroundColor = UIColor.init(named: "main")
            titleLabel.textColor = UIColor.init(white: 1, alpha: 1)
            titleLabel.font = UIFont.getAppleSDGothicNeo(option: .bold,
                                                         size: titleLabel.font.pointSize)
        }
        backView.setCorner(cornerRadius: 23.5)
    }
    
}
