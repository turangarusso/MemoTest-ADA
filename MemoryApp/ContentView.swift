//
//  ContentView.swift
//  MemoryApp
//


import SwiftUI

struct ContentView: View {
    let defaults = UserDefaults.standard
    /*This variable allows you to manage a small persistence.
     Inside it stores a boolean value in the "First Launch" tag, if this is set to "True" then it means that the first launch has already been done and therefore the application is opened normally; otherwise it means that it is the first launch, then the app is opened from another view, and, when this view appears, an action is performed, that is set the "First Launch" tag to "True"*/
    
    var body: some View {
        NavigationView {
            if defaults.bool(forKey: "First Launch") == true {
                Navigation()
            }
            else {
                StartTestView()
                    .onAppear(){
                        defaults.set(true, forKey: "First Launch")
                    }
            }
        }
        .accentColor(Color("Cyan"))

    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
