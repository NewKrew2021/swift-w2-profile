//
//  UserInfo.swift
//  KakaoProfile
//
//  Created by 이청원 on 2021/01/14.
//

import Foundation

class UserInfo {
    
    enum CheckState: Int {
        case success = 0, noID, wrongPw
    }
    
    struct User {
        var userId: String
        var userPassword: String
    }
    
    var model: [User] = [
        User(userId: "blue", userPassword: "kakao"),
        User(userId: "JK", userPassword: "godrm"),
        User(userId: "lcw", userPassword: "1234")
    ]
    
    func checkUser(id:String, pw:String) -> CheckState {
        for user in model {
            if user.userId == id {
                if user.userPassword == pw {
                    return .success
                } else {
                    return .wrongPw
                }
            }
        }
        return .noID
    }
}
