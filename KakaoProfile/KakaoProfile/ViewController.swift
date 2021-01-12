//
//  ViewController.swift
//  KakaoProfile
//
//  Created by herb.salt on 2021/01/11.
//  Copyright © 2021 com.kakaocorp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        nameLabel.text = "herb"
        descriptionLabel.text = "Kakao Krew"
        
    }
    
    @IBAction func editButtonTouched(_ sender: Any) {
        
        print("segue")
        self.nameLabel.textColor = UIColor.blue
        self.nameLabel.backgroundColor = UIColor.yellow
        self.nameLabel.alpha = 0.5
        self.descriptionLabel.text = "mission"
        
    }
       
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let destination = segue.destination as? LoginViewController {
           destination.nameText = self.nameLabel.text!
           destination.descriptionText = self.descriptionLabel.text!
        }

    }
    
}

