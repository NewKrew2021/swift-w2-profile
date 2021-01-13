//
//  LoginViewController.swift
//  KakaoProfile
//
//  Created by 윤준수 on 2021/01/12.
//

import UIKit


class EditViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var editImage: UIButton!
    @IBOutlet weak var profileName: UITextField!
    @IBOutlet weak var profileDescription: UITextField!
    @IBOutlet weak var changeFinish: UIButton!
    
    var descriptionText: String?
    var nameText: String?
    var orginImage: UIImage?
    
    let imagePickerController = UIImagePickerController()
    var sendData: SendData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImage.image = orginImage
        profileName.text = nameText
        profileDescription.text = descriptionText
        
        roundTheImage(radius: 2.3, view: profileImage)
        roundTheImage(radius: 2, view: editImage)
        imagePickerController.delegate = self//imagePickerController에서 발생하는 일을 내가 처리하겠다(위임)
    }
    
    func roundTheImage(radius: CGFloat, view: UIView){
        view.layer.cornerRadius = view.bounds.size.height/radius
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.clear.cgColor
        view.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    @IBAction func cancelTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeFinished(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        sendData?.sendTouched(changeFinish, profile: Profile(image: profileImage.image, name: profileName.text, description: profileDescription.text))
    }

    @IBAction func selectImageButtonTouched(_ sender: Any) {
        let type = UIImagePickerController.SourceType.photoLibrary
        guard UIImagePickerController.isSourceTypeAvailable(type) else {return}
        imagePickerController.sourceType = type
        present(imagePickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var newImage: UIImage? = nil
        if let possibleImage = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage { // 수정된 이미지가 있을 경우
            newImage = possibleImage
        } else if let possibleImage = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerOriginalImage")] as? UIImage { // 오리지널 이미지가 있을 경우
            newImage = possibleImage
        }
        
        profileImage.image = newImage // 받아온 이미지를 이미지 뷰에 넣어준다.
        picker.dismiss(animated: true) // 그리고 picker를 닫아준다.  
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#file, #line, #function, #column)
    }
}
