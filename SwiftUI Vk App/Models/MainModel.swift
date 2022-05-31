//
//  MainModel.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 31/05/2022.
//

import Foundation

class MainModel: ObservableObject {
    @Published var isLogined: Bool = false {
        didSet {
            print("isLogined: ", isLogined)
        }
    }
    
    func login() {
        self.isLogined = !isLogined
        objectWillChange.send()
    }
}
