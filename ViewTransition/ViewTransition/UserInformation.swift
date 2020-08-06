//
//  UserInformation.swift
//  ViewTransition
//
//  Created by Kyungmin Lee on 2020/08/06.
//  Copyright © 2020 Kyungmin Lee. All rights reserved.
//

import Foundation

class UserInformation {
    // 싱글턴
    // shared같이 자주 사용하는 이름을 사용하면 해킹에 취약할 수 있으므로
    // 더 공부후 익숙해지면 다른 이름을 사용해보자
    static let shared: UserInformation = UserInformation()
    
    var name: String?
    var age: String?
    
    // 다른곳에서 객체생성이 불가능하게 한다.
    private init() {}
}
