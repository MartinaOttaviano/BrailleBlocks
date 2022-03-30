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
                    .navigationTitle("Braille")
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
                
            ScrollView{
                Text("Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullamco laboriosam, nisi ut aliquid ex ea commodi consequatur. Duis aute irure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.3)
                    .padding(.horizontal)
                    .multilineTextAlignment(.leading)
            
                Image("braille_diagram")
                .resizable()
                .frame(width: UIScreen.main.bounds.width*1.45, height: UIScreen.main.bounds.height*0.6)
                .offset(x: 6, y: 0)
                
            
            
            Text("Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullamco laboriosam, nisi ut aliquid ex ea commodi consequatur. Duis aute irure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.30)
                .padding(.horizontal)
                .multilineTextAlignment(.leading)
            }.frame(width: UIScreen.main.bounds.width*1, height: UIScreen.main.bounds.height*0.836)
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
