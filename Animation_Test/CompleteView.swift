//
//  CompleteView.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 31/03/22.
//

import Foundation
import SwiftUI

@available(iOS 15.0, *)
struct CompleteView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.colorScheme) var colorScheme
    var body: some View{
        NavigationView{
        VStack{
            
            ScrollView(.horizontal, showsIndicators: false){
                VStack{
                    
                        Image(colorScheme == .light ? "string_black" : "string_white")
                            .frame(width: 1450, height: 80)
    //
                    
                    
                    
                    Text("The rabbit hopped on the chair")
                        .frame(width: 1450, height: 80,alignment: .center)
                        .font(.custom("Menlo", size: 80))
                        .padding(.horizontal,30)
                        .opacity(0.4)
                    
                    
                    Image("string_color")
                        .frame(width: 1450, height: 80)
                    
                }
                .padding(.bottom,140)
                
            }
            
            VStack{
                Text("**WELL DONE!**")
                    .frame(width: UIScreen.main.bounds.width, height: 80,alignment: .center)
                    .font(.custom("Menlo", size: 50))
                HStack{
                    Button(action: {
                        self.dismiss()
                    }, label: {
                        
                            ZStack{
                                Rectangle()
                                    .frame(width: 150, height: 60)
                                    .cornerRadius(20)
                                    .foregroundColor(Color.init(red: 254/255, green: 191/255, blue: 0/255))
                                    
                                Text("**TRY AGAIN**")
                                    .font(.custom("Menlo", size: 23))
                                    .foregroundColor(.black)
                            }
                    }).padding(.horizontal,10)
                        
                        
                        Button(action: {
                            print("Next practice")
                        }, label: {
                            
                                ZStack{
                                    Rectangle()
                                        .frame(width: 150, height: 60)
                                        .cornerRadius(20)
                                        .foregroundColor(Color.init(red: 254/255, green: 191/255, blue: 0/255))
                                    Text("**NEXT**")
                                        .font(.custom("Menlo", size: 23))
                                        .foregroundColor(.black)
                                    
                                }
                            
                            
                        }).padding(.horizontal,10)
                        
                    
                }
            }
//            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.35,alignment: .center)
        }
        .navigationTitle("")
                
        }
    }
}

struct CompleteView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 15.0, *) {
            CompleteView()
        } else {
            // Fallback on earlier versions
        }
    }
}
