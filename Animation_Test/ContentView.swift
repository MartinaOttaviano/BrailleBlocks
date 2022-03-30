//
//  ContentView.swift
//  Animation_Test
//
//  Created by Martina Ottaviano on 29/03/22.
//

import SwiftUI


struct ContentView: View {
    @State private var unLiked = true
    @State private var liked = false
    @State private var showText = false
    
    var body: some View {
        
        ZStack{
            if unLiked{
                HStack{
                    Text("Like")
                    Image(systemName: "hand.thumbsup")
                }.font(.title)
            }
            else{
                HStack{
                    Text("Like")
                        .opacity(showText ? 1: 0)
                        .animation(Animation.easeInOut.delay(0.15))
                        .onAppear(){
                            showText = true
                        }
                    Image(systemName: "hand.thumbsup.fill")
                        .scaleEffect(liked ? 1 : 0)
                        .rotationEffect(.degrees(liked ? 0 : -45))
                        .animation(Animation.interpolatingSpring(stiffness: 150, damping: 10).delay(0.15))
                        .onAppear() {
                            liked = true
                        }
                } . font(.title)
                    .foregroundColor(Color(.blue))
            }
        }
        .onTapGesture(count: 1, perform: {
            unLiked = false
        })
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
