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
    private var profileImage = UIImageView()
    private var nameLabel = UILabel()
    private var descriptionLabel = UILabel()
    private var editButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
        
        view.addSubview(profileImage)
        profileImage.image = UIImage(named: "profile_image")
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        profileImage.widthAnchor.constraint(equalToConstant: 110).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 110).isActive = true
        profileImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 60).isActive = true
        profileImage.layer.cornerRadius = 110 * 0.45
        profileImage.layer.masksToBounds = true
        profileImage.clipsToBounds = true
        
        view.addSubview(nameLabel)
        nameLabel.text = "David"
        nameLabel.textAlignment = .center
        nameLabel.textColor = .white
        nameLabel.backgroundColor = .clear
        nameLabel.clipsToBounds = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: profileImage.centerYAnchor, constant: 75).isActive = true
        
        view.addSubview(descriptionLabel)
        descriptionLabel.text = "행복 멀리 없다!"
        descriptionLabel.textAlignment = .center
        descriptionLabel.textColor = .secondarySystemBackground
        descriptionLabel.backgroundColor = .clear
        descriptionLabel.clipsToBounds = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        descriptionLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        descriptionLabel.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor, constant: 30).isActive = true
        
        view.addSubview(editButton)
        editButton.tintColor = .white
        editButton.setTitle("Edit", for: .normal)
        editButton.titleLabel?.textAlignment = .center
        editButton.translatesAutoresizingMaskIntoConstraints = false
        editButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        editButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        editButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        editButton.centerYAnchor.constraint(equalTo: descriptionLabel.centerYAnchor, constant: 120).isActive = true
        editButton.addTarget(self, action: #selector(editButtonTouched(_:)), for: .touchUpInside)

    }
        
    @objc private func editButtonTouched(_ sender : Any) {
        guard let destination = storyboard?.instantiateViewController(identifier: "EditViewController") as? EditViewController else {print("cannot find controller"); return}
        destination.nameText = nameLabel.text ?? ""
        destination.descriptionText = descriptionLabel.text ?? ""
        destination.profileImageBefore = profileImage
        destination.profileDelegate = self
        present(destination, animated: true, completion: nil)
    }
    
    func UpdateProfile(name: String, desc: String, imageView: UIImageView) {
        self.nameLabel.text = name
        self.descriptionLabel.text = desc
        self.profileImage.image = imageView.image
    }
}


