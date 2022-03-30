//
//  ScrollView2.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 29/03/22.
//

import Foundation
import SwiftUI

struct ScrollingView2: View {
    let letters: [String] = ["T","H","E","R","A","B","B","I","T","H","O","P","P","E","D","O","N","T","H","E","C","H","A","I","R"]
    var body: some View{
        
        VStack{
            
        TabView{
            ForEach(0..<24) {i in
                ForEach(letters, id:\.self) { letter in
                VStack{
                    BrailleView()
//                Text("T")
                    Text("\(letter)")
                    .font(.system(size: 50))
                    .foregroundColor(Color.init(red: 0/255, green: 132/255, blue: 255/255))
                }
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.5)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            
        Text("The rabbit hopped on the chair")
            .opacity(0.5)
            .font(.system(size: 22))
            
       
        Button(action: {
            print("Done")
        }, label: {
            ZStack{
                Rectangle()
                    .frame(width: 84, height: 50)
                    .cornerRadius(20)
                    .foregroundColor(Color.init(red: 0/255, green: 132/255, blue: 255/255))
                Text("Done")
                    .font(.system(size: 18))
                    .foregroundColor(.white)
            }
        }).frame(width: 84, height: 150, alignment: .bottom)
                
                
        }.padding(.top, 50)
            .padding(.bottom, 50)
    }
}
struct ScrollingView2_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingView2()
    }
}
