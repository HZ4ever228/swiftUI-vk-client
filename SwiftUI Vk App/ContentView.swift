//
//  ContentView.swift
//  SwiftUI Vk App
//
//  Created by Anton Hodyna on 13/05/2022.
//

import SwiftUI

struct ContentView: View {
    
    private let backgroungColor = #colorLiteral(red: 0.3196430802, green: 0.5028241277, blue: 0.7236860991, alpha: 1)
    
    @State var login: String = ""
    @State var password: String = ""
    @State var isLogined: Bool = false
    
    var body: some View {
        GeometryReader { geometryProxy in
                VStack {
                    Image("vkIconClear-1")
                        .resizable(resizingMode: .stretch)
                        .frame(width: 100, height: 100, alignment: .center)
                        .padding(50)
                    
                    TextField("Enter login", text: $login)
                        .padding(.leading, 30)
                        .padding(.bottom, 10)
                    Rectangle()
                        .size(CGSize(width: geometryProxy.size.width - 60, height: 1))
                        .foregroundColor(.gray)
                        .padding(.leading, 30)
                        .padding(.bottom, 30)

                    TextField("Enter password", text: $password)
                        .padding(.leading, 30)
                        .padding(.bottom, 10)
                    Rectangle()
                        .size(CGSize(width: geometryProxy.size.width - 60, height: 1))
                        .foregroundColor(.gray)
                        .padding(.leading, 30)
                        .padding(.bottom, 30)
                    
                    
                    LoginButton(action: loginButtonAction, isLogined: isLogined, weight: geometryProxy.size.width - 60)
                }
                .frame(width: geometryProxy.size.width, height: geometryProxy.size.height)
                .background(Color(backgroungColor))
        }
        
    }
    
    private func loginButtonAction() {
        isLogined = true
        login = ""
        password = ""
    }
}

struct LoginButton: View {
    
    let action: () -> Void
    var isLogined: Bool
    var weight: CGFloat
    
    private let buttonColor: UIColor = #colorLiteral(red: 0.402541995, green: 0.589343071, blue: 0.7979525328, alpha: 1)
    
    var body: some View {
        Button(action: action) {
            Text("Log in")
                .frame(width: weight, height: 40, alignment: .center)
                .foregroundColor(.white)
        }
            .background(Color(buttonColor))
            .shadow(color: .black, radius: 4, x: 4, y: 4)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
