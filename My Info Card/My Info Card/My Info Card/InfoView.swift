//
//  InfoView.swift
//  My Info Card
//
//  Created by Hanoudi on 10/14/20.
//  Copyright © 2020 Hanan. All rights reserved.
//


import SwiftUI

struct InfoView: View {
    // will take a text and image icon name
    // MARK:- Variables
    let text: String
    let imageName: String
    
    //MARK:- Body
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
                //This line below is required if you want the app to display correctly in dark mode.
                //In dark mode all Text is automatically rendered as white.
                .foregroundColor(Color("Info Color"))
                
            })
            .padding(.all)
    }
}

// default view
struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
