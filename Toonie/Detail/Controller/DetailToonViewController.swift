//
//  DetailToonViewController.swift
//  Toonie
//
//  Created by 이재은 on 23/03/2019.
//  Copyright © 2019 Yapp. All rights reserved.
//

import UIKit

// 인스타툰 상세 화면
final class DetailToonViewController: UIViewController {
  
  // MARK: - IBOutlets
  
  @IBOutlet fileprivate weak var detailToonImageView: UIImageView!
  @IBOutlet fileprivate weak var detailToonIdLabel: UILabel!
  @IBOutlet fileprivate weak var authorLabel: UILabel!
  @IBOutlet fileprivate weak var descriptionLabel: UILabel!
  @IBOutlet fileprivate weak var emailLabel: UILabel!
  @IBOutlet fileprivate weak var blogLabel: UILabel!
  @IBOutlet fileprivate weak var postCountLabel: UILabel!
  @IBOutlet fileprivate weak var followerNumberLabel: UILabel!
  @IBOutlet fileprivate weak var mainKeywordLabel: UILabel!
  @IBOutlet fileprivate weak var subKeywordLabel: UILabel!
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    (navigationController?.parent as? MainViewController)?.hideTabBar()
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    subKeywordLabel?.text = ""
    subKeywordLabel.text = ""
    (navigationController?.parent as? MainViewController)?.showTabBar()
  }
  
  // MARK: - IBActions
  @IBAction func backButtonDidTap(_ sender: UIButton) {
    self.navigationController?.popViewController(animated: true)
  }
  
  /// 공유 액션시트
  @IBAction func moreButtonDidTap(_ sender: UIButton) {
    UIAlertController
      .alert(title: nil, message: nil, style: .actionSheet)
      .action(title: "KakaoTalk에 공유", style: .default) { _ in
        print("dd")
      }
      .action(title: "Messager에 공유", style: .default) { _ in
        print("dd")
      }
      .action(title: "링크 복사", style: .default) { _ in
        print("dd")
      }
      .action(title: "이 작품 더이상 추천 받지 않기", style: .destructive) { _ in
        print("dd")
      }
      .action(title: "취소", style: .cancel) { _ in
        print("dd")
      }
      .present(to: self)
    
  }
  
  @IBAction func moveToonButtonDidTap(_ sender: UIButton) {
  }
  
  @IBAction func addToMyCollection(_ sender: UIButton) {
  }
  
  // MARK: - Life Cycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  // MARK: - Functions
 
}