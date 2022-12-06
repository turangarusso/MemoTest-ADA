//
//  GameTips.swift
//  MemoTest
//


import SwiftUI

struct GameTips: View {
    var body: some View {
        HStack{
            Spacer()
            
            VStack{
                ZStack{
                    Circle()
                        .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("Purple"))
                        .shadow(radius: 6.0)
                    Image(systemName: "gamecontroller")
                        .resizable()
                        .foregroundColor(Color.white)
                        .scaledToFit()
                        .frame(width: 60.0, height: 60.0)
                }
                Text("Games")
                    .foregroundColor(Color("Purple"))
            }
            .padding(.trailing)
            
            Spacer()
            
            VStack{
                ZStack{
                    Circle()
                        .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("Cyan"))
                        .shadow(radius: 6.0)
                    Image(systemName: "lightbulb")
                        .resizable()
                        .foregroundColor(Color.white)
                        .scaledToFit()
                        .frame(width: 60.0, height: 60.0)
                }
                Text("Tips")
                    .foregroundColor(Color("Cyan"))
            }
            .padding(.leading)
            
            Spacer()
        }
    }
}

struct GameTips_Previews: PreviewProvider {
    static var previews: some View {
        GameTips()
    }
}
