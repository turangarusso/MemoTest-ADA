//
//  ContentView.swift
//  Memory
//
//  Created by giovanni russo on 17/10/22.
//

import SwiftUI


struct Navigation: View {
    @State var selection = 1
    
    var body: some View {
        TabView(selection: $selection){
            Games()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Games")
                }.tag(1)
            
            Tips()
                .tabItem {
                    Image(systemName: "lightbulb")
                    Text("Tips")
                }.tag(2)
            
        }
        .accentColor(Color("Cyan"))
        .navigationTitle(selection == 1 ? "Games" : "Tips")
        .toolbar{
            NavigationLink(destination: StartTestView()) {
                TakeTestButton()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    struct Navigation_Previews: PreviewProvider {
        static var previews: some View {
            Navigation()
        }
    }
}
