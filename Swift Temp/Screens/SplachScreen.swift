//
//  SplachScreen.swift
//  Swift Temp
//
//  Created by Codemaker on 05/06/2022.
//

import SwiftUI

struct SplachScreen: View {
    
    @State private var isSplachDone: Bool = false
    @State private var isAnimating: Bool = false
    var body: some View {
        if isSplachDone {
            HomeScreen()
        }else {
            ZStack {
                Color.accentColor
                    .ignoresSafeArea()
                
                Image("logo")
                    .cornerRadius(35)
                    .scaleEffect(isAnimating ? 0.75 : 0.3)
                    .opacity(isAnimating ? 1.0 : 0.0)
            }
            .onAppear(perform:{
                withAnimation(.easeInOut(duration: 1.5)){
                    isAnimating = true
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0 , execute: {
                    withAnimation(.easeInOut(duration: 0.5)){
                        isSplachDone = true
                    }
                })
            })
        }
    }
}

struct SplachScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplachScreen()
    }
}
