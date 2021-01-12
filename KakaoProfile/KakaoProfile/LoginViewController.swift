//
//  LoginViewController.swift
//  KakaoProfile
//
//  Created by 윤준수 on 2021/01/12.
//

import UIKit


class LoginViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    weak open var delegate: (UIImagePickerControllerDelegate & UINavigationControllerDelegate)?
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var changeButton: UIButton!
    
    var nameText: String?
    var descriptionText: String?
    let imagePickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.layer.cornerRadius = profileImage.bounds.size.height/2.3
        profileImage.layer.borderWidth = 1
        profileImage.layer.borderColor = UIColor.clear.cgColor
        profileImage.clipsToBounds = true
        
        changeButton.layer.cornerRadius = changeButton.bounds.size.height/2
        changeButton.layer.borderWidth = 1
        changeButton.layer.borderColor = UIColor.clear.cgColor
        changeButton.clipsToBounds = true
        
        imagePickerController.delegate = self//imagePickerController에서 발생하는 일을 내가 처리하겠다(위임)
    }
    
    @IBAction func closeButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectImageButtonTouched(_ sender: Any) {
        let type = UIImagePickerController.SourceType.photoLibrary
        guard UIImagePickerController.isSourceTypeAvailable(type) else {return}
        imagePickerController.sourceType = type
        present(imagePickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print("didFinishPickingMediaWithInfo", info)
    }
}
