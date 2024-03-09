//
//  SplashView.swift
//  ClapEducationiOS
//
//  Created by Grace Nho on 2024/03/08.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false
    var body: some View {
        ZStack{
            if self.isActive{
                LoginView()
            }
            else{
                Color("ClapYellow").ignoresSafeArea()
                Image("Logo")
                    .resizable()
                    .frame(width:150.0, height: 150.0)
                  
                
               
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now ()+2.5){
                withAnimation{
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
