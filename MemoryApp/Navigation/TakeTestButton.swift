//
//  TakeTestButton.swift
//  MemoryApp
//
//Created by giovanni russo on 27/10/22.
//

import SwiftUI

struct TakeTestButton: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 130.0, height: 40.0)
                .foregroundColor(Color.white)
                .cornerRadius(20.0)
                .shadow(radius: 4.0)
            HStack{
                Image(systemName: "doc.text.below.ecg").foregroundColor(Color("Cyan"))
                Text("Take Test").foregroundColor(Color("Cyan"))
            }
        }
    }
}

struct TakeTestButton_Previews: PreviewProvider {
    static var previews: some View {
        TakeTestButton()
    }
}
