//
//  ViewController.swift
//  KakaoProfile
//
//  Created by 윤준수 on 2021/01/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var editButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = "Eden"
        self.nameLabel.backgroundColor = UIColor.blue
        self.nameLabel.textColor = UIColor.gray
        self.nameLabel.alpha = 50
        self.nameLabel.font = UIFont(name: "System", size: 100)
        self.descriptionLabel.text = "팬 소음이 너무 크다"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #line, #function, #column)
    }
    
    @IBAction func editButtonTouched(_ sender: Any) {
        self.nameLabel.textColor = UIColor.blue
        self.nameLabel.backgroundColor = UIColor.yellow
        self.nameLabel.alpha = 0.5
        self.descriptionLabel.text = "크루미션"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let destination = segue.destination as? LoginViewController else {return}
        destination.descriptionText = descriptionLabel.text
        destination.nameText = nameLabel.text
        destination.orginImage = profileImage.image
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
