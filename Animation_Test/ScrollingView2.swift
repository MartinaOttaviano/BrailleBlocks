//
//  ScrollView2.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 29/03/22.
//

import Foundation
import SwiftUI

struct ScrollingView2: View {
    @State private var tabTag: Int = 0
    @State private var showingSheet = false
    @State private var showAlert = false
    @State private var goAhead = false
    @Binding var text: String
    @Binding var text2: String?
    @State var letters: [String] = []
    var body: some View{
        NavigationView{
        VStack{
            
            TabView(selection: $tabTag){
                ForEach(0..<letters.count, id:\.self) { num in
                    VStack{
                        BrailleView()
                            
                        //                Text("T")
                        Text("**\(letters[num])**")
                            .font(.custom("Menlo", size: 50))
                            .textCase(.uppercase)
                            
                    }
                    .tag(num)
                    
                }
            }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.5)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//                .onAppear{
//                    let value = tabTag
//                    tabTag = -1
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {tabTag = value})
//                }
            
            
//        Text(frase)
//            .opacity(0.5)
//            .font(.system(size: 22))
            Frase(tabTag: $tabTag, text: $text, text2: $text2)
            
       
            if #available(iOS 15.0, *) {
                Button(action: {
                    showAlert = true
                }, label: {
//                    NavigationLink(destination: CompleteView()){
                        ZStack{
                            Rectangle()
                                .frame(width: 140, height: 60)
                                .cornerRadius(20)
                                .foregroundColor(Color.init(red: 254/255, green: 191/255, blue: 0/255))
                            Text("**FINISH**")
                                .font(.custom("Menlo", size: 25))
                                .foregroundColor(.black)
                        }
//                    }.navigationBarBackButtonHidden(true)
                    
                }).frame(width: 84, height: 150, alignment: .bottom)
                    .alert("Are you sure you want to end this practice session?", isPresented:$showAlert){
                        Button ("Cancel"){
                            
                        }
                      
                        Button (action: {
                            goAhead.toggle()
                        }, label: {
                            Text("Yes")
                        })
//                            .sheet(isPresented: $goAhead){
//                            CompleteView()
//                        }
                    }
                    .fullScreenCover(isPresented: $goAhead){
                        NewCompleteView(text: $text, text2: $text2)
                    }
            } else {
                // Fallback on earlier versions
            }
           
        
                
                
        }.padding(.top, 50)
        .padding(.bottom, 50)
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
                Button(action: {
                    showingSheet.toggle()
                }, label: {
                    
                        Image(systemName: "info.circle")
                    
                }).sheet(isPresented: $showingSheet) {
                    HelpView(letters: $letters, tabTag: $tabTag)
                }
            }
        }.onAppear(perform: {
            
            if(text != ""){
            for num in 0..<text.count{
                if(String(text[text.index(text.startIndex, offsetBy: num)]) == " "){
                    letters.append("_")
                }
                else{
                letters.append(String(text[text.index(text.startIndex, offsetBy: num)]) .uppercased())
                }
                
            }
            }else{
                for num in 0..<(text2 ?? "").count{
                    if(String((text2 ?? "")[(text2 ?? "").index((text2 ?? "").startIndex, offsetBy: num)]) == " "){
                        letters.append("_")
                    }
                    else{
                    letters.append(String((text2 ?? "")[(text2 ?? "").index((text2 ?? "").startIndex, offsetBy: num)]) .uppercased())
                    }
                    
                }
            }
        })
            
        
    }
}


struct Frase: View{
    @Binding var tabTag: Int
    @Binding var text: String
    @Binding var text2: String?
    var body: some View{
        let frase = "\(text != "" ? text : text2 ?? "")"
        HStack(spacing: 0){
            ForEach(0..<frase.count, id:\.self){ index in
                Text(String(frase[frase.index(frase.startIndex, offsetBy: index)]))
                    .opacity(index == tabTag ? 1 : 0.5)
                    .font(.system(size: 22).weight(index == tabTag ? .bold : .regular))
                    .foregroundColor(index == tabTag ? .blue : .gray)
                    
            }
        }
        
    }
}


//struct ScrollingView2_Previews: PreviewProvider {
//    static var previews: some View {
////        ScrollingView2("", text: $text)
//    }
//}
