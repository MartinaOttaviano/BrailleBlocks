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
            }
            
            Picker("", selection: $choice) {
                NavigationLink(destination: {
                    MainPageView()
                }, label: {
                    Text("Theory")
                    
                }).tag(0)
                
                NavigationLink(destination: {
                    ScrollingView2()
                }, label: {
                    Text("Practice")
                    
                }).tag(1)
                
            }
            .pickerStyle(.segmented)
            ZStack{ Color.init(red: 254/255, green: 191/255, blue: 0/255)
            if choice == 0{
                
            TheoryView()
        }
            else if choice == 1{
                ZStack{
                    Color.white.ignoresSafeArea()
                    ScrollingView2()
                }
            }
        }
        }.ignoresSafeArea()
    }
}
struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
