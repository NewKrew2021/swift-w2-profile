//
//  MainViewController.swift
//  KakaoProfile
//
//  Created by herb.salt on 2021/01/14.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    enum ValidateType {
        case lack
        case equal
        case notEqual
    }

    @IBOutlet weak var IDTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    private func loginCheck() -> ValidateType {
        
        guard let id = IDTextField.text, let password = passwordTextField.text else { return .lack }
        
        if id == "" && password == "" {
            return .lack
        }
        else if id == "herb" && password == "salt" {
            return .equal
        }
        else {
            return .notEqual
        }
        
    }
    
    @IBAction func loginButtonTouched(_ sender: Any) {
        
        switch loginCheck() {
        case .lack :
            print("아이디와 비밀번호를 입력해주세요.")
        case .equal :
            print("로그인에 성공했습니다.")
            if let mainVC = self.storyboard?.instantiateViewController(identifier: "MainVC") {
                self.navigationController?.pushViewController(mainVC, animated: true)
            }
        case .notEqual :
            print("아이디와 비밀번호가 일치하지 않습니다.")
        }
        
    }

}
