//
//  LoginViewController.swift
//  KakaoProfile
//
//  Created by Hochang Lee on 2021/01/14.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var messageImage: UIImageView!
    @IBOutlet weak var messageText: UILabel!
    @IBOutlet weak var inputId: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageText.layer.zPosition = 1
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func loginButtonTouched(_ sender: Any) {
        
    }
    
    
}
