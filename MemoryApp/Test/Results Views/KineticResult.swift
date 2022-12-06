//
//  VisuallyResult.swift
//  Memory
//

import SwiftUI

struct KineticResult: Result {
    var memoryType: String = "KINETIC"
    var memoryImage: String = "hand.draw"
    var description: String = "Kinetic memory is linked to space and movement.\n\nIt consists in the ability to memorize through spatial perception, creating a spatial image of the things and information that are learned."
    
    let subTitle:String = "Your Memory Type is:"
    @State var pressed = false
    
    var body: some View {
        
        VStack{
            
            Text(subTitle)
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.top, 20.0)

            
            Text(memoryType)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(hex: "BCD40B"))
                .padding(.top)
                    
            Image(systemName: memoryImage)
                .resizable()
                .scaledToFit()
                .foregroundColor(Color(hex: "BCD40B"))
                .frame(width: 100.0, height: 100.0)
            
            Spacer()
            
            Text(description)
                .font(.title3)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            NavigationLink(destination: Navigation(), isActive: $pressed) {EmptyView()}
            
            GameTips()
                .onTapGesture {
                    pressed.toggle()
                }
        }
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Test Result")
        .padding(.horizontal)
    }
}

struct KineticResult_Previews: PreviewProvider {
    static var previews: some View {
        KineticResult()
    }
}
