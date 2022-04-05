//
//  TheoryView.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 30/03/22.
//

import Foundation
import SwiftUI

struct TheoryView: View {
    var body: some View {
        NavigationView{
            
            
            ZStack{ Color.init(red: 254/255, green: 191/255, blue: 0/255)
                ScrollView{
                    Text("**INTRODUCTION**")
                        .frame(width: UIScreen.main.bounds.width*0.9, height: 40)
                        .font(.custom("Menlo", size: 40))
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 68)
                        .padding(.top, 30)
                    Text("The Braille code takes its name from the french inventor Louis Braille, who developed it in the first half of 19th century. Braille is a tactile writing and reading system meant for blind and visually impaired individuals and it consist of dots organized in a 3x2 matrix (6 spaces in total) in different and unique combinations to indicate letters, numbers, punctuation and more. Let’s start from the basics.")
                        .frame(width: UIScreen.main.bounds.width*0.85, height: UIScreen.main.bounds.height*0.3, alignment: .top)
                        .padding(.horizontal)
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 19))
                    Text("**THE ALPHABET**")
                        .frame(width: UIScreen.main.bounds.width*0.9, height: 40)
                        .font(.custom("Menlo", size: 40))
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 68)
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: UIScreen.main.bounds.width*1, height: UIScreen.main.bounds.height*0.57)
                            .offset(x: 0, y: 0)
                            .cornerRadius(40)
                    Image("alfabeto1")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width*0.85, height: UIScreen.main.bounds.height*0.49)
                        .offset(x: 0, y: 0)
                        
                    }
                    
                    
                    Text("**PRACTICE**")
                        .frame(width: UIScreen.main.bounds.width*0.9, height: 40)
                        .font(.custom("Menlo", size: 40))
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 160)
                        .padding(.top, 30)
                    Text("Once you get familiar with the alphabet, you can start practicing in the dedicated section: a sentence will be generated and displayed on the screen, enclosed with a grid for each character. Progress by completing the grid with the correct letter and scrolling in either direction for swapping letters (for a space(_) the grid must be left blank). Ask for a hint by pressing on the “i” button and click “Finish” once you completed the exercise.")
                        .frame(width: UIScreen.main.bounds.width*0.85, height: UIScreen.main.bounds.height*0.35, alignment: .top)
                        .padding(.horizontal)
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 19))
                }.frame(width: UIScreen.main.bounds.width*1, height: UIScreen.main.bounds.height*0.836)
                
                    .navigationTitle("")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }.ignoresSafeArea()
    }
}
struct TheoryView_Previews: PreviewProvider {
    static var previews: some View {
        TheoryView()
    }
}
