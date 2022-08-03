//
//  Squares.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 03/08/22.
//

import Foundation
import SwiftUI

struct Squares: View {
    @State var letter: String
    var array: [Int] = []
    
    var body: some View{
        VStack{
            
            
            HStack{
                VStack{
                    //1
                    Image(systemName: "circle.fill")
                        .font(.system(size: 68))
                        .foregroundColor(.gray)
                        .opacity(0.3)
                        .frame(width: 95, height: 90, alignment: .center)
                    //3
                    Image(systemName: "circle")
                        .font(.system(size: 68))
                        .foregroundColor(.gray)
                        .opacity(0.3)
                        .frame(width: 95, height: 90, alignment: .center)
                    //5
                    Image(systemName: "circle")
                        .font(.system(size: 68))
                        .foregroundColor(.gray)
                        .opacity(0.3)
                        .frame(width: 95, height: 90, alignment: .center)
                    
                }
                
                VStack{
                    //2
                    Image(systemName: "circle")
                        .font(.system(size: 68))
                        .foregroundColor(.gray)
                        .opacity(0.3)
                        .frame(width: 95, height: 90, alignment: .center)
                    //4
                    Image(systemName: "circle")
                        .font(.system(size: 68))
                        .foregroundColor(.gray)
                        .opacity(0.3)
                        .frame(width: 95, height: 90, alignment: .center)
                    //6
                    Image(systemName: "circle")
                        .font(.system(size: 68))
                        .foregroundColor(.gray)
                        .opacity(0.3)
                        .frame(width: 95, height: 90, alignment: .center)
                    
                }
            }
            
        } 
    }
}
