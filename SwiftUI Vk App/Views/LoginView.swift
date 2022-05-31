//
//  LoginView.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 18/05/2022.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var mainModel: MainModel = .init()
    
    private let networkService = NetworkService()
    
    var body: some View {
        GeometryReader { geometryProxy in
            NavigationView {
                VStack {
                    if mainModel.isLogined {
                       TapBarView()
                    } else {
                        WebView(url: networkService.getLoginURL(), completionSuccess: mainModel.login)
                    }
                }
                .frame(width: geometryProxy.size.width, height: geometryProxy.size.height)
                .background(Color(UIColor.backgroungVKColor))
            }
        }
    }
    
}

//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}
