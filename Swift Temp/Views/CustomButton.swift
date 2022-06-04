////
////  CustomButton.swift
////  Swift Temp
////
////  Created by Codemaker on 04/06/2022.
////
//
//import SwiftUI
//
//struct Button<Content: View>: View {
//    let type: button_styles
//    let action: () -> Void
//    let label: () -> Content
//    
//    enum button_styles {
//        case filled
//        case outlined
//        case plain
//    }
//    
//    
//    init(type: button_styles, action: @escaping () -> Void, @ViewBuilder label: @escaping () -> Content ) {
//        self.type = type
//        self.action = action
//        self.label = label
//    }
//    
//    init(type: button_styles, action: @escaping () -> Void, title: String) where Content == Text {
//        self.init(type: type, action: action, label: { Text(title) })
//    }
//    
//    init(action: @escaping () -> Void, title: String) where Content == Text {
//        self.init(type: .plain, action: action, label: { Text(title) })
//    }
//    init(action: @escaping () -> Void, @ViewBuilder label: @escaping () -> Content) {
//        self.init(type: .plain, action: action, label: label)
//    }
//    
//    var body: some View {
//        switch type {
//        case .filled:
//            SwiftUI.Button(action: self.action, label: self.label).buttonStyle(FilledButtonStyle())
//        case .outlined:
//            SwiftUI.Button(action: self.action, label: self.label).buttonStyle(OutlinedButtonStyle())
//        case .plain:
//            SwiftUI.Button(action: self.action, label: self.label).buttonStyle(PlainButtonStyle())
//        }
//    }
//    
//}
//
//struct FilledButtonStyle: ButtonStyle {
//    
//    func makeBody(configuration: Self.Configuration) -> some View {
//        configuration.label
//            .font(.headline)
//            .frame(maxWidth: 108, maxHeight: 34, alignment: .center)
//            .contentShape(Rectangle())
//            .foregroundColor(configuration.isPressed ? Color.white.opacity(0.5) : Color.white)
//            .background(configuration.isPressed ? Color("Red").opacity(0.5) : Color("Red"))
//            .cornerRadius(20)
//            
//    }
//}
//struct OutlinedButtonStyle: ButtonStyle {
//    
//    func makeBody(configuration: Self.Configuration) -> some View {
//        configuration.label
//            .font(.headline)
//            .frame(maxWidth: 108, maxHeight: 34, alignment: .center)
//            .foregroundColor(Color("Grey"))
//            .background(Color.white.opacity(0))
//            .overlay(RoundedRectangle(cornerRadius:10).stroke(Color("Grey"), lineWidth: 2))
//    }
//}
//
//struct PlainButtonStyle: ButtonStyle {
//    
//    func makeBody(configuration: Self.Configuration) -> some View {
//        configuration.label
//            .font(.headline)
//            .frame(maxWidth: 108, maxHeight: 34, alignment: .center)
//            .contentShape(Rectangle())
//            .foregroundColor(configuration.isPressed ? Color.white.opacity(0.5) : Color("Grey"))
//    }
//}
