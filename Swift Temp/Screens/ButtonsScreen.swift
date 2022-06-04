//
//  Home.swift
//  Swift Temp
//
//  Created by Codemaker on 04/06/2022.
//

import SwiftUI

struct ButtonScreen: View {
    @State private var counter: Int = 0
    
    private var buttonTitle = "Press Me here"
    
    
    func onButtonPressed (){
        counter += 1
        print("----> \(counter)")
    }
    
    
    
    var body: some View {
        VStack {
            Spacer()
            Text("You have pressed button this time: (( \(counter) ))")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(.accentColor)
            
            Spacer()
            
            // MARK: =======================================> Button with custom style
            Button(buttonTitle){
                onButtonPressed()
            }
            
            Spacer()
            
            // MARK: =======================================> Button with custom style
            Button(buttonTitle) {
                onButtonPressed()
            }
                .foregroundColor(.white)
                .padding()
                .background(Color.accentColor)
                .cornerRadius(8)
            
            Spacer()
            
            // MARK: =======================================> Button with custom style
            Button(buttonTitle) {
                onButtonPressed()
            }
            
            Spacer()
            
            // MARK: =======================================> Button with custom style
            Button(buttonTitle) {
                onButtonPressed()
            }
            .buttonStyle(GrowingButtonStyle())
        }
    }
}

struct ButtonScreen_Previews: PreviewProvider {
    static var previews: some View {
        ButtonScreen()
    }
}




