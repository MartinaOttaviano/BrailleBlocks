//
//  TheoryView.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 30/03/22.
//

import Foundation
import SwiftUI

struct TheoryView: View {
    var body: some View {
        
        ScrollView{
            Text("**INTRODUCTION**")
                .frame(width: UIScreen.main.bounds.width*0.9, height: 40)
                .font(.custom("Menlo", size: 40))
                .multilineTextAlignment(.leading)
                .padding(.trailing, 90)
                .padding(.top, 30)
            Text("Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullamco laboriosam, nisi ut aliquid ex ea commodi consequatur. Duis aute irure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.27, alignment: .top)
                .padding(.horizontal)
                .multilineTextAlignment(.leading)
            Text("**THE ALPHABET**")
                .frame(width: UIScreen.main.bounds.width*0.9, height: 40)
                .font(.custom("Menlo", size: 40))
                .multilineTextAlignment(.leading)
                .padding(.trailing, 86)
            
            Image("braille_diagram")
                .resizable()
                .frame(width: UIScreen.main.bounds.width*1, height: UIScreen.main.bounds.height*0.58)
                .offset(x: 0, y: 0)
                .cornerRadius(30)
            
            
            Text("**PRACTICE**")
                .frame(width: UIScreen.main.bounds.width*0.9, height: 40)
                .font(.custom("Menlo", size: 40))
                .multilineTextAlignment(.leading)
                .padding(.trailing, 185)
                .padding(.top, 30)
            Text("Lorem ipsum dolor sit amet, consectetur adipisci elit, sed do eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullamco laboriosam, nisi ut aliquid ex ea commodi consequatur. Duis aute irure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .frame(width: UIScreen.main.bounds.width*0.9, height: UIScreen.main.bounds.height*0.27, alignment: .top)
                .padding(.horizontal)
                .multilineTextAlignment(.leading)
        }.frame(width: UIScreen.main.bounds.width*1, height: UIScreen.main.bounds.height*0.836)
    }
}
struct TheoryView_Previews: PreviewProvider {
    static var previews: some View {
        TheoryView()
    }
}
