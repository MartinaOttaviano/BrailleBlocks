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
    @State private var text: String = ""
    var body: some View{
        
        NavigationView{
            //            NavigationView{
            //
            //                Text("")
            //                    .navigationTitle("BrailleBlocks")
            //                    .navigationBarTitleDisplayMode(.inline)
            //
            //            }.frame(width: UIScreen.main.bounds.width, height: 50)
            VStack{
                Picker("", selection: $choice) {
                    
                    Text("Theory").tag(0)
                    
                    
                    Text("Practice").tag(1)
                    
                }
                .frame(width: UIScreen.main.bounds.width*0.88, height: 30, alignment: .center)
                .pickerStyle(.segmented)
                
                if choice == 0{
                    TheoryView()
                }
                else if choice == 1{
                        ListView(text: $text)
                }
            }
            .navigationTitle("BrailleBlocks")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}
struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
    }
}
