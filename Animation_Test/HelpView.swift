//
//  HelpView.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 30/03/22.
//

import Foundation
import SwiftUI

struct HelpView: View {
    @State var letters: [String] = []
    @State var letter: String
    @State var array: [String] = []
//    @State var letters: [String] = []
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
                            Image(systemName: brailleDict[letter]!.digits2()[0] == 1 ? "circle.fill" : "circle")
                                .font(.system(size: 54))
                                .foregroundColor(.gray)
                                .opacity(0.3)
                                .frame(width: 95, height: 90, alignment: .center)
                            Image(systemName: brailleDict[letter]!.digits2()[2] == 1 ? "circle.fill" : "circle")
                                .font(.system(size: 54))
                                .foregroundColor(.gray)
                                .opacity(0.3)
                                .frame(width: 95, height: 90, alignment: .center)
                            Image(systemName: brailleDict[letter]!.digits2()[4] == 1 ? "circle.fill" : "circle")
                                .font(.system(size: 54))
                                .foregroundColor(.gray)
                                .opacity(0.3)
                                .frame(width: 95, height: 90, alignment: .center)
                            
                        }
                        
                        VStack{
                            Image(systemName: brailleDict[letter]!.digits2()[1] == 1 ? "circle.fill" : "circle")
                                .font(.system(size: 54))
                                .foregroundColor(.gray)
                                .opacity(0.3)
                                .frame(width: 95, height: 90, alignment: .center)
                            Image(systemName: brailleDict[letter]!.digits2()[3] == 1 ? "circle.fill" : "circle")
                                .font(.system(size: 54))
                                .foregroundColor(.gray)
                                .opacity(0.3)
                                .frame(width: 95, height: 90, alignment: .center)
                            Image(systemName: brailleDict[letter]!.digits2()[5] == 1 ? "circle.fill" : "circle")
                                .font(.system(size: 54))
                                .foregroundColor(.gray)
                                .opacity(0.3)
                                .frame(width: 95, height: 90, alignment: .center)
                            
                        }
                    }
                }
                ForEach(0..<letter.count, id:\.self) { num in
                    VStack{
                Text("**\(letter)**")
                    .font(.custom("Menlo", size: 54))
                    .textCase(.uppercase)
                    }
                    .tag(num)
                }
                    
                
//                Text("The rabbit hopped on the chair")
//                    .foregroundColor(.gray)
//                    .opacity(0.5)
//                    .font(.system(size: 22))
//                    .frame(width: UIScreen.main.bounds.width, height: 20, alignment: .bottom)
                
                
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

extension BinaryInteger {
    var digits2: [Int] {
        return String(describing: self) .compactMap({
            Int(String($0))
        })
    }
}
extension Int {
    func digits2() -> [Int] {
        var digits2: [Int] = []
        var num = self

        digits2.append(num % 10)

        while num >= 10  {
            num = num / 10
            digits2.append(num % 10)
        }
        if(digits2.count == 5){
            digits2.append(0)
            
        }

        return digits2.reversed()
    }
}
struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView(letter: "a")
    }
}
