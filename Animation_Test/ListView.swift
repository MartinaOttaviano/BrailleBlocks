//
//  ListView.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 08/04/22.
//

import Foundation
import SwiftUI

struct ListView: View {
    @Binding var text: String
    @State private var isEditing = false
    let elements: [String] = ["The rabbit hopped on the chair","The boat is crossing the ocean","Kermit fell from the roof","Elmo stares at your soul while you sleep"]
    @State var selectedRow: String? = nil
    
    
    var body: some View{
        NavigationView{
            
            VStack{
                Text("**HI! BEFORE STARTING**")
                    .font(.custom("Menlo", size: 25))
                    .multilineTextAlignment(.leading)
                    .frame(width: UIScreen.main.bounds.width, height: 100, alignment: .bottom)
                HStack{
                    
                        
                    TextField("Type your content here", text: $text)
                        .padding(10)
                        .padding(.horizontal, 5)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .onTapGesture{
                            self.isEditing = true
                        }
                
                    if isEditing{
                        Button(action: {
                            self.isEditing = false
                            self.text = ""
                        })
                        {
                            Text("Cancel")
                        }
                        .padding(10)
                        .transition(.move(edge:.trailing))
                        .animation(.default)
                    }
                }
                .frame(width: UIScreen.main.bounds.width*0.9, height: 50)
                .padding(10)
                
                List {
                    Section(header:
                                Text("or choose one of the following sentences")) {
                        ForEach(elements, id: \.self) { element in
                            HStack{
                                Text("\(element)")
                                Spacer()
                                
                                
                                Button(action: {
                                    print("This has been selected")
                                }, label: {
                                    Pulsante(row: element, selectedRow: $selectedRow)
                                    
                                })
                                
                                
                            }
                            
                        }
                    }
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.3)
                    .padding(10)
                    .listStyle(.insetGrouped)
                //            header: {
                //                        Text("Or choose one of the following sentences")
                //                    }
                
                
                
                Button(action: {
                    print("")
                }, label: {
                    NavigationLink(destination:
                                    ScrollingView2()
                                    .navigationBarHidden(true)
                                    .navigationBarBackButtonHidden(true)) {
                        ZStack{
                            Rectangle()
                                .frame(width: 140, height: 60)
                                .cornerRadius(20)
                                .foregroundColor(Color.init(red: 254/255, green: 191/255, blue: 0/255))
                            Text("**START**")
                                .font(.custom("Menlo", size: 25))
                                .foregroundColor(.black)
                        }
                        
                        
                    }
                })
                    .padding(.bottom, 340)
                    .padding(.top,20)
                
            }
        }
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(text:.constant(""))
    }
}

struct Pulsante: View {
    @State private var unChoose = true
    @State private var choose = false
    var row: String
    @Binding var selectedRow: String?
    var body: some View{
        ZStack{
            if selectedRow != row{
                Image(systemName: "circle")
                    .font(.system(size: 25))
                    .foregroundColor(Color(.systemGray))
                    .opacity(0.4)
                
            }
            
            else{
                ZStack{
                    Image(systemName: "circle.fill")
                        .font(.system(size: 25))
                    Image(systemName: "checkmark")
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .opacity(0.6)
                }
                
            }
        }
        .onTapGesture (count: 1, perform:{
            self.selectedRow = row
        })
    }
}
