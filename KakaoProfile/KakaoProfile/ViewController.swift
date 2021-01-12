//
//  ViewController.swift
//  KakaoProfile
//
//  Created by Hochang Lee on 2021/01/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGray
        self.nameLabel.text = "David"
        self.nameLabel.textAlignment = NSTextAlignment.center
        self.nameLabel.textColor = UIColor.white
        self.nameLabel.backgroundColor = UIColor.clear
        self.descriptionLabel.text = "행복 멀리 없다!"
        self.descriptionLabel.textAlignment = NSTextAlignment.center
        self.descriptionLabel.textColor = UIColor.secondarySystemBackground
    }


}

