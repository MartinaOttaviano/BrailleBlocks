//
//  TextFieldTrial.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 12/04/22.
//

import Foundation
import SwiftUI

struct TextFieldTrial: View{
    @State private var string: String = ""
    var body: some View{
        VStack{
//            TextField("Insert content", text: $string)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Insert content", text: $string)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}
struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldTrial()
    }
}
