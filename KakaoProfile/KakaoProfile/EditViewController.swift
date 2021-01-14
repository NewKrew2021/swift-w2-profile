//
//  LoginViewController.swift
//  KakaoProfile
//
//  Created by herb.salt on 2021/01/12.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit

protocol SendDataDelegate {
    func sendData(name: String, description: String, image: UIImage?)
}

class EditViewController: UIViewController {
    
    var nameText: String = ""
    var descriptionText: String = ""
    let picker = UIImagePickerController()
    var delegate: SendDataDelegate?
    
    @IBOutlet weak var selectImageButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        selectImageButton.layer.cornerRadius = selectImageButton.layer.frame.size.width/2
        nameTextField.text = nameText
        descriptionTextField.text = descriptionText
        picker.delegate = self

    }
    
    @IBAction func selectImageButtonTouched(_ sender: Any) {
        
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
        
    }
    @IBAction func finishButtonTouched(_ sender: Any) {
        
        self.delegate?.sendData(name: nameTextField.text!, description: descriptionTextField.text!, image: profileImageView.image)
        self.dismiss(animated: true, completion: nil)
        
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

extension EditViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] {
            profileImageView.image = image as! UIImage
        }
        dismiss(animated: true, completion: nil)
        
    }
    
}
