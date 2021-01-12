//
//  LoginViewController.swift
//  KakaoProfile
//
//  Created by 이청원 on 2021/01/12.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var cancelButton: UIButton!
    @IBOutlet var doneButton: UIButton!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var descriptionTextField: UITextField!
    var nameText : String = ""
    var descriptionText : String = ""
    
    override func viewWillAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let namePaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        let descriptionPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        self.nameTextField.leftView = namePaddingView
        self.descriptionTextField.leftView = descriptionPaddingView
        self.nameTextField.leftViewMode = .always
        self.descriptionTextField.leftViewMode = .always
        
        self.nameTextField.text = nameText
        self.descriptionTextField.text = descriptionText
    }
    
    @IBAction func cancelButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
