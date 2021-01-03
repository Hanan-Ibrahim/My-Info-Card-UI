//
//  ContentView.swift
//  My Info Card
//
//  Created by Hanoudi on 10/14/20.
//  Copyright © 2020 Hanan. All rights reserved.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red:0.851, green:0.502, blue:0.98)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("princess")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                )
                
                Text("Hanan Ibrahim")
                    .font(Font.custom("DancingScript-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                Text("Junior iOS Developer")
                    .foregroundColor(.white)
                    .font(Font.custom("Pacifico-Regular", size: 25))
                
                Divider()
                InfoView(text: "+20 123 456 789", imageName: "phone.fill")
                InfoView(text: "hanan.amjed.1996@gmail.com", imageName: "envelope.fill")
                //InfoView(text: "https://github.com/hanan-ibrahim", imageName: "git")
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
