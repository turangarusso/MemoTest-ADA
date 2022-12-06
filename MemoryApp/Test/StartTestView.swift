//
//  StartTestView.swift
//  Memory
//

import SwiftUI

struct StartTestView: View {
    @State var resultSelector = 0
    
    var body: some View {
        VStack{
            Spacer()
            
            Image("brain icon")
                .resizable()
                .frame(width: 200.0, height: 200.0)
                .scaledToFit()
            
            Spacer()
            
            Text("What Memory Type\ndo you have?")
                .font(.system(size: 30))
                .multilineTextAlignment(.center)
            
            Spacer()
            
            NavigationLink(destination: FirstQuestion(resultSelector: resultSelector)) {
                StartTestButton()
            }
            
            Spacer()
        }
        .navigationTitle("Test")
    }
}
    
    
struct StartTestView_Previews: PreviewProvider {
    static var previews: some View {
        StartTestView()
    }
}
