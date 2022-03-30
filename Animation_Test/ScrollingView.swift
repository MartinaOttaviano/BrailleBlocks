//
//  Scrollview.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 29/03/22.
//

import Foundation
import SwiftUI

struct ScrollingView: View {
    
    let letters: [String] = ["T","H","E","R","A","B","B","I","T","H","O","P","P","E","D","O","N","T","H","E","C","H","A","I","R"]
    var body: some View{
        VStack{
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing:40){
                    ForEach(0..<24){_ in
                        VStack{
                            BrailleView()
//                            HStack{
//                            ForEach(letters, id: \.self) { letter in
//                                Text(letter)
//                                    .font(.system(size: 40))
//                                    .foregroundColor(Color.init(red: 0/255, green: 132/255, blue: 255/255))
//                            }
//                            }
                            Text("T")
                                .font(.system(size: 40))
                                .foregroundColor(Color.init(red: 0/255, green: 132/255, blue: 255/255))
                        }
                    }
                    
                    
                }
            }
            
            Text("The rabbit hopped on the chair")
                .opacity(0.5)
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
            })
        }
    }
}
struct ScrollingView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingView()
    }
}
