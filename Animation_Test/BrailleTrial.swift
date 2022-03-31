//
//  BrailleTrial.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 29/03/22.
//

import Foundation
import SwiftUI

struct BrailleView: View {
    var body: some View {
        VStack{
            ZStack{
                HStack{
                    
                        Image(systemName: "chevron.left")
                            .font(.system(size: 30))
                            .foregroundColor(.gray)
                            .opacity(0)
                    Spacer()
                    Rectangle()
                        .frame(width: 230, height: 350)
                        .foregroundColor(.gray)
                        .opacity(0.1)
                        .cornerRadius(30)
                    Spacer()
                        Image(systemName: "chevron.right")
                            .font(.system(size: 30))
                            .foregroundColor(.gray)
                            .opacity(0)
                    
                }.padding(.horizontal, 30)
                    
                HStack{
                    VStack{
                        DotView()
                        DotView()
                        DotView()
                        
                    }
                    
                    VStack{
                        DotView()
                        DotView()
                        DotView()
                        
                    }
                }
            }
            
        }
    }
}
struct BrailleView_Previews: PreviewProvider {
    static var previews: some View {
        BrailleView()
    }
}
