//
//  WriteView.swift
//  Toonie
//
//  Created by 이재은 on 20/07/2019.
//  Copyright © 2019 Yapp. All rights reserved.
//

import UIKit

final class WriteView: UIView {
    
    @IBOutlet private weak var writeView: UIView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var contentTextView: UITextView!
    @IBOutlet private weak var cancelButton: UIButton!
    @IBOutlet private weak var deleteButton: UIButton!
    @IBOutlet private weak var confirmButton: UIButton!
    
    //    var view: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib()
        setCorner()
    }
}

private extension WriteView {
    
    
    func setCorner() {
        writeView.layer.cornerRadius = 5
    }
    
    func setEditView() {
        titleLabel.text = "글쓰기"
        contentTextView.text = ""
        deleteButton.isHidden = true
    }
    
    func setWriteView() {
        titleLabel.text = "수정하기"
        contentTextView.text = "수정수정"
        deleteButton.isHidden = false
    }
    
    
    func loadViewFromNib() {
        guard let view = Bundle.main.loadNibNamed("WriteView", owner: self, options: nil)?.first as? UIView else { return }
        //            let bundle = Bundle.init(for: type(of: self))
        //            let nib = UINib(nibName: "WriteView", bundle: bundle)
        //            guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return UIView() }
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        //            return view
        
//        if
    }
    
}
