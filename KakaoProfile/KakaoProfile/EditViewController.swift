//
//  EditViewController.swift
//  KakaoProfile
//
//  Created by Hochang Lee on 2021/01/12.
//

import UIKit
import MobileCoreServices

class EditViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    var nameText : String = ""
    var descriptionText : String = ""
    var profileImageBefore: UIImageView?
    var profileDelegate : ProfileDoneDelegate?
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileChangeButton: UIButton!
    @IBOutlet weak var profileLabel: UILabel!
    @IBOutlet weak var nameLabelEdited: UITextField!
    @IBOutlet weak var descriptionLabelEdited: UITextField!
    
    let imagePicker : UIImagePickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 218/255, green: 217/255, blue: 255/255, alpha: 1)
        self.profileImage.image = self.profileImageBefore?.image
        print(profileImageBefore == nil)
        self.profileImage.layer.cornerRadius = self.profileImage.frame.width * 0.45
        self.profileChangeButton.layer.cornerRadius = self.profileChangeButton.layer.frame.width/2
        self.profileChangeButton.layer.zPosition = 1
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
    
    @IBAction func doneButtonTouched(_ sender: Any) {
        if let data = profileImage {
            profileDelegate?.UpdateProfile(name: self.nameLabelEdited.text ?? "", desc: self.descriptionLabelEdited.text ?? "", imageView: self.profileImage)
        }
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func selectImageButtonTouched(_ sender: Any) {
        if (UIImagePickerController.isSourceTypeAvailable(.photoLibrary)) {
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            imagePicker.mediaTypes = [kUTTypeImage as String]
            imagePicker.allowsEditing = true
            
            present(imagePicker, animated:  true, completion: nil)
        } else {
            print("Camera inaccessible")
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let mediaType = info[UIImagePickerController.InfoKey.mediaType] as! NSString
        if mediaType.isEqual(to: kUTTypeImage as NSString as String) {
            let captureImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
            self.profileImage.image = captureImage
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
}
