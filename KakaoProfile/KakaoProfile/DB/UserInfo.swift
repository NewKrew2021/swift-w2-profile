//
//  UserInfo.swift
//  KakaoProfile
//
//  Created by 이청원 on 2021/01/14.
//

import Foundation

class UserInfo {
    
    enum CheckState: Int, CustomStringConvertible {
        case success = 0, blankID, blankPw, noID, wrongPw
        
        var description: String {
            switch self {
            case .success:
                return "로그인에 성공하였습니다"
            case .blankID:
                return "아이디를 입력해주세요"
            case .blankPw:
                return "비밀번호를 입력해주세요"
            case .noID:
                return "아이디가 존재하지 않습니다"
            case .wrongPw:
                return "비밀번호가 일치하지 않습니다"
            }
        }
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
        if id == "" {
            return .blankID
        } else if pw == "" {
            return .blankPw
        }
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
