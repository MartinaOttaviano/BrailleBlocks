//
//  Dot.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 29/03/22.
//

import Foundation
import SwiftUI


struct DotView: View {
    @State private var unSelected = true
    @State private var selected = false
    
    
    var body: some View {
        
        ZStack{
            if unSelected{
                
                    Image(systemName: "circle")
                    .scaleEffect(selected ? 1 : 0.85)
                    .animation(Animation.interpolatingSpring(stiffness: 150, damping: 15).delay(0.15))
                        .font(.system(size: 80))
                        .foregroundColor(.gray)
                        .opacity(0.3)
                        .onAppear(){
                    selected = false
                }
                Image(systemName: "circle.fill")
                    .scaleEffect(!selected ? 0 : 1)
                    .animation(Animation.interpolatingSpring(stiffness: 150, damping: 15).delay(0.15))
                    .font(.system(size: 80))
                .foregroundColor(Color(.init(red: 0/255, green: 132/255, blue: 255/255, alpha: 1)))
            }
            else{
                
                    
                    Image(systemName: "circle.fill")
                    .scaleEffect(selected ? 1 : 0)
                        .animation(Animation.interpolatingSpring(stiffness: 150, damping: 15).delay(0.15))
                        .onAppear() {
                            selected = true
                        }
                        .font(.system(size: 80))
                    .foregroundColor(Color(.init(red: 0/255, green: 132/255, blue: 255/255, alpha: 1)))
                
            }
        }
        
        .onTapGesture(count: 1, perform: {
            unSelected.toggle()
        })

            
    }
}

struct DotView_Previews: PreviewProvider {
    static var previews: some View {
        DotView()
    }
}
