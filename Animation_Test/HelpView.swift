//
//  HelpView.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 30/03/22.
//

import Foundation
import SwiftUI

struct HelpView: View {
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
                            Image(systemName: "circle")
                                .font(.system(size: 68))
                                .foregroundColor(.gray)
                                .opacity(0.3)
                                .frame(width: 95, height: 90, alignment: .center)
                            Image(systemName: "circle.fill")
                                .font(.system(size: 68))
                                .foregroundColor(.gray)
                                .opacity(0.3)
                                .frame(width: 95, height: 90, alignment: .center)
                            Image(systemName: "circle.fill")
                                .font(.system(size: 68))
                                .foregroundColor(.gray)
                                .opacity(0.3)
                                .frame(width: 95, height: 90, alignment: .center)
                            
                        }
                        
                        VStack{
                            Image(systemName: "circle.fill")
                                .font(.system(size: 68))
                                .foregroundColor(.gray)
                                .opacity(0.3)
                                .frame(width: 95, height: 90, alignment: .center)
                            Image(systemName: "circle.fill")
                                .font(.system(size: 68))
                                .foregroundColor(.gray)
                                .opacity(0.3)
                                .frame(width: 95, height: 90, alignment: .center)
                            Image(systemName: "circle")
                                .font(.system(size: 68))
                                .foregroundColor(.gray)
                                .opacity(0.3)
                                .frame(width: 95, height: 90, alignment: .center)
                            
                        }
                    }
                }
                
                Text("**T**")
                    .font(.custom("Menlo", size: 50))
                    
                
                Text("The rabbit hopped on the chair")
                    .foregroundColor(.gray)
                    .opacity(0.5)
                    .font(.system(size: 22))
                    .frame(width: UIScreen.main.bounds.width, height: 20, alignment: .bottom)
                
                
                Button(action: {
                    print("Done")
                }, label: {
                    ZStack{
                        Rectangle()
                            .frame(width: 140, height: 60)
                            .cornerRadius(20)
                            .foregroundColor(Color.init(red: 254/255, green: 191/255, blue: 0/255))
                        Text("**FINISH**")
                            .font(.custom("Menlo", size: 25))
                            .foregroundColor(.black)
                    }
                }).frame(width: 84, height: 150, alignment: .bottom)
                    .opacity(0.3)
                    .disabled(true)
            } .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.725, alignment: .bottom)
            .padding(.top,120)
        }
    }


struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
