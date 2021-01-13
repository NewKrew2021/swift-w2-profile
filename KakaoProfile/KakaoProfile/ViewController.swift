//
//  ViewController.swift
//  KakaoProfile
//
//  Created by Hochang Lee on 2021/01/11.
//

import UIKit

protocol ProfileDoneDelegate {
    func UpdateProfile(name : String, desc : String, imageView : UIImageView)
}

class ViewController: UIViewController, ProfileDoneDelegate {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGray
        self.profileImage.layer.cornerRadius = self.profileImage.frame.width * 0.45
        self.nameLabel.text = "David"
        self.nameLabel.textAlignment = NSTextAlignment.center
        self.nameLabel.textColor = UIColor.white
        self.nameLabel.backgroundColor = UIColor.clear
        self.descriptionLabel.text = "행복 멀리 없다!"
        self.descriptionLabel.textAlignment = NSTextAlignment.center
        self.descriptionLabel.textColor = UIColor.secondarySystemBackground
        self.editButton.tintColor = .white
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? EditViewController {
            destination.nameText = self.nameLabel.text ?? ""
            destination.descriptionText = self.descriptionLabel.text ?? ""
            destination.profileImageBefore = self.profileImage
            destination.profileDelegate = self
        }
    }
    
    func UpdateProfile(name: String, desc: String, imageView: UIImageView) {
        self.nameLabel.text = name
        self.descriptionLabel.text = desc
        self.profileImage.image = imageView.image
    }
}

