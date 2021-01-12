//
//  LoginViewController.swift
//  KakaoProfile
//
//  Created by 윤준수 on 2021/01/12.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var changeButton: UIButton!
  
    var nameText: String?
    var descriptionText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.layer.cornerRadius = profileImage.bounds.size.height/2.3
        profileImage.layer.borderWidth = 1
        profileImage.layer.borderColor = UIColor.clear.cgColor
        profileImage.clipsToBounds = true
        
        changeButton.layer.cornerRadius = changeButton.bounds.size.height/2
        changeButton.layer.borderWidth = 1
        changeButton.layer.borderColor = UIColor.clear.cgColor
        changeButton.clipsToBounds = true
    }
    
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
