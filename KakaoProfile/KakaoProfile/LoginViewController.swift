//
//  LoginViewController.swift
//  KakaoProfile
//
//  Created by 윤준수 on 2021/01/14.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginId: UITextField!
    @IBOutlet weak var loginPassword: UITextField!
    let dummyId = "test"
    let dummyPassword = "1234"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func checkLogin(_ sender: Any) {
        if !isLoginValidate(){ return }
        self.navigationController?.pushViewController(MainViewController(), animated: true)
    }
    
    func isLoginValidate() -> Bool {
        return (dummyId, dummyPassword) == (loginId.text, loginPassword.text) ? true : false
    }
}
