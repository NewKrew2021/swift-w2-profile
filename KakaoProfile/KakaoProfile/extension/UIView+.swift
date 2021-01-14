//
//  UIView+.swift
//  KakaoProfile
//
//  Created by 윤준수 on 2021/01/14.
//

import UIKit

extension UIView {
    func roundImage(radius: CGFloat){
        layer.cornerRadius = bounds.size.height/radius
        layer.borderWidth = 1
        layer.borderColor = UIColor.clear.cgColor
        clipsToBounds = true
    }
}
