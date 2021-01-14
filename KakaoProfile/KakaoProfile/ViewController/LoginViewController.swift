//
//  LoginViewController.swift
//  KakaoProfile
//
//  Created by 이청원 on 2021/01/14.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var id: UITextField!
    @IBOutlet var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let idPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        let passwordPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        self.id.leftView = idPaddingView
        self.password.leftView = passwordPaddingView
        self.id.leftViewMode = .always
        self.password.leftViewMode = .always
        
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        let userInfo = UserInfo()
        let checkUser = userInfo.checkUser(id: id.text ?? "", pw: password.text ?? "")
        switch checkUser {
        case .success:
            guard let mainViewController = self.storyboard?.instantiateViewController(withIdentifier: "mainViewController") else { return }
                            self.navigationController?.pushViewController(mainViewController, animated: true)
        case .blankID:
            showToast(controller: self, message: "\(UserInfo.CheckState.blankID)", seconds: 0.5)
        case .blankPw:
            showToast(controller: self, message: "\(UserInfo.CheckState.blankPw)", seconds: 0.5)
        case .noID:
            showToast(controller: self, message: "\(UserInfo.CheckState.noID)", seconds: 0.5)
        case .wrongPw:
            showToast(controller: self, message: "\(UserInfo.CheckState.wrongPw)", seconds: 0.5)
        }
    }
}
