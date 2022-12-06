//
//  AnswerButton.swift
//  Memory
//


import SwiftUI

struct AnswerButton: View {
    
    var textInBox:String
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 300.0, height: 70.0)
                .foregroundColor(Color(hex: "EDEDED"))
                .cornerRadius(10)
                .shadow(radius: 6.0)
            Text(textInBox)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .frame(width: 250.0, height: 50.0)
        }
        
        
    }
}

struct AnswerButton_Previews: PreviewProvider {
    static var previews: some View {
        AnswerButton(textInBox: "Test String Test String")
    }
}
