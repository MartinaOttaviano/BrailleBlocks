//
//  NewCompleteView.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 04/08/22.
//

import Foundation
import SwiftUI

@available(iOS 15.0, *)
struct NewCompleteView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.colorScheme) var colorScheme
    @Binding var text: String
    @Binding var text2: String?
    var body: some View{
        NavigationView{
            VStack{
                
                ScrollView(.horizontal, showsIndicators: false){
                    VStack{
//PRIMA RIGA: CODICE BRAILLE CORRETTO IN NERO
                        HStack{
                            if(text != "") {
                                ForEach(0..<text.count, id:\.self){ index in
                                    Squares(letter: String(text[text.index(text.startIndex, offsetBy: index)]))
                            }
//                                .padding(.horizontal,2)
                            }else{
                                ForEach(0..<text2!.count, id:\.self){ index in
                                    Squares(letter: String((text2 ?? "")[(text2 ?? "").index(text2?.startIndex ?? "".startIndex, offsetBy: index)]))
                                }
//                                .padding(.horizontal,2)
                            }

                        }
//SECONDA RIGA: FRASE CARATTERI STANDARD
                        FraseFinal(text: $text, text2: $text2)
                        
//TERZA RIGA: CODICE BRAILLE INSERITO DALL'UTENTE (BLU CORRETTO, ROSSO ERRATO)
                        //                    Image("string_color")
                        //                        .frame(width: 1450, height: 80)
                        
                    }
                    .padding(.top, 100)
                    .padding(.bottom, 180)
                    .padding(.horizontal,30)
                    
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

struct FraseFinal: View{
    //    @Binding var tabTag: Int
    @Binding var text: String
    @Binding var text2: String?
    var body: some View{
        let frase = "\(text != "" ? text : text2 ?? "")"
        HStack(spacing: 0){
            ForEach(0..<frase.count, id:\.self){ index in
                Text(String(frase[frase.index(frase.startIndex, offsetBy: index)]))
                    .opacity(0.4)
                    .font(.custom("Menlo", size: 90))
                    .foregroundColor(.black)
                
                
            }
        }
        
    }
}

//struct NewCompleteView_Previews: PreviewProvider {
//    static var previews: some View {
//        if #available(iOS 15.0, *) {
//            NewCompleteView()
//        } else {
//            // Fallback on earlier versions
//        }
//    }
//}
