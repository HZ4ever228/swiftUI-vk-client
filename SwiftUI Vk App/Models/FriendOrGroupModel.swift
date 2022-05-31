//
//  FriendOrGroupModel.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 19/05/2022.
//

import UIKit

class FriendOrGroup: Identifiable {
    
    let name: String
    let avatar: UIImage
    
    internal init(name: String, imageName: String) {
        self.name = name
        if let image = UIImage(systemName: "\(imageName)") {
            self.avatar = image
        } else {
            self.avatar = UIImage(systemName: "person")!
        }
    }
}


