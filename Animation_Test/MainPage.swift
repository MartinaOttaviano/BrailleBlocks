//
//  MainPage.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 29/03/22.
//

import Foundation
import SwiftUI

struct MainPageView: View {
    @State private var choice = 0
    var body: some View{
        
        VStack{
            NavigationView{

                Text("")
                    .navigationTitle("BrailleBlocks")
                    .navigationBarTitleDisplayMode(.inline)
            }.frame(width: UIScreen.main.bounds.width, height: 50)
            
            Picker("", selection: $choice) {
                
                    Text("Theory").tag(0)
                
                
                    Text("Practice").tag(1)
                
            }
            .pickerStyle(.segmented)
            
            if choice == 0{
                
            TheoryView()
        }
            else if choice == 1{
                
                    ScrollingView2()
                
            }
        }
        
    }
}
struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
