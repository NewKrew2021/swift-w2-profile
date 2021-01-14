//
//  LoginViewController.swift
//  KakaoProfile
//
//  Created by Hochang Lee on 2021/01/14.
//

import UIKit

class LoginViewController: UIViewController {
    enum ValidateType : String {
        case inputIdEmpty = "Enter User ID"
        case inputPasswordEmpty = "Enter User Password"
        case idNotExistInDB = "ID Does not exists"
        case passwordNotMatch = "Check the password"
        case validIdAndPassword
    }

    @IBOutlet weak var messageImage: UIImageView!
    @IBOutlet weak var messageText: UILabel!
    @IBOutlet weak var inputId: UITextField!
    @IBOutlet weak var inputPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageText.layer.zPosition = 1
        inputPassword.isSecureTextEntry = true
        inputId.clearButtonMode = .whileEditing
        inputPassword.clearButtonMode = .whileEditing
        inputId.autocorrectionType = .no
        inputPassword.autocorrectionType = .no
        UserDefaults.standard.set("kakao", forKey: "david")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    private func validateAccount() -> ValidateType {
        guard let id = inputId.text else { return .inputIdEmpty
        }
        guard let pw = inputPassword.text else {
            return .inputPasswordEmpty
        }
        if id == "" {
            return .inputIdEmpty
        }
        if pw == "" {
            return .inputPasswordEmpty
        }
        guard let targetpw = UserDefaults.standard.string(forKey: id) else { return .idNotExistInDB }
        if pw == targetpw {
            return .validIdAndPassword
        } else {
            return .passwordNotMatch
        }
    }
    
    private func ShowAlert(message : String) {
        let alert = UIAlertController(title: "경고", message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "닫기", style: .default, handler: nil)
        alert.addAction(defaultAction)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func loginButtonTouched(_ sender: Any) {
        let validType = validateAccount()
        switch validType {
        case .validIdAndPassword:
            if let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "MainViewController") {
                self.navigationController?.pushViewController(pushVC, animated: true)
            }
        default:
            ShowAlert(message: validType.rawValue)
        }
        
    }
    
    
}
