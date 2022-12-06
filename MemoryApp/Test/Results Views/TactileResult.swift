//
//  VisuallyResult.swift
//  Memory
//

import SwiftUI

struct TactileResult: Result {
    var memoryType: String = "TACTILE"
    var memoryImage: String = "hand.tap"
    var description: String = "Tactile memory is a type of sensory memory.\n\nIt consists in the ability to memorize practical and manual procedures and activities, creating mental images relating to the form and process of forming things."
    
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

struct TactileResult_Previews: PreviewProvider {
    static var previews: some View {
        TactileResult()
    }
}
