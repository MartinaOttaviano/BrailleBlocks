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
    @State var array: [String] = []
    
    var body: some View{
        VStack{
            
            
            HStack{
//                Text("\(brailleDict[letter]!.digits().count)")
                VStack{

                    //1
                    Image(systemName: brailleDict[letter]!.digits()[0] == 1 ? "circle.fill" : "")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                        .opacity(1)
                        .frame(width: 25, height: 25, alignment: .center)
                    //3
                    Image(systemName: brailleDict[letter]!.digits()[2] == 1 ? "circle.fill" : "")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                        .opacity(1)
                        .frame(width: 25, height: 25, alignment: .center)
                    //5
                    Image(systemName: brailleDict[letter]!.digits()[4] == 1 ? "circle.fill" : "")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                        .opacity(1)
                        .frame(width: 25, height: 25, alignment: .center)
                }
                
                VStack{
                    //2
                    Image(systemName: brailleDict[letter]!.digits()[1] == 1 ? "circle.fill" : "")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                        .opacity(1)
                        .frame(width: 25, height: 25, alignment: .center)
                    //4
                    Image(systemName: brailleDict[letter]!.digits()[3] == 1 ? "circle.fill" : "")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                        .opacity(1)
                        .frame(width: 25, height: 25, alignment: .center)
                    //6
                    Image(systemName: brailleDict[letter]!.digits()[5] == 1 ? "circle.fill" : "")
                        .font(.system(size: 24))
                        .foregroundColor(.black)
                        .opacity(1)
                        .frame(width: 25, height: 25, alignment: .center)
                }
            }
            
        }
    }
}


extension BinaryInteger {
    var digits: [Int] {
        return String(describing: self) .compactMap({
            Int(String($0))
        })
    }
}
extension Int {
    func digits() -> [Int] {
        var digits: [Int] = []
        var num = self

        digits.append(num % 10)

        while num >= 10  {
            num = num / 10
            digits.append(num % 10)
        }
        if(digits.count == 5){
            digits.append(0)
            
        }

        return digits.reversed()
    }
}

struct SquaresPreview: PreviewProvider {
    static var previews: some View {
        Squares(letter: " ")
    }
}
