//
//  GridComponent.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 12/04/22.
//

import Foundation
import SwiftUI

struct GridView: View{
    var body: some View{
        VStack{
            ZStack{
                
                Rectangle()
                    .frame(width: 230, height: 350)
                    .foregroundColor(.gray)
                    .opacity(0.1)
                    .cornerRadius(30)
                
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
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
