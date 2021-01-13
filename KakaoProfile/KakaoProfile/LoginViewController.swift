//
//  LoginViewController.swift
//  KakaoProfile
//
//  Created by Hochang Lee on 2021/01/12.
//

import UIKit

class LoginViewController: UIViewController {

    var nameText : String = ""
    var descriptionText : String = ""
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileChangeButton: UIButton!
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var nameLabelEdited: UITextField!
    @IBOutlet weak var descriptionLabelEdited: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 218/255, green: 217/255, blue: 255/255, alpha: 1)
        self.profileImage.layer.cornerRadius = self.profileImage.frame.width * 0.45
        self.profileChangeButton.backgroundColor = .white
        self.profileChangeButton.layer.cornerRadius = self.profileChangeButton.layer.frame.width/2
        self.profileLabel.text = "프로필"
        self.profileLabel.textColor = .white
        self.cancelButton.tintColor = .white
        self.doneButton.tintColor = .white
        self.profileLabel.textAlignment = .center
        self.nameLabelEdited.text = self.nameText
        self.descriptionLabelEdited.text = self.descriptionText
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    @IBAction func cancelButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
}
