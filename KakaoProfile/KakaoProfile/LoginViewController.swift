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
        inputPassword.isSecureTextEntry = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func loginButtonTouched(_ sender: Any) {
        let id = inputId.text
        let pw = inputPassword.text
        if id == "david" && pw == "kakao" {
            if let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") {
            self.navigationController?.pushViewController(pushVC, animated: true)
            }
        }
        else {
            let alert = UIAlertController(title: "경고", message: "아이디와 비밀번호를 확인하세요", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "닫기", style: .destructive, handler: nil)
            alert.addAction(defaultAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
}
