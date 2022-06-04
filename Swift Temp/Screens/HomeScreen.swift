//
//  ButtonsScreen.swift
//  Swift Temp
//
//  Created by Codemaker on 04/06/2022.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ButtonScreen()) {
                    Button{
                    }label: {
                        Text("Button Screen")
                    }
                    .buttonStyle(GrowingButtonStyle())
                    .disabled(true)
                }
                
                NavigationLink(destination: ButtonScreen()) {
                    Button{
                    }label: {
                        Text("Button Screen")
                    }
                    .buttonStyle(GrowingButtonStyle())
                    .disabled(true)
                }
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
