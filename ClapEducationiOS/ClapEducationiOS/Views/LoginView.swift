//
//  ContentView.swift
//  ClapEducationiOS
//
//  Created by Grace Nho on 2024/03/08.
//

import SwiftUI
struct LoginView: View {
    @State private var username: String = ""
    @State private var password:
    String = ""
    var body: some View {
        VStack {
            Image("Logo")
                .resizable()
                .frame(width:85.0, height: 90.0).padding([.bottom], 20)
            VStack(alignment: .leading){
                Text("Email")
                    .fontWeight(.bold)
                TextField(
                    "Email Address",
                    text: $username
                )
                .padding(12)
                .border(.secondary)
                .cornerRadius(5)
                .frame(width:320)
            }.padding([.bottom], 20)
            
            
            VStack(alignment: .leading){
                Text("Password")
                    .fontWeight(.bold)
                SecureField(
                    "Password",
                    text: $username
                )
                .padding(12)
                .border(.secondary)
                .cornerRadius(5)
                .frame(width:320)
                .shadow(radius: /*@START_MENU_TOKEN@*/12/*@END_MENU_TOKEN@*/)
            }
            
           
        }
    }
        
}


#Preview {
    LoginView()
}
