//
//  LoginViewController.swift
//  KakaoProfile
//
//  Created by herb.salt on 2021/01/12.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var nameText: String = ""
    var descriptionText: String = ""

    @IBOutlet weak var selectImageButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        selectImageButton.layer.cornerRadius = selectImageButton.layer.frame.size.width/2
        nameTextField.text = nameText
        descriptionTextField.text = descriptionText

    }
    
    @IBAction func cancelButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
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

}
