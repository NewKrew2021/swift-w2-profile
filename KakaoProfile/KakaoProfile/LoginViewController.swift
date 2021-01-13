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
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    var nameText: String?
    var descriptionText: String?
    let imagePickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundTheImage(radius: 2.3, view: profileImage)
        roundTheImage(radius: 2, view: changeButton)
        
        //segue를 통해 넘어온 값을 이용해 텍스트 필드와 매칭
        nameTextField.text = nameText
        descriptionTextField.text = descriptionText
        imagePickerController.delegate = self//imagePickerController에서 발생하는 일을 내가 처리하겠다(위임)
    }
    
    func roundTheImage(radius: CGFloat, view: UIView){
        view.layer.cornerRadius = view.bounds.size.height/radius
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.clear.cgColor
        view.clipsToBounds = true
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
