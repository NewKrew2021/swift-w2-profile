//
//  ProfileDto.swift
//  KakaoProfile
//
//  Created by 윤준수 on 2021/01/13.
//

import UIKit

class Profile {
    var image: UIImage?
    var name: String?
    var description: String?
    init(image: UIImage?, name: String?, description: String?){
        self.image = image
        self.name = name
        self.description = description
    }
}
