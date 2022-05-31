//
//  LoginView.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 18/05/2022.
//

import SwiftUI

struct LoginView: View {
    
    private let backgroungColor = #colorLiteral(red: 0.3196430802, green: 0.5028241277, blue: 0.7236860991, alpha: 1)
    
    @State var login: String = ""
    @State var password: String = ""
    @State var isLogined: Bool = false
    
    var body: some View {
        GeometryReader { geometryProxy in
            NavigationView {
                VStack {
                    Image("vkIconClear-1")
                        .resizable(resizingMode: .stretch)
                        .frame(width: 100, height: 100, alignment: .center)
                        .padding(50)
                    TextField("Enter login", text: $login)
                        .padding(.leading, 30)
                        .padding(.bottom, 10)
                    UnderlineGrayView(weight: geometryProxy.size.width - 60)
                        .padding(.leading, 30)
                        .padding(.bottom, 30)
                    TextField("Enter password", text: $password)
                        .padding(.leading, 30)
                        .padding(.bottom, 10)
                    UnderlineGrayView(weight: geometryProxy.size.width - 60)
                        .padding(.leading, 30)
                        .padding(.bottom, 30)
                    NavigationLink(destination: TapBarView()) {
                        LoginButtonView(weight: geometryProxy.size.width - 60)
                            .padding(.bottom, 100)
                    }
                }
                .frame(width: geometryProxy.size.width, height: geometryProxy.size.height)
                .background(Color(backgroungColor))
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
