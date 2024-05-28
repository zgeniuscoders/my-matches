//
//  USER.swift
//  my matches
//
//  Created by ZGenius on 27/05/2024.
//

import Foundation


struct User : Codable{
    var id: String
    let name: String
    let age: Int
    let bio: String
    let interests: [String]
    let joined: TimeInterval
}
