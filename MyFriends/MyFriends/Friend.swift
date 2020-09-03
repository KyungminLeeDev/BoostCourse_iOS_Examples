//
//  Friend.swift
//  MyFriends
//
//  Created by Kyungmin Lee on 2020/09/03.
//  Copyright © 2020 Kyungmin Lee. All rights reserved.
//

import Foundation

/*
 {
     "name":"하나",
     "age":22,
     "address_info": {
         "country":"대한민국",
         "city":"울산"
     }
 }
 */

struct Friend: Codable {
    struct Address: Codable {
        let country: String
        let age: Int
    }
    
    let name: String
    let age: Int
    let address_info: Address
}
