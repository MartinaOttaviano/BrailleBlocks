//
//  CompleteView.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 31/03/22.
//

import Foundation
import SwiftUI

struct CompleteView: View {
    var body: some View{
        VStack{
            ScrollView(.horizontal, showsIndicators: false){
                VStack{
                    
                    Image("braille_string")
                        .frame(width: 1450, height: 80)
                        .opacity(0.6)
                    
                    Text("The rabbit hopped on the chair")
                        .frame(width: 1450, height: 80,alignment: .center)
                        .font(.custom("Menlo", size: 80))
                        .padding(.horizontal,30)
                        .opacity(0.6)
                    
                    
                    Image("string_color")
                        .frame(width: 1450, height: 80)
                    
                }.padding(.vertical,120)
                
            }
            
            VStack{
                Text("**WELL DONE!**")
                    .frame(width: UIScreen.main.bounds.width, height: 80,alignment: .center)
                    .font(.custom("Menlo", size: 50))
                HStack{
                    Button(action: {
                        print("Try again")
                    }, label: {
                        
                        ZStack{
                            Rectangle()
                                .frame(width: 150, height: 60)
                                .cornerRadius(20)
                                .foregroundColor(Color.init(red: 254/255, green: 191/255, blue: 0/255))
                            
                            Text("Try again")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                        }
                    }).padding(.horizontal,10)
                    
                    
                    Button(action: {
                        print("Go back")
                    }, label: {
                        
                        ZStack{
                            Rectangle()
                                .frame(width: 150, height: 60)
                                .cornerRadius(20)
                                .foregroundColor(Color.init(red: 254/255, green: 191/255, blue: 0/255))
                            Text("Go back")
                                .font(.system(size: 30))
                                .foregroundColor(.black)
                        }
                        
                        
                    }).padding(.horizontal,10)
                    
                    
                }
            }
        }
    }
}

struct CompleteView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteView()
    }
}
